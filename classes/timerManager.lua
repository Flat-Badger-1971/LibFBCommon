local L = _G.LibFBCommon

L.TimerManager = ZO_Object:Subclass()

local t = L.TimerManager

function t:New(addonName, timeFunction)
    local events = ZO_Object.New(self)

    self.addonName = addonName
    self.timeFunction = timeFunction
    self.timerFunctions = {}

    return events
end

function t:CallTimerFunctions(time)
    if (#self.timerFunctions[time] == 0) then
        return
    end

    for i = 1, #self.timerFunctions[time] do
        if (self.timerFunctions[time][i]) then
            self.timerFunctions[time][i]()
        end
    end
end

function t:NeedsRegistration(time, func)
    if (time == nil or func == nil) then
        return
    end

    if (not self.timerFunctions[time]) then
        self.timerFunctions[time] = {}
    end

    if (#self.timerFunctions[time] ~= 0) then
        local numOfFuncs = #self.timerFunctions[time]

        for i = 1, numOfFuncs do
            if (self.timerFunctions[time][i] == func) then
                return false
            end
        end

        self.timerFunctions[time][numOfFuncs + 1] = func

        return false
    else
        self.timerFunctions[time][1] = func

        return true
    end
end

function t:NeedsUnregistration(time, func)
    if (time == nil or func == nil) then
        return
    end

    if (#self.timerFunctions[time] ~= 0) then
        local numOfFuncs = #self.timerFunctions[time]

        for i = 1, numOfFuncs, 1 do
            if (self.timerFunctions[time][i] == func) then
                self.timerFunctions[time][i] = self.timerFunctions[time][numOfFuncs]
                self.timerFunctions[time][numOfFuncs] = nil

                numOfFuncs = numOfFuncs - 1

                if (numOfFuncs == 0) then
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

function t:RegisterForUpdate(time, func)
    if (self:NeedsRegistration(time, func)) then
        EVENT_MANAGER:RegisterForUpdate(
            self.addonName .. tostring(time),
            time,
            function()
                self:CallTimerFunctions(time)
            end
        )
    end
end

function t:UnregisterForUpdate(time, func)
    if (self:NeedsUnregistration(time, func)) then
        EVENT_MANAGER:UnregisterForUpdate(self.addonName .. tostring(time))
    end
end

function t:DisableUpdates(includeTime)
    for time, funcs in pairs(self.timerFunctions) do
        if (#funcs ~= 0) then
            EVENT_MANAGER:UnregisterForUpdate(string.format("%s%s", self.addonName, tostring(time)))
        end
    end

    if (includeTime) then
        EVENT_MANAGER:UnregisterForUpdate(self.addonName .. "time")
    end
end

function t:EnableUpdates(includeTime)
    for time, funcs in pairs(self.timerFunctions) do
        if (#funcs ~= 0) then
            EVENT_MANAGER:RegisterForUpdate(
                string.format("%s%s", self.addonName, tostring(time)),
                time,
                function()
                    self:CallTimerFunctions(time)
                end
            )
        end
    end

    if (includeTime and self.timeFunction) then
        EVENT_MANAGER:RegisterForUpdate(
            self.addonName .. "time",
            1000,
            function()
                self.timeFunction()
            end
        )
    end
end