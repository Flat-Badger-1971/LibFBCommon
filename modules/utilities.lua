local L = _G.LibFBCommon

---add number separators
---@param number number     the number needing separators
---@param grouping number   number of digits to group by, e.g 3
---@param separator string  the number separator to use, e.g ,
---@return string
function L.AddSeparators(number, grouping, separator)
    if type(number) ~= "number" or number < 0 or number == 0 or not number then
        return number
    else
        local t = {}
        local int = math.floor(number)

        if int == 0 then
            t[#t + 1] = 0
        else
            local digits = math.log10(int)
            local segments = math.floor(digits / grouping)
            local groups = 10 ^ grouping

            t[#t + 1] = math.floor(int / groups ^ segments)

            for i = segments - 1, 0, -1 do
                t[#t + 1] = separator
                t[#t + 1] = ("%0" .. grouping .. "d"):format(math.floor(int / groups ^ i) % groups)
            end
        end

        return table.concat(t)
    end
end

---take a mixed table of ids and id ranges and create a single contiguous list of values
---e.g. [1,3,"4-9"] will produce {[1] = true, [3] = true, [4] = true, [5] = true, [6] = true, [7] = true, [8] = true ,[9] = true}
---@param listInfo table
---@return table
function L.BuildList(listInfo)
    local list = {}

    for _, info in ipairs(listInfo) do
        if (type(info) == "string") then
            local comma = info:find(",")
            local s, e = tonumber(info:sub(1, comma - 1)), tonumber(info:sub(comma + 1))

            for i = s, e do
                list[i] = true
            end
        else
            list[info] = true
        end
    end

    return list
end

local itemColours = {}

do
    for quality = _G.ITEM_DISPLAY_QUALITY_TRASH, _G.ITEM_DISPLAY_QUALITY_MYTHIC_OVERRIDE do
        itemColours[quality] = {GetInterfaceColor(_G.INTERFACE_COLOR_TYPE_ITEM_QUALITY_COLORS, quality)}
    end
end

---clear *any* table
---@param t table
function L.Clear(t)
    for k in next, t do
        rawset(t, k, nil)
    end
end

---create a ZO_ColorDef object from either individual values, a colour name or a table of values
---@param r number|string|table red value|predefined colour name|table of rgb values
---@param g? number              green value
---@param b? number              blue value
---@param a? number              alpha value
---@return userdata
function L.Colour(r, g, b, a)
    if type(r) == "string" then
        return ZO_ColorDef:New(r)
    elseif type(r) == "table" then
        if (r.r and r.g and r.b) then
            return ZO_ColorDef:New(r)
        else
            return ZO_ColorDef:New(r[1], r[2], r[3], r[4])
        end
    else
        return ZO_ColorDef:New(r, g, b, a)
    end
end

---get the item quality for the supplied quality colour
---@param r number
---@param g number
---@param b number
---@return number
function L.ColourToQuality(r, g, b)
    for quality, rgba in pairs(itemColours) do
        local rc, gc, bc = math.floor(rgba[1] * 100), math.floor(rgba[2] * 100), math.floor(rgba[3] * 100)
        local ri, gi, bi = math.floor(r * 100), math.floor(g * 100), math.floor(b * 100)

        if (rc == ri and gc == gi and bc == bi) then
            return quality
        end
    end

    return _G.ITEM_DISPLAY_QUALITY_NORMAL
end

---basic equality check for two colour values
---@param c1 table  colour as {r, g, b, a}
---@param c2 table  colour as {r, g, b, a}
---@return boolean
function L.CompareColours(c1, c2)
    local colours = {c1, c2}

    -- just compare colours down to 3 decimal places
    for _, colour in ipairs(colours) do
        for idx, value in pairs(colour) do
            local rounded = tonumber(string.format("%.3g", value))

            colour[idx] = rounded
        end
    end

    return L.SimpleTableCompare(c1, c2)
end

---count the number of occurences of a value within a string
---@param input string      the string to check
---@param searchFor string  the value to find
---@return unknown
function L.Count(input, searchFor)
    local _, count = input:gsub(searchFor, "")

    return count
end

---generic table element count (#table only works correctly on sequentially numerically indexed tables)
---@param t table
---@return number
function L.CountElements(t)
    local count = 0

    for _ in next, t do
        count = count + 1
    end

    return count
end

---remove duplicate values from a table
---@param t table
---@return table
function L.RemoveDuplicates(t)
    local set = {}
    local final = {}

    for _, val in pairs(t) do
        if not set[val] then
            set[val] = 1
        else
            set[val] = set[val] + 1
        end
    end

    for k, v in pairs(set) do
        if v == 1 then
            final[#final + 1] = k
        end
    end

    return final
end

---deepcopy a table
---https://gist.github.com/tylerneylon/81333721109155b2d244
---@param obj table     the table to deep copy
---@param seen table    (internal use only, ignore)
---@return table
function L.DeepCopy(obj, seen)
    if (type(obj) ~= "table") then
        return obj
    end

    if (seen and seen[obj]) then
        return seen[obj]
    end

    local s = seen or {}
    local res = {}

    s[obj] = res

    for k, v in pairs(obj) do
        res[L.deepCopy(k, s)] = L.deepCopy(v, s)
    end

    return setmetatable(res, getmetatable(obj))
end

---Damerau-Levenshtein distance
---calculates the minimum number of operations needed to transform one string into another
---@param s1 string
---@param s2 string
---@return number
function L.Distance(s1, s2)
    local lenS1, lenS2 = #s1, #s2
    local cost = {}

    for i = 0, lenS1 do
        cost[i] = {}
        cost[i][0] = i
    end

    for j = 0, lenS2 do
        cost[0][j] = j
    end

    for i = 1, lenS1 do
        for j = 1, lenS2 do
            local deletion = cost[i - 1][j] + 1
            local insertion = cost[i][j - 1] + 1
            local substitution = cost[i - 1][j - 1] + (s1:sub(i, i) == s2:sub(j, j) and 0 or 1)
            cost[i][j] = math.min(deletion, insertion, substitution)

            if i > 1 and j > 1 and s1:sub(i, i) == s2:sub(j - 1, j - 1) and s1:sub(i - 1, i - 1) == s2:sub(j, j) then
                cost[i][j] = math.min(cost[i][j], cost[i - 2][j - 2] + 1)
            end
        end
    end

    return cost[lenS1][lenS2]
end

---filter out values from a table
---@param t table               the table to filter
---@param filterFunc function   the function to apply to each element of the table (value, key, inputTable)
---@return table
function L.Filter(t, filterFunc)
    local out = {}

    for k, v in pairs(t) do
        if (filterFunc(v, k, t)) then
            table.insert(out, v)
        end
    end

    return out
end

---genericly format a string or ZO_CreateStringId into a single string value accounting for gender formatters
---@param value string|number   the text value or string id to format
---@param ... any               any additional formatting parameters
---@return string
function L.Format(value, ...)
    local text = value

    if (type(value) == "number") then
        text = GetString(value)
    end

    return ZO_CachedStrFormat("<<C:1>>", text, ...)
end

---Return a formatted time
---from https://esoui.com/forums/showthread.php?t=4507
---@param format string         required time format
---@param timeString string     time to format
---@param tamrielTime boolean   use Tamriel time
---@return string
function L.FormatTime(format, timeString, tamrielTime)
    -- split up default timestamp
    local hours, minutes, seconds

    if (tamrielTime) then
        hours, minutes, seconds = tamrielTime.hour, tamrielTime.minute, tamrielTime.second

        if (tostring(minutes):len() == 1) then
            minutes = "0" .. minutes
        end

        if (tostring(seconds):len() == 1) then
            seconds = "0" .. seconds
        end
    else
        timeString = timeString or GetTimeString()
        hours, minutes, seconds = timeString:match("([^%:]+):([^%:]+):([^%:]+)")
    end

    local hoursNoLead = tonumber(hours) -- hours without leading zero
    local hours12NoLead = (hoursNoLead - 1) % 12 + 1
    local hours12

    if (hours12NoLead < 10) then
        hours12 = "0" .. hours12NoLead
    else
        hours12 = hours12NoLead
    end

    local pUp = "AM"
    local pLow = "am"

    if (hoursNoLead >= 12) then
        pUp = "PM"
        pLow = "pm"
    end

    -- create new one
    local time = format

    time = time:gsub("HH", hours)
    time = time:gsub("H", hoursNoLead)
    time = time:gsub("hh", hours12)
    time = time:gsub("h", hours12NoLead)
    time = time:gsub("m", minutes)
    time = time:gsub("s", seconds)
    time = time:gsub("A", pUp)
    time = time:gsub("a", pLow)

    return time
end

---get the addon version from AddOnVersion field in the manifest
---and convert it to the format of major.minor.revision
---@param addonName string
---@return string
function L.GetAddonVersion(addonName)
    local manager = GetAddOnManager()
    local numAddons = manager:GetNumAddOns()
    local version = "?"

    for addon = 1, numAddons do
        local name = manager:GetAddOnInfo(addon)

        if (name == addonName) then
            version = tostring(manager:GetAddOnVersion(addon))
            local major = tonumber(version:sub(1, 1))
            local minor = tonumber(version:sub(2, 2))
            local revision = tonumber(version:sub(3))

            version = string.format("%d.%d.%d", major, minor, revision)
            break
        end
    end

    return version
end

---create dropdown compatible lists of background and borders
---@param backgroundPrefix string   the GetString prefix for background names, e.g. "BARSTEWARD_BACKGROUND_STYLE_"
---@param borderPrefix string       the GetString prefix for border names, e.g. "BARSTEWARD_BORDER_STYLE_"
---@return table
---@return table
function L.GetBackgroundsAndBorders(backgroundPrefix, borderPrefix)
    local backgroundNames, borderNames = {}, {}

    for background, _ in pairs(L.Backgrounds) do
        table.insert(backgroundNames, GetString(backgroundPrefix, background))
    end

    table.insert(backgroundNames, " ")

    for border, _ in pairs(L.Borders) do
        table.insert(borderNames, GetString(borderPrefix, border))
    end

    table.insert(borderNames, " ")

    return backgroundNames, borderNames
end

---Get the key for a specific value in a table
---@param t table   the table to search
---@param v any     the value to find
---@return any
function L.GetByValue(t, v)
    for key, value in pairs(t) do
        if (type(value) == "table") then
            if (ZO_IsElementInNumericallyIndexedTable(value, v)) then
                return key
            end
        elseif (value == v) then
            return key
        end
    end
end

---get the first word of the supplied text, using space or - as a word separator
---@param text string
---@return string
function L.GetFirstWord(text)
    local space = text:find(" ")

    if (not space) then
        space = text:find("-")

        if (not space) then
            return text
        end
    end

    return text:sub(1, space - 1)
end

---create a font definition
---@param name string   the font name from the L.Fonts list
---@param size? number  the font size, defaults to 18
---@param style? string  the font style, default to none
---@return string
function L.GetFont(name, size, style)
    if (name == "Standard") then
        name = "Default"
    end

    local typeface = L.Fonts[name]
    local fontstyle = style and L.FontStyles[style] or ""

    if (typeface) then
        return string.format("%s|%s%s", typeface, size or 18, fontstyle)
    end

    return ""
end

---create dropdown compatible list of font and style names
---@param useStandard boolean   use "Standard" instead of "Default" as the font name
---@return table
---@return table
function L.GetFontNamesAndStyles(useStandard)
    local fontNames, fontStyles = {}, {}

    for font, _ in pairs(L.Fonts) do
        if (useStandard and font == "Default") then
            table.insert(fontNames, "Standard")
        else
            table.insert(fontNames, font)
        end
    end

    for style, _ in pairs(L.FontStyles) do
        table.insert(fontStyles, style)
    end

    return fontNames, fontStyles
end

---generate an icon texture with optional colour that can be used within a string
---@param path string           path to the icon, e.g. /esoui/art/interaction/questcompleteavailable.dds
---@param colour string|table   a colour specified as either a string e.g. "00ff00" or a ZO_ColorDef
---@param width number          icon width
---@param height number         icon height
---@return string
function L.GetIconTexture(path, colour, width, height)
    width = width or 16
    height = height or 16

    local texture = zo_iconFormat(path, width, height)

    if (colour) then
        if (type(colour) == "table") then
            texture = colour:Colorize(texture:gsub("|t$", ":inheritColor|t"))
        else
            texture = string.format("|c%s%s|r", colour, texture:gsub("|t$", ":inheritColor|t"))
        end
    end

    return texture
end

---get then next unused index number from the table's values
---@param t table
---@return integer
function L.GetNextIndex(t)
    local nextIndex = 1
    local tmpTable = {}

    for _, value in pairs(t) do
        table.insert(tmpTable, value)
    end

    table.sort(tmpTable)

    for _, value in ipairs(tmpTable) do
        if (value ~= nextIndex) then
            return nextIndex
        end

        nextIndex = nextIndex + 1
    end

    return nextIndex
end

---find the nearest multiple of a given factor to the input values
---essentially rounds off a number to the nearest desired multiple
---@param input number
---@param factor number
---@return number
function L.GetNearest(input, factor)
    local remaining = input % factor
    local lower = input - remaining
    local upper = lower + factor
    local result = lower

    if ((input - lower) > (upper - input)) then
        result = upper
    end

    return result
end

---create a list of sound options for a dropdown control as well as the related lookup for the actual sound
---@return table
---@return table
function L.GetSoundDropdownOptions()
    local soundChoices = {}
    local soundLookup = {}

    for _, v in ipairs(L.Sounds) do
        if (_G.SOUNDS[v] ~= nil) then
            local soundName = _G.SOUNDS[v]:gsub("_", " ")

            table.insert(soundChoices, soundName)
            soundLookup[soundName] = _G.SOUNDS[v]
        end
    end

    return soundChoices, soundLookup
end

---from https://wowwiki-archive.fandom.com/wiki/USERAPI_ColorGradient
---@param perc number   percentage value ( 0 - 1 )
---@param ... any       rgb values required for the gradient, e.g. r1, g1, b1, r2, g2, b2, etc
---@return number red   value
---@return number green value
---@return number blue  value
function L.Gradient(perc, ...)
    if perc >= 1 then
        local r, g, b = select(select("#", ...) - 2, ...)
        return r, g, b
    elseif perc <= 0 then
        local r, g, b = ...
        return r, g, b
    end

    local num = select("#", ...) / 3

    local segment, relperc = math.modf(perc * (num - 1))
    local r1, g1, b1, r2, g2, b2 = select((segment * 3) + 1, ...)

    return r1 + (r2 - r1) * relperc, g1 + (g2 - g1) * relperc, b1 + (b2 - b1) * relperc
end

---is the player carrying any stolen items?
---@return boolean
---@return table
function L.IsCarryingStolenItems()
    local filteredItems =
        SHARED_INVENTORY:GenerateFullSlotData(
        function(itemdata)
            return itemdata.stolen == true
        end,
        _G.BAG_BACKPACK
    )

    return #filteredItems > 0, filteredItems
end

---check if the player is currently in a PvP zone
---@return boolean
function L.IsInPvPZone()
    local mapContentType = GetMapContentType()

    return (mapContentType == _G.MAP_CONTENT_AVA or mapContentType == _G.MAP_CONTENT_BATTLEGROUND)
end

---join all values in a table into a comma separated string
---@param values table  values to join
---@return string
function L.Join(values)
    local outputTable = {}

    for value, _ in pairs(values) do
        table.insert(outputTable, ZO_FormatUserFacingCharacterName(value))
    end

    return table.concat(outputTable, ", ")
end

---create an itemlink
---@param itemId number the item number for the item link
---@param name string   optional name for the generated link
---@return string
function L.MakeItemLink(itemId, name)
    return ZO_LinkHandler_CreateLink(name or "", nil, _G.ITEM_LINK_TYPE, itemId, unpack(L.Repeat(0, 20)))
end

---merge two tables into one
---@param t1 table
---@param t2 table
---@return table
function L.MergeTables(t1, t2)
    local output = {}

    for _, value in ipairs(t1) do
        output[#output + 1] = value
    end

    for _, value in ipairs(t2) do
        output[#output + 1] = value
    end

    return output
end

---partial case insensitive string matcher
---@param inputString string
---@param compareList table     table of string to check for
---@return string|boolean
function L.PartialMatch(inputString, compareList)
    for key, value in pairs(compareList) do
        if (key ~= "") then
            if (inputString:lower():find(key:lower())) then
                return value
            end
        end
    end

    return false
end

---populate a table with the same value repeated
---@param input any     value to repeat
---@param times number  number of times to repeat
---@return table
function L.Repeat(input, times)
    local output = {}

    for _ = 1, times do
        table.insert(output, input)
    end

    return output
end

---scan the player's current buffs and return any that match the supplied list
---@param buffList table            a list of abilityIds to look for, e.g. {[127596] = true, [127572] = true}
---@param timeFormatter function    a formatter function that accepts a number of seconds remaining as its parameter
---@param nameColour? string        an optional colour for the buff name in rgb hex format
---@return table
function L.ScanBuffs(buffList, timeFormatter, nameColour)
    local numberOfBuffs = GetNumBuffs("player")
    local buffs = {}

    if (numberOfBuffs > 0) then
        for buffNum = 1, numberOfBuffs do
            local buffName, _, timeEnding, _, _, _, _, _, _, _, abilityId = GetUnitBuffInfo("player", buffNum)

            if (buffList[abilityId]) then
                local timeNow = GetGameTimeMilliseconds()
                local remaining = timeEnding - timeNow / 1000
                local formattedTime = timeFormatter(remaining)
                local ttt =
                    string.format(
                    "%s%s%s",
                    L.Colour(nameColour or "f9f9f9"):Colorize(L.Format(buffName)),
                    L.LF,
                    L.Format(GetAbilityDescription(abilityId))
                )

                table.insert(
                    buffs,
                    {remaining = remaining, formattedTime = formattedTime, ttt = ttt, buffName = buffName}
                )
            end
        end
    end

    return buffs
end

---Show a centre screen announcement
---@param header string
---@param message string
---@param icon string
---@param lifespan number
---@param sound string
function L.ScreenAnnounce(header, message, icon, lifespan, sound)
    local messageParams = CENTER_SCREEN_ANNOUNCE:CreateMessageParams(_G.CSA_CATEGORY_LARGE_TEXT)

    if (sound ~= "none") then
        messageParams:SetSound(sound or "Justice_NowKOS")
    end

    messageParams:SetText(header or "Test Header", message or "Test Message")
    messageParams:SetLifespanMS(lifespan or 6000)
    messageParams:SetCSAType(_G.CENTER_SCREEN_ANNOUNCE_TYPE_SYSTEM_BROADCAST)

    if (icon) then
        messageParams:SetIconData(icon)
    end

    CENTER_SCREEN_ANNOUNCE:AddMessageWithParams(messageParams)
end

---check if a value exists within a string
---@param values table      a table of string values to check
---@param searchFor string  the string to check the values against
---@return boolean
function L.Search(values, searchFor)
    for _, value in ipairs(values) do
        if (searchFor:find(value)) then
            return true
        end
    end

    return false
end

---simple formatter for seconds (s) to minutes (m:ss)
---@param secondsValue number
---@return string
function L.SecondsToMinutes(secondsValue)
    local minutes = math.floor(secondsValue / 60)
    local seconds = secondsValue - (minutes * 60)

    return string.format("%d:%02d", minutes, seconds)
end

---format seconds into human readable time
---@param seconds number                the seconds value to be formatted
---@param hideDays boolean              do not include days in the output
---@param hideHours boolean             do not include hours in the output
---@param hideSeconds boolean           do not include seconds in the output
---@param format string                 specify the required format
---@param hideDaysWhenZero boolean      do not include days in the output when the value is zero
---@param daysFormat integer            ZO_CreateStringId value for days, hours and minutes
---@param noDaysFormat integer          ZO_CreateStringId value hours and minutes
---@param secondsNoDaysFormat integer   ZO_CreateStringId value for hours, minutes and seconds
---@param withSecondsFormat integer     ZO_CreateStringId value for days, hours, minutes and seconds
---@return string
function L.SecondsToTime(
    seconds,
    hideDays,
    hideHours,
    hideSeconds,
    format,
    hideDaysWhenZero,
    daysFormat,
    noDaysFormat,
    secondsNoDaysFormat,
    withSecondsFormat)
    local time = ""
    local days = math.floor(seconds / 86400)
    local remaining = seconds
    local hideWhenZeroDays = hideDaysWhenZero == true and days == 0

    hideDays = hideDays or hideWhenZeroDays

    if (days > 0) then
        remaining = seconds - (days * 86400)
    end

    local hours = math.floor(remaining / 3600)

    if (hours > 0) then
        remaining = remaining - (hours * 3600)
    end

    local minutes = math.floor(remaining / 60)

    if (minutes > 0) then
        remaining = remaining - (minutes * 60)
    end

    remaining = math.floor(remaining)

    if ((format or "01:12:04:10") ~= "01:12:04:10" and format ~= "01:12:04") then
        if (hideSeconds) then
            if (hideDays) then
                time = ZO_CachedStrFormat(noDaysFormat, hours, minutes)
            else
                time = ZO_CachedStrFormat(daysFormat, days, hours, minutes)
            end
        else
            if (hideDays) then
                time = ZO_CachedStrFormat(secondsNoDaysFormat, hours, minutes, remaining)
            else
                time = ZO_CachedStrFormat(withSecondsFormat, days, hours, minutes, remaining)
            end
        end
    else
        if (not hideDays) then
            time = string.format("%02d", days) .. ":"
        end

        if (not hideHours) then
            time = time .. string.format("%02d", hours) .. ":"
        end

        time = time .. string.format("%02d", minutes)

        if (not hideSeconds) then
            time = time .. ":" .. string.format("%02d", remaining)
        end
    end

    return time
end

---very basic table equality checker
---@param t1 table
---@param t2 table
---@return boolean
function L.SimpleTableCompare(t1, t2)
    return table.concat(t1) == table.concat(t2)
end

---return a string containing the specified number of space characters
---@param numberOfSpaces number
---@return string
function L.Space(numberOfSpaces)
    local output = ""

    for _ = 1, numberOfSpaces do
        output = string.format("%s%s", output, " ")
    end

    return output
end

---split a delimited string into a table
---@param s string          delimiter separated string
---@param delimiter string  delimiter
---@return table
function L.Split(s, delimiter)
    local result = {}

    delimiter = delimiter or ","

    for match in (s .. delimiter):gmatch("(.-)" .. delimiter) do
        table.insert(result, match)
    end

    return result
end

---convert the input number into an integer
---@param num number
---@return integer
function L.ToInt(num)
    return tonumber(string.format("%.0f", num))
end

---get a percentage value rounded down
---@param qty number    quantity value
---@param total number  maximum value
---@return integer
function L.ToPercent(qty, total, addSign)
    if (total and (total > 0) and qty) then
        local pc = tonumber(qty) / tonumber(total)
        local pcf = math.floor(pc * 100)
        if (addSign) then
            return tostring(pcf) .. "%"
        else
            return pcf
        end
    end

    return 0
end

---convert a string into Sentence case
---@param text string
---@return string
function L.ToSentenceCase(text)
    local initial = text:sub(1, 1):upper()
    local rest = text:sub(2)

    return initial .. rest
end

---trim leading and trailing spaces
---@param stringValue string string value to trim
---@return string
function L.Trim(stringValue)
    return stringValue:gsub("^%s*(.-)%s*$", "%1")
end
