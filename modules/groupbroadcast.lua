local DEBUG = (GetDisplayName() == "@Flat-Badger") and true
local L = LibFBCommon
local LGB = LibGroupBroadcast
local protocol
local handler
local invertedEnum = {}
local ids = {}

do
    -- invert the enum to ease lookup values
    for k, v in pairs(L.ADDON_ID_ENUM) do
        invertedEnum[v] = k
        table.insert(ids, v)
    end
end

local function p(text)
    if (DEBUG) then
        d("LFC: " .. text)
    end
end

-- update 45/46 code for LibGroupBroadcast
-- Fire addon specific callbacks when data is received
local function onData(unitTag, data)
    p("Data received from " ..
        (unitTag or "nil") .. " : " .. (data.id or "nil") .. ":" .. (data.class or "nil") .. ":" .. (data.data or "nil"))

    if (L.DataShareRegister[data.id]) then
        p("Calling callback function for " .. invertedEnum[data.id])
        L.DataShareRegister[data.id](unitTag, data)
    end
end

--- Define the protocol for data sharing
local function declareProtocol()
    if (handler) then return end

    handler = LGB:RegisterHandler(L.Name)
    handler:SetDisplayName(L.Name)

    protocol = handler
        :DeclareProtocol(L.PROTOCOL_ID, L.Name)
        :AddField(LGB.CreateEnumField("id", ids))
        :AddField(LGB.CreateNumericField("class", {
            numBits = 4,
            minValue = 0,
            maxValue = 15
        }))
        :AddField(LGB.CreateVariantField({
            LGB.CreateNumericField("ndata", {
                minValue = 0,
                maxValue = 4999999
            }),
            LGB.CreateStringField("sdata", {
                minLength = 1,
                maxLength = 100
            })
        }, {
            maxNumVariants = 5
        }))
        :OnData(onData)

    local finalised = protocol:Finalize({
        isRelevantInCombat = true,
        replaceQueuedMessages = false,
    })

    assert(finalised, "LibGroupBroadcast finalisation failed")
end

--- Register an addon for data sharing by adding its id and callback to the data sharing register
--- @param id ADDON_ID_ENUM     The id of the addon
--- @param callback function    The callback function to be called when data is received
--- @return boolean             Returns true if registration is successful
function L.RegisterForDataSharing(id, callback)
    assert(LGB ~= nil, "LibGroupBroadcast not loaded")
    declareProtocol()
    L.DataShareRegister = L.DataShareRegister or {}
    L.DataShareRegister[id] = callback

    p("Registered " .. invertedEnum[id] .. " for data sharing")

    return true
end

--- Share a value
---@param id ADDON_ID_ENUM      The id of the addon
---@param class number          The class id of the data being shared, unique to each addon
---@param value number|string   The numeric or string value to share
function L.Share(id, class, value)
    if (protocol) then
        if (type(value) == "string") then
            protocol:Send({ id = id, class = class, sdata = value })
        elseif (type(value) == "number") then
            protocol:Send({ id = id, class = class, ndata = value })
        end

        p("Shared " .. invertedEnum[id] .. " : " .. class .. ":" .. value)
    end
end
