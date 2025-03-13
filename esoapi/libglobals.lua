--- @meta

--- @param eventId integer
--- @return void
function EVENT_PLAYER_LOGOUT(eventId) end

--- @param eventId integer
--- @return void
function EVENT_PLAYER_QUIT(eventId) end

--- @class SHARED_INVENTORY
--- @field GenerateFullSlotData fun(self:table, filterFunction:function, bagId:integer):table
SHARED_INVENTORY = {}

--- @class CENTER_SCREEN_ANNOUNCE
--- @field DisplayMessage fun(message:string, messageType:integer, soundId:integer):void
--- @field CreateMessageParams fun(self:table, paramType:integer):table
--- @field AddMessageWithParams fun(self:table, messageParams:table):void
CENTER_SCREEN_ANNOUNCE = {}

--- @type table
ADDON_ID_ENUM = {}

--- @type table
ZO_ACHIEVEMENTS_COMPLETION_STATUS = {}

BAG_BACKPACK = 1
CENTER_SCREEN_ANNOUNCE_TYPE_SYSTEM_BROADCAST = 63
CSA_CATEGORY_LARGE_TEXT = 2
INTERFACE_COLOR_TYPE_ITEM_QUALITY_COLORS = 1
ITEM_DISPLAY_QUALITY_MYTHIC_OVERRIDE = 6
ITEM_DISPLAY_QUALITY_NORMAL = 1
ITEM_DISPLAY_QUALITY_TRASH = 0
ITEM_LINK_TYPE = "item"
MAP_CONTENT_AVA = 1
MAP_CONTENT_BATTLEGROUND = 3

LibGroupBroadcast = {}

SI_ANTIALIASINGTYPE0 = 0
