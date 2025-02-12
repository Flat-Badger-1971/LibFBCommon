local L = _G.LibFBCommon
local LGB = _G.LibGroupBroadcast
local protocol
local handler

-- update 45/46 code for LibGroupBroadcast
-- Fire addon specific callbacks when data is received
local function onData(unitTag, data)
    if (L.DataShareRegister[data.id]) then
        L.DataShareRegister[data.id](unitTag, data)
    end
end

-- define the protocol for data sharing
local function declareProtocol()
    if (handler) then return end

    handler = LGB:RegisterHandler(L.Name)
    protocol = handler
        :DeclareProtocol(L.PROTOCOL_ID, L.Name)
        :AddField(CreateEnumField("id", L.ADDON_ID_ENUM))
        :AddField(CreateNumericField("class", {
            numBits = 4,
            minValue = 0,
            maxValue = 15
        }))
        :AddField(CreateVariantField("data", {
            LGB.CreateNumericField("ndata", {
                minValue = 0,
                maxValue = 4999999
            }),
            LGB.CreateStringField("sdata", {
                minLength = 1,
                maxLength = 100
            }),
        }, {
            maxNumVariants = 5
        }))
        :OnData(onData)

    local finalised = protocol:Finalize({
        isRelevantInCombat = true,
        replaceQueuedMessages = false,
    })

    assert(not finalised, "LibGroupBroadcast finalisation failed")
end

--- Register an addon for data sharing by adding its id and callback to the data sharing register
--- @param id ADDON_ID_ENUM     The id of the addon
--- @param callback function    The callback function to be called when data is received
function L.RegisterForDataSharing(id, callback)
    assert(not L.LGB, "LibGroupBroadcast not loaded")
    declareProtocol()
    L.DataShareRegister = L.DataShareRegister or {}
    L.DataShareRegister[id] = callback
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
    end
end
