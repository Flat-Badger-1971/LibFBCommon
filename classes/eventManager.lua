-- based on LibEventHandler
local L = _G.LibFBCommon

L.EventManager = ZO_Object:Subclass()

local e = L.EventManager

function e:New(addonName)
    local events = ZO_Object.New(self)

    self.addonName = addonName
    self.eventFunctions = {}

    return events
end

function e:CallEventFunctions(event, ...)
    if (#self.eventFunctions[event] == 0) then
        return
    end

    for i = 1, #self.eventFunctions[event] do
        self.eventFunctions[event][i](event, ...)
    end
end

function e:NeedsRegistration(event, func)
    if (event == nil or func == nil) then
        return
    end

    if (not self.eventFunctions[event]) then
        self.eventFunctions[event] = {}
    end

    if (#self.eventFunctions[event] ~= 0) then
        local numOfFuncs = #self.eventFunctions[event]

        for i = 1, numOfFuncs do
            if (self.eventFunctions[event][i] == func) then
                return false
            end
        end

        self.eventFunctions[event][numOfFuncs + 1] = func

        return false
    else
        self.eventFunctions[event][1] = func

        return true
    end
end

function e:NeedsUnregistration(event, func)
    if (event == nil or func == nil) then
        return
    end

    if (#self.eventFunctions[event] ~= 0) then
        local numOfFuncs = #self.eventFunctions[event]

        for i = 1, numOfFuncs, 1 do
            if (self.eventFunctions[event][i] == func) then
                self.eventFunctions[event][i] = self.eventFunctions[event][numOfFuncs]
                self.eventFunctions[event][numOfFuncs] = nil

                numOfFuncs = numOfFuncs - 1

                if numOfFuncs == 0 then
                    return true
                end

                return false
            end
        end

        return false
    else
        return false
    end
end

function e:RegisterForEvent(event, func)
    if (self:NeedsRegistration(event, func)) then
        EVENT_MANAGER:RegisterForEvent(self.addonName, event, self.CallEventFunctions)
    end
end

function e:UnregisterForEvent(event, func)
    if (self:NeedsUnregistration(event, func)) then
        EVENT_MANAGER:UnregisterForEvent(self.addonName, event)
    end
end