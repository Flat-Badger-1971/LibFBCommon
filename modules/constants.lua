local L = _G.LibFBCommon

-- colours
L.Blue = L.Colour("3a92ff")
L.Cyan = L.Colour("34a4eb")
L.Green = L.Colour("00ff00")
L.Grey = L.Colour("bababa")
L.Mustard = L.Colour("9d840d")
L.Red = L.Colour("f90000")
L.Yellow = L.Colour("ffff00")
L.White = L.Colour("f9f9f9")
L.ZOSBlue = L.Colour("3a92ff")
L.ZOSGold = L.Colour("ccaa1a")
L.ZOSGreen = L.Colour("2dc50e")
L.ZOSGrey = L.Colour("e6e6e6")
L.ZOSOrange = L.Colour("e58b27")
L.ZOSPurple = L.Colour("a02ef7")

-- fonts
L.Fonts = {
    ["Default"] = "$(MEDIUM_FONT)",
    ["Univers55"] = "EsoUi/Common/Fonts/Univers55.slug",
    ["ESO Bold"] = "$(BOLD_FONT)",
    ["Antique"] = "$(ANTIQUE_FONT)",
    ["Handwritten"] = "$(HANDWRITTEN_FONT)",
    ["Trajan"] = "$(STONE_TABLET_FONT)",
    ["Futura"] = "EsoUI/Common/Fonts/FuturaStd-CondensedLight.slug",
    ["Futura Bold"] = "EsoUI/Common/Fonts/FuturaStd-Condensed.slug"
}

L.FontStyles = {
    ["None"] = "",
    ["Shadow"] = "|shadow",
    ["Soft Shadow Thick"] = "|soft-shadow-thick",
    ["Soft Shadow Thin"] = "|soft-shadow-thin",
    ["Thick Outline"] = "|thick-outline"
}

-- ui
L.Backgrounds = {
    [1] = "actionbar/quickslotbg",
    [2] = "announcewindow/blackfade",
    [3] = "antiquities/codex_missing_document",
    [4] = "antiquities/icon_backdrop",
    [5] = "interaction/conversation_textbg",
    [6] = "interaction/conversationwindow_overlay_important",
    [7] = "miscellaneous/dialog_scrollinset_left",
    [8] = "achievements/achievements_iconbg",
    [9] = "actionbar/abilitycooldowninsert",
    [10] = "ava/ava_bonuses_left",
    [11] = "campaign/overview_scoringbg_aldmeri_left",
    [12] = "campaign/overview_scoringbg_daggerfall_left",
    [13] = "campaign/overview_scoringbg_ebonheart_left",
    [14] = "art/champion/champion_sky_cloud1"
}

L.Borders = {
    [1] = {"/esoui/art/worldmap/worldmap_frame_edge.dds", 128, 16},
    [2] = {"/esoui/art/crafting/crafting_tooltip_glow_edge_blue64.dds", 256, 8},
    [3] = {"/esoui/art/crafting/crafting_tooltip_glow_edge_gold64.dds", 256, 8},
    [4] = {"/esoui/art/crafting/crafting_tooltip_glow_edge_red64.dds", 256, 8},
    [5] = {"/esoui/art/chatwindow/gamepad/gp_hud_chatwindowbg_edge.dds", 512, 4},
    [6] = {"/esoui/art/interaction/conversationborder.dds", 128, 8},
    [7] = {"/esoui/art/market/market_highlightedge16.dds", 128, 16}
}

-- alert sounds
L.Sounds = {
    "ABILITY_ULTIMATE_READY",
    "ABILITY_COMPANION_ULTIMATE_READY",
    "AVA_GATE_CLOSED",
    "AVA_GATE_OPENED",
    "BATTLEGROUND_CAPTURE_AREA_CAPTURED_OWN_TEAM",
    "BATTLEGROUND_CAPTURE_AREA_CAPTURED_OTHER_TEAM",
    "BATTLEGROUND_CAPTURE_FLAG_TAKEN_OWN_TEAM",
    "BATTLEGROUND_COUNTDOWN_FINISH",
    "BATTLEGROUND_MATCH_WON",
    "BATTLEGROUND_MATCH_LOST",
    "BATTLEGROUND_ONE_MINUTE_WARNING",
    "CHAMPION_POINT_GAINED",
    "CODE_REDEMPTION_SUCCESS",
    "CONSOLE_GAME_ENTER",
    "CROWN_CRATES_DEAL_BONUS",
    "CROWN_CRATES_CARDS_LEAVE",
    "CROWN_CRATES_GAIN_GEMS",
    "CROWN_CRATES_PURCHASED_WITH_GEMS",
    "CROWN_CRATES_CARD_FLIPPING",
    "DAEDRIC_ARTIFACT_SPAWNED",
    "DUEL_ACCEPTED",
    "DUEL_FORFEIT",
    "DUEL_INVITE_RECEIVED",
    "DUEL_START",
    "DUEL_WON",
    "DUEL_BOUNDARY_WARNING",
    "ELDER_SCROLL_CAPTURED_BY_ALDMERI",
    "EMPEROR_CORONATED_ALDMERI",
    "EMPEROR_DEPOSED_ALDMERI",
    "EMPEROR_ABDICATED",
    "ENLIGHTENED_STATE_GAINED",
    "ENLIGHTENED_STATE_LOST",
    "GIFT_INVENTORY_VIEW_FANFARE_BLAST",
    "GIFT_INVENTORY_VIEW_FANFARE_SPARKS",
    "GROUP_ELECTION_REQUESTED",
    "GROUP_ELECTION_RESULT_LOST",
    "LEVEL_UP",
    "LFG_FIND_REPLACEMENT",
    "MARKET_CROWNS_SPENT",
    "NEW_TIMED_NOTIFICATION",
    "RAID_TRIAL_SCORE_ADDED_VERY_LOW",
    "RAID_TRIAL_SCORE_ADDED_LOW",
    "RAID_TRIAL_SCORE_ADDED_NORMAL",
    "RAID_TRIAL_SCORE_ADDED_HIGH",
    "RAID_TRIAL_SCORE_ADDED_VERY_HIGH",
    "RAID_TRIAL_COUNTER_UPDATE",
    "RETRAITING_RETRAIT_TOOLTIP_GLOW_SUCCESS",
    "RETRAITING_START_RETRAIT",
    "SCRIPTED_WORLD_EVENT_INVITED",
    "SKILL_XP_DARK_ANCHOR_CLOSED",
    "TELVAR_GAINED",
    "TELVAR_LOST",
    "TELVAR_MULTIPLIERUP",
    "TELVAR_MULTIPLIERMAX"
}
