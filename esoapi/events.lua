--- @meta
--- @diagnostic disable

--- @param eventId integer
--- @param guildId integer
--- @param eventCategory GuildHistoryEventCategory
--- @param flags GuildHistoryCategoryUpdateFlags
--- @return void
function EVENT_GUILD_HISTORY_CATEGORY_UPDATED(eventId, guildId, eventCategory, flags) end

--- @param eventId integer
--- @return void
function EVENT_SMITHING_TRAIT_RESEARCH_TIMES_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_LOCKPICK_SUCCESS(eventId) end

--- @param eventId integer
--- @param unitTag string
--- @return void
function EVENT_TITLE_UPDATE(eventId, unitTag) end

--- @param eventId integer
--- @param craftingSkillType TradeskillType
--- @param researchLineIndex luaindex
--- @param traitIndex luaindex
--- @return void
function EVENT_SMITHING_TRAIT_RESEARCH_COMPLETED(eventId, craftingSkillType, researchLineIndex, traitIndex) end

--- @param eventId integer
--- @return void
function EVENT_DISABLE_SIEGE_FIRE_ABILITY(eventId) end

--- @param eventId integer
--- @return void
function EVENT_DAILY_LOGIN_REWARDS_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_CAMPAIGN_SCORE_DATA_CHANGED(eventId) end

--- @param eventId integer
--- @param spamType SpamWarningType
--- @return void
function EVENT_SPAM_WARNING(eventId, spamType) end

--- @param eventId integer
--- @param guildId integer
--- @param guildName string
--- @param guildAlliance Alliance
--- @param inviterDisplayName string
--- @return void
function EVENT_GUILD_INVITE_ADDED(eventId, guildId, guildName, guildAlliance, inviterDisplayName) end

--- @param eventId integer
--- @param reason SendMailResult
--- @return void
function EVENT_MAIL_SEND_FAILED(eventId, reason) end

--- @param eventId integer
--- @return void
function EVENT_CONSOLIDATED_STATION_ACTIVE_SET_UPDATED(eventId) end

--- @param eventId integer
--- @param reason TributeMatchEvent
--- @param targetCharacterName string
--- @param targetDisplayName string
--- @return void
function EVENT_TRIBUTE_INVITE_FAILED(eventId, reason, targetCharacterName, targetDisplayName) end

--- @param eventId integer
--- @return void
function EVENT_CHAMPION_SYSTEM_UNLOCKED(eventId) end

--- @param eventId integer
--- @param listingType HouseTourListingType
--- @param result HouseTourRequestListingsResult
--- @param searchId integer
--- @return void
function EVENT_HOUSE_TOURS_SEARCH_COMPLETE(eventId, listingType, result, searchId) end

--- @param eventId integer
--- @param actionBarLockedReason ActionBarLockedReason
--- @return void
function EVENT_ACTION_BAR_LOCKED_REASON_CHANGED(eventId, actionBarLockedReason) end

--- @param eventId integer
--- @return void
function EVENT_AGENT_CHAT_REQUESTED(eventId) end

--- @param eventId integer
--- @param furnitureId id64
--- @return void
function EVENT_HOUSING_FURNITURE_MOVED(eventId, furnitureId) end

--- @param eventId integer
--- @param isDisabled bool
--- @return void
function EVENT_SKILL_STYLE_DISABLED_BY_SERVER(eventId, isDisabled) end

--- @param eventId integer
--- @param result ChampionPurchaseResult
--- @return void
function EVENT_CHAMPION_PURCHASE_RESULT(eventId, result) end

--- @param eventId integer
--- @param currencyType CurrencyType
--- @param currencyLocation CurrencyLocation
--- @param newAmount integer
--- @param oldAmount integer
--- @param reason CurrencyChangeReason
--- @param reasonSupplementaryInfo integer
--- @return void
function EVENT_CURRENCY_UPDATE(eventId, currencyType, currencyLocation, newAmount, oldAmount, reason, reasonSupplementaryInfo) end

--- @param eventId integer
--- @return void
function EVENT_GUILD_HISTORY_REFRESHED(eventId) end

--- @param eventId integer
--- @param reason PledgeOfMaraResult
--- @param targetCharacterName string
--- @param targetDisplayName string
--- @return void
function EVENT_PLEDGE_OF_MARA_RESULT(eventId, reason, targetCharacterName, targetDisplayName) end

--- @param eventId integer
--- @param attachmentSlot luaindex
--- @return void
function EVENT_MAIL_ATTACHMENT_ADDED(eventId, attachmentSlot) end

--- @param eventId integer
--- @param newMoney integer
--- @param oldMoney integer
--- @param reason CurrencyChangeReason
--- @param reasonSupplementaryInfo integer
--- @return void
function EVENT_MONEY_UPDATE(eventId, newMoney, oldMoney, reason, reasonSupplementaryInfo) end

--- @param eventId integer
--- @return void
function EVENT_PLAYER_DEATH_INFO_UPDATE(eventId) end

--- @param eventId integer
--- @param enabled bool
--- @return void
function EVENT_TUTORIAL_SYSTEM_ENABLED_STATE_CHANGED(eventId, enabled) end

--- @param eventId integer
--- @param useKeyboardChat bool
--- @return void
function EVENT_GAMEPAD_USE_KEYBOARD_CHAT_CHANGED(eventId, useKeyboardChat) end

--- @param eventId integer
--- @return void
function EVENT_OBJECTIVES_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_PERSONALITY_CHANGED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_QUEST_OFFERED(eventId) end

--- @param eventId integer
--- @param oldInfamy integer
--- @param newInfamy integer
--- @param oldInfamyLevel InfamyThresholdsType
--- @param newInfamyLevel InfamyThresholdsType
--- @return void
function EVENT_JUSTICE_INFAMY_UPDATED(eventId, oldInfamy, newInfamy, oldInfamyLevel, newInfamyLevel) end

--- @param eventId integer
--- @param reason TradeActionResult
--- @param itemName string
--- @return void
function EVENT_TRADE_ELEVATION_FAILED(eventId, reason, itemName) end

--- @param eventId integer
--- @return void
function EVENT_TARGET_MARKER_UPDATE(eventId) end

--- @param eventId integer
--- @param itemSetId integer
--- @param itemSetCollectionSlot id64
--- @return void
function EVENT_ITEM_SET_COLLECTION_SLOT_NEW_STATUS_CLEARED(eventId, itemSetId, itemSetCollectionSlot) end

--- @param eventId integer
--- @return void
function EVENT_BEGIN_SIEGE_CONTROL(eventId) end

--- @param eventId integer
--- @param status GroupFinderStatus
--- @return void
function EVENT_GROUP_FINDER_STATUS_UPDATED(eventId, status) end

--- @param eventId integer
--- @return void
function EVENT_GUILD_FINDER_LONG_SEARCH_WARNING(eventId) end

--- @param eventId integer
--- @param oldStatus PlayerStatus
--- @param newStatus PlayerStatus
--- @return void
function EVENT_PLAYER_STATUS_CHANGED(eventId, oldStatus, newStatus) end

--- @param eventId integer
--- @return void
function EVENT_QUEST_LIST_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GROUPING_TOOLS_FIND_REPLACEMENT_NOTIFICATION_NEW(eventId) end

--- @param eventId integer
--- @return void
function EVENT_VOICE_CHAT_ACCESSIBILITY_SETTING_CHANGED(eventId) end

--- @param eventId integer
--- @param searchId integer
--- @return void
function EVENT_GUILD_FINDER_SEARCH_COMPLETE(eventId, searchId) end

--- @param eventId integer
--- @return void
function EVENT_ANTIQUITY_DIGGING_ANTIQUITY_UNEARTHED(eventId) end

--- @param eventId integer
--- @param reason CompanionUltimateFailureReason
--- @param companionName string
--- @return void
function EVENT_COMPANION_ULTIMATE_FAILURE(eventId, reason, companionName) end

--- @param eventId integer
--- @param changeType EffectResult
--- @param effectSlot integer
--- @param effectName string
--- @param unitTag string
--- @param beginTime number
--- @param endTime number
--- @param stackCount integer
--- @param iconName string
--- @param deprecatedBuffType string
--- @param effectType BuffEffectType
--- @param abilityType AbilityType
--- @param statusEffectType StatusEffectType
--- @param unitName string
--- @param unitId integer
--- @param abilityId integer
--- @param sourceType CombatUnitType
--- @return void
function EVENT_EFFECT_CHANGED(eventId, changeType, effectSlot, effectName, unitTag, beginTime, endTime, stackCount, iconName, deprecatedBuffType, effectType,
                              abilityType, statusEffectType, unitName, unitId, abilityId, sourceType)
end

--- @param eventId integer
--- @return void
function EVENT_DISABLE_SIEGE_PACKUP_ABILITY(eventId) end

--- @param eventId integer
--- @return void
function EVENT_HOUSE_TOURS_CURRENT_HOUSE_LISTING_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_TRADE_INVITE_ACCEPTED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_ABILITY_LIST_CHANGED(eventId) end

--- @param eventId integer
--- @param memberCharacterName string
--- @param memberDisplayName string
--- @param isLocalPlayer bool
--- @return void
function EVENT_GROUP_MEMBER_JOINED(eventId, memberCharacterName, memberDisplayName, isLocalPlayer) end

--- @param eventId integer
--- @param index luaindex
--- @param previousProgress integer
--- @param currentProgress integer
--- @param complete bool
--- @return void
function EVENT_TIMED_ACTIVITY_PROGRESS_UPDATED(eventId, index, previousProgress, currentProgress, complete) end

--- @param eventId integer
--- @return void
function EVENT_PLEDGE_OF_MARA_OFFER_REMOVED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_VIDEO_PLAYBACK_COMPLETE(eventId) end

--- @param eventId integer
--- @return void
function EVENT_DISABLE_SIEGE_AIM_ABILITY(eventId) end

--- @param eventId integer
--- @param result ArmoryBuildRestoreResult
--- @param buildIndex luaindex
--- @return void
function EVENT_ARMORY_BUILD_RESTORE_RESPONSE(eventId, result, buildIndex) end

--- @param eventId integer
--- @param reason HotBarResult
--- @return void
function EVENT_HOT_BAR_RESULT(eventId, reason) end

--- @param eventId integer
--- @param objectiveKeepId integer
--- @param objectiveObjectiveId integer
--- @param battlegroundContext integer
--- @param objectiveName string
--- @param objectiveControlEvent ObjectiveControlEvent
--- @param objectiveControlState ObjectiveControlState
--- @param originalOwnerAlliance Alliance
--- @param holderAlliance Alliance
--- @param lastHolderAlliance Alliance
--- @param capturedAtKeepId integer
--- @param pinType MapDisplayPinType
--- @return void
function EVENT_ARTIFACT_SCROLL_STATE_CHANGED(eventId, objectiveKeepId, objectiveObjectiveId, battlegroundContext, objectiveName, objectiveControlEvent,
                                             objectiveControlState, originalOwnerAlliance, holderAlliance, lastHolderAlliance, capturedAtKeepId, pinType)
end

--- @param eventId integer
--- @param slotId integer
--- @param isPending bool
--- @return void
function EVENT_TRADING_HOUSE_PENDING_ITEM_UPDATE(eventId, slotId, isPending) end

--- @param eventId integer
--- @param skillLineId integer
--- @return void
function EVENT_COMPANION_SKILL_LINE_ADDED(eventId, skillLineId) end

--- @param eventId integer
--- @return void
function EVENT_GROUPING_TOOLS_READY_CHECK_UPDATED(eventId) end

--- @param eventId integer
--- @param guildId integer
--- @param displayName string
--- @param oldStatus integer
--- @param newStatus integer
--- @return void
function EVENT_GUILD_MEMBER_PLAYER_STATUS_CHANGED(eventId, guildId, displayName, oldStatus, newStatus) end

--- @param eventId integer
--- @param text string
--- @return void
function EVENT_QUEST_OPTIONAL_STEP_ADVANCED(eventId, text) end

--- @param eventId integer
--- @param actionSlotIndex luaindex
--- @return void
function EVENT_ACTION_SLOT_UPDATED(eventId, actionSlotIndex) end

--- @param eventId integer
--- @return void
function EVENT_ENABLE_SIEGE_FIRE_ABILITY(eventId) end

--- @param eventId integer
--- @param capsLockEnabled bool
--- @return void
function EVENT_CAPS_LOCK_STATE_CHANGED(eventId, capsLockEnabled) end

--- @param eventId integer
--- @param summonResult CompanionSummonResult
--- @param companionId integer
--- @return void
function EVENT_COMPANION_SUMMON_RESULT(eventId, summonResult, companionId) end

--- @param eventId integer
--- @return void
function EVENT_END_CUTSCENE(eventId) end

--- @param eventId integer
--- @param result CampaignReassignmentErrorReason
--- @return void
function EVENT_CAMPAIGN_ASSIGNMENT_RESULT(eventId, result) end

--- @param eventId integer
--- @param guildId integer
--- @return void
function EVENT_GUILD_FINDER_APPLICATION_RESULTS_GUILD(eventId, guildId) end

--- @param eventId integer
--- @return void
function EVENT_TRIBUTE_PATRONS_SEARCH_RESULTS_READY(eventId) end

--- @param eventId integer
--- @param activeWeaponPair ActiveWeaponPair
--- @param locked bool
--- @return void
function EVENT_ACTIVE_WEAPON_PAIR_CHANGED(eventId, activeWeaponPair, locked) end

--- @param eventId integer
--- @param itemSoundCategory ItemUISoundCategory
--- @return void
function EVENT_ITEM_SLOT_CHANGED(eventId, itemSoundCategory) end

--- @param eventId integer
--- @param categoryId integer
--- @return void
function EVENT_COLLECTIBLE_CATEGORY_NEW_STATUS_CLEARED(eventId, categoryId) end

--- @param eventId integer
--- @param collectibleId integer
--- @param oldFlags integer
--- @param newFlags integer
--- @return void
function EVENT_COLLECTIBLE_USER_FLAGS_UPDATED(eventId, collectibleId, oldFlags, newFlags) end

--- @param eventId integer
--- @param reason JumpResult
--- @return void
function EVENT_JUMP_FAILED(eventId, reason) end

--- @param eventId integer
--- @return void
function EVENT_PLAYER_DEATH_REQUEST_FAILURE(eventId) end

--- @param eventId integer
--- @param result ResolveGroupListingApplicationResponse
--- @return void
function EVENT_GROUP_FINDER_RESOLVE_GROUP_LISTING_APPLICATION_RESULT(eventId, result) end

--- @param eventId integer
--- @return void
function EVENT_TIMED_ACTIVITIES_UPDATED(eventId) end

--- @param eventId integer
--- @param newCurrentCampaignId integer
--- @return void
function EVENT_CURRENT_CAMPAIGN_CHANGED(eventId, newCurrentCampaignId) end

--- @param eventId integer
--- @param taskId integer
--- @param pinType MapDisplayPinType
--- @param xLoc number
--- @param yLoc number
--- @param areaRadius number
--- @param insideCurrentMapWorld bool
--- @param isBreadcrumb bool
--- @param teleportNPCId integer
--- @param waypointId integer
--- @return void
function EVENT_QUEST_POSITION_REQUEST_COMPLETE(eventId, taskId, pinType, xLoc, yLoc, areaRadius, insideCurrentMapWorld, isBreadcrumb, teleportNPCId, waypointId) end

--- @param eventId integer
--- @param furnitureId id64
--- @param pathIndex luaindex
--- @return void
function EVENT_HOUSING_FURNITURE_PATH_NODE_MOVED(eventId, furnitureId, pathIndex) end

--- @param eventId integer
--- @param journalIndex luaindex
--- @param isPaused bool
--- @return void
function EVENT_QUEST_TIMER_PAUSED(eventId, journalIndex, isPaused) end

--- @param eventId integer
--- @param result ActivityQueueResult
--- @return void
function EVENT_ACTIVITY_QUEUE_RESULT(eventId, result) end

--- @param eventId integer
--- @return void
function EVENT_ENDLESS_DUNGEON_LEADERBOARD_PLAYER_DATA_CHANGED(eventId) end

--- @param eventId integer
--- @param who TradeParticipant
--- @param tradeIndex luaindex
--- @param itemSoundCategory ItemUISoundCategory
--- @return void
function EVENT_TRADE_ITEM_REMOVED(eventId, who, tradeIndex, itemSoundCategory) end

--- @param eventId integer
--- @param tutorialIndex luaindex
--- @return void
function EVENT_REMOVE_TUTORIAL(eventId, tutorialIndex) end

--- @param eventId integer
--- @return void
function EVENT_LOCKPICK_FAILED(eventId) end

--- @param eventId integer
--- @param campaignId integer
--- @param isGroupMember bool
--- @param willLockToAlliance Alliance
--- @return void
function EVENT_CAMPAIGN_QUEUE_JOINED(eventId, campaignId, isGroupMember, willLockToAlliance) end

--- @param eventId integer
--- @param durationMs integer
--- @return void
function EVENT_START_SOUL_GEM_RESURRECTION(eventId, durationMs) end

--- @param eventId integer
--- @return void
function EVENT_COLLECTIBLES_UNLOCK_STATE_CHANGED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_DAILY_LOGIN_REWARDS_CLAIMED(eventId) end

--- @param eventId integer
--- @param counterType EndlessDungeonCounterType
--- @param counterValue integer
--- @return void
function EVENT_ENDLESS_DUNGEON_COUNTER_VALUE_CHANGED(eventId, counterType, counterValue) end

--- @param eventId integer
--- @param animNote string
--- @return void
function EVENT_ANIMATION_NOTE(eventId, animNote) end

--- @param eventId integer
--- @return void
function EVENT_VIDEO_PLAYBACK_CONFIRM_CANCEL(eventId) end

--- @param eventId integer
--- @param attachmentSlot luaindex
--- @return void
function EVENT_MAIL_ATTACHMENT_REMOVED(eventId, attachmentSlot) end

--- @param eventId integer
--- @param inviterName string
--- @param response GroupInviteResponse
--- @param inviterDisplayName string
--- @return void
function EVENT_GROUP_INVITE_RESPONSE(eventId, inviterName, response, inviterDisplayName) end

--- @param eventId integer
--- @return void
function EVENT_INVENTORY_CLOSE_BUY_SPACE(eventId) end

--- @param eventId integer
--- @return void
function EVENT_NO_DAEDRIC_PICKUP_AS_EMPEROR(eventId) end

--- @param eventId integer
--- @param slotId integer
--- @param addedByLocalPlayer bool
--- @param itemSoundCategory ItemUISoundCategory
--- @param isLastUpdateForMessage bool
--- @return void
function EVENT_GUILD_BANK_ITEM_REMOVED(eventId, slotId, addedByLocalPlayer, itemSoundCategory, isLastUpdateForMessage) end

--- @param eventId integer
--- @return void
function EVENT_ANTIQUITY_JOURNAL_SHOW_SCRYABLE(eventId) end

--- @param eventId integer
--- @param categoryIndex luaindex
--- @param collectionIndex luaindex
--- @param bookIndex luaindex
--- @param guildIndex luaindex
--- @param isMaxRank bool
--- @return void
function EVENT_LORE_BOOK_LEARNED(eventId, categoryIndex, collectionIndex, bookIndex, guildIndex, isMaxRank) end

--- @param eventId integer
--- @param bagId Bag
--- @param slotIndex integer
--- @param isNewItem bool
--- @param itemSoundCategory ItemUISoundCategory
--- @param inventoryUpdateReason integer
--- @param stackCountChange integer
--- @param triggeredByCharacterName string|nil
--- @param triggeredByDisplayName string|nil
--- @param isLastUpdateForMessage bool
--- @param bonusDropSource BonusDropSource
--- @return void
function EVENT_INVENTORY_SINGLE_SLOT_UPDATE(eventId, bagId, slotIndex, isNewItem, itemSoundCategory, inventoryUpdateReason, stackCountChange,
                                            triggeredByCharacterName, triggeredByDisplayName, isLastUpdateForMessage, bonusDropSource)
end

--- @param eventId integer
--- @param result ScribingErrorResult
--- @return void
function EVENT_SCRIBING_ERROR_RESULT(eventId, result) end

--- @param eventId integer
--- @param guildKioskResult GuildKioskResult
--- @return void
function EVENT_GUILD_KIOSK_RESULT(eventId, guildKioskResult) end

--- @param eventId integer
--- @return void
function EVENT_PLAYER_TITLES_UPDATE(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_ELECTION_NOTIFICATION_ADDED(eventId) end

--- @param eventId integer
--- @param primaryText string
--- @param secondaryText string
--- @param iconFilename string
--- @param soundId string
--- @param lifespanMS integer
--- @param category CenterScreenAnnouncementCategory
--- @return void
function EVENT_DISPLAY_ANNOUNCEMENT(eventId, primaryText, secondaryText, iconFilename, soundId, lifespanMS, category) end

--- @param eventId integer
--- @return void
function EVENT_GUILD_KIOSK_CONSIDER_BID_STOP(eventId) end

--- @param eventId integer
--- @param campaignId integer
--- @param lockedToAlliance Alliance
--- @param timeLeftS integer
--- @return void
function EVENT_CAMPAIGN_ALLIANCE_LOCK_PENDING(eventId, campaignId, lockedToAlliance, timeLeftS) end

--- @param eventId integer
--- @param bagId Bag
--- @param mythicSlotIndex integer
--- @return void
function EVENT_INVENTORY_EQUIP_MYTHIC_FAILED(eventId, bagId, mythicSlotIndex) end

--- @param eventId integer
--- @param campaignId integer
--- @param emperorCharacterName string
--- @param emperorAlliance Alliance
--- @param emperorDisplayName string
--- @return void
function EVENT_CORONATE_EMPEROR_NOTIFICATION(eventId, campaignId, emperorCharacterName, emperorAlliance, emperorDisplayName) end

--- @param eventId integer
--- @param artificialEffectId integer
--- @return void
function EVENT_ARTIFICIAL_EFFECT_ADDED(eventId, artificialEffectId) end

--- @param eventId integer
--- @param displayName string
--- @param note string
--- @return void
function EVENT_IGNORE_NOTE_UPDATED(eventId, displayName, note) end

--- @param eventId integer
--- @param objectiveKeepId integer
--- @param objectiveObjectiveId integer
--- @param battlegroundContext BattlegroundQueryContextType
--- @param objectiveControlEvent ObjectiveControlEvent
--- @param objectiveControlState ObjectiveControlState
--- @param holderAlliance Alliance
--- @param lastHolderAlliance Alliance
--- @param pinType MapDisplayPinType
--- @param daedricArtifactId integer
--- @param lastObjectiveControlState ObjectiveControlState
--- @return void
function EVENT_DAEDRIC_ARTIFACT_OBJECTIVE_STATE_CHANGED(eventId, objectiveKeepId, objectiveObjectiveId, battlegroundContext, objectiveControlEvent,
                                                        objectiveControlState, holderAlliance, lastHolderAlliance, pinType, daedricArtifactId,
                                                        lastObjectiveControlState)
end

--- @param eventId integer
--- @param cooldownMs integer
--- @return void
function EVENT_GROUP_FINDER_SEARCH_COOLDOWN_UPDATE(eventId, cooldownMs) end

--- @param eventId integer
--- @return void
function EVENT_END_SOUL_GEM_RESURRECTION(eventId) end

--- @param eventId integer
--- @param keepId integer
--- @return void
function EVENT_KEEP_RESOURCE_UPDATE(eventId, keepId) end

--- @param eventId integer
--- @param objectiveKeepId integer
--- @param objectiveObjectiveId integer
--- @param battlegroundContext integer
--- @param objectiveName string
--- @param objectiveControlEvent ObjectiveControlEvent
--- @param objectiveControlState ObjectiveControlState
--- @param holderAlliance Alliance
--- @param lastHolderAlliance Alliance
--- @param holderRawCharacterName string
--- @param holderDisplayName string
--- @param lastHolderRawCharacterName string
--- @param lastHolderDisplayName string
--- @param pinType MapDisplayPinType
--- @return void
function EVENT_MURDERBALL_STATE_CHANGED(eventId, objectiveKeepId, objectiveObjectiveId, battlegroundContext, objectiveName, objectiveControlEvent,
                                        objectiveControlState, holderAlliance, lastHolderAlliance, holderRawCharacterName, holderDisplayName,
                                        lastHolderRawCharacterName, lastHolderDisplayName, pinType)
end

--- @param eventId integer
--- @param newAbilityId integer
--- @param actionSlotIndex luaindex
--- @param hotbarCategory HotBarCategory
--- @return void
function EVENT_HOTBAR_SLOT_CHANGE_REQUESTED(eventId, newAbilityId, actionSlotIndex, hotbarCategory) end

--- @param eventId integer
--- @param guildId integer
--- @param numApplications integer
--- @return void
function EVENT_GUILD_FINDER_GUILD_NEW_APPLICATIONS(eventId, guildId, numApplications) end

--- @param eventId integer
--- @param applicantCharId id64
--- @return void
function EVENT_GROUP_FINDER_APPLICATION_RECEIVED(eventId, applicantCharId) end

--- @param eventId integer
--- @return void
function EVENT_STUCK_ERROR_INVALID_LOCATION(eventId) end

--- @param eventId integer
--- @param craftedAbilityScriptDefId integer
--- @param isUnlocked bool
--- @return void
function EVENT_CRAFTED_ABILITY_SCRIPT_LOCK_STATE_CHANGED(eventId, craftedAbilityScriptDefId, isUnlocked) end

--- @param eventId integer
--- @param avengedCharacterName string
--- @param killedCharacterName string
--- @param avengedDisplayName string
--- @param killedDisplayName string
--- @return void
function EVENT_AVENGE_KILL(eventId, avengedCharacterName, killedCharacterName, avengedDisplayName, killedDisplayName) end

--- @param eventId integer
--- @return void
function EVENT_NEW_DAILY_LOGIN_REWARD_AVAILABLE(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GAME_CAMERA_UI_MODE_CHANGED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_BANK_IS_FULL(eventId) end

--- @param eventId integer
--- @param reason LootItemResult
--- @param itemLink string
--- @return void
function EVENT_LOOT_ITEM_FAILED(eventId, reason, itemLink) end

--- @param eventId integer
--- @param keepId integer
--- @param battlegroundContext integer
--- @param directionalAccess KeepPieceDirectionalAccess
--- @return void
function EVENT_KEEP_PIECE_DIRECTIONAL_ACCESS_CHANGED(eventId, keepId, battlegroundContext, directionalAccess) end

--- @param eventId integer
--- @return void
function EVENT_SIEGE_PACK_FAILED_NOT_CREATOR(eventId) end

--- @param eventId integer
--- @return void
function EVENT_TRIBUTE_INVITE_DECLINED(eventId) end

--- @param eventId integer
--- @param actionSlotIndex luaindex
--- @param hotbarCategory HotBarCategory
--- @return void
function EVENT_HOTBAR_SLOT_STATE_UPDATED(eventId, actionSlotIndex, hotbarCategory) end

--- @param eventId integer
--- @param bagId Bag
--- @param slotIndex integer
--- @return void
function EVENT_SLOT_IS_LOCKED_FAILURE(eventId, bagId, slotIndex) end

--- @param eventId integer
--- @return void
function EVENT_ALL_GUI_SCREENS_RESIZED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_KEEPS_INITIALIZED(eventId) end

--- @param eventId integer
--- @param bagId Bag
--- @param slotIndex integer
--- @param itemCount integer
--- @param name string
--- @param reason integer
--- @return void
function EVENT_MOUSE_REQUEST_DESTROY_ITEM_FAILED(eventId, bagId, slotIndex, itemCount, name, reason) end

--- @param eventId integer
--- @param electionResult GroupElectionResult
--- @param descriptor string
--- @return void
function EVENT_GROUP_ELECTION_RESULT(eventId, electionResult, descriptor) end

--- @param eventId integer
--- @param protectedFunctionName string
--- @return void
function EVENT_SCRIPT_ACCESS_VIOLATION(eventId, protectedFunctionName) end

--- @param eventId integer
--- @param response QueueForCampaignResponseType
--- @return void
function EVENT_QUEUE_FOR_CAMPAIGN_RESPONSE(eventId, response) end

--- @param eventId integer
--- @param result MailTakeAttachmentResult
--- @param category MailCategory
--- @param headersRemoved bool
--- @return void
function EVENT_MAIL_TAKE_ALL_ATTACHMENTS_IN_CATEGORY_RESPONSE(eventId, result, category, headersRemoved) end

--- @param eventId integer
--- @return void
function EVENT_GROUPING_TOOLS_NO_LONGER_LFG(eventId) end

--- @param eventId integer
--- @return void
function EVENT_OPEN_TIMED_ACTIVITIES(eventId) end

--- @param eventId integer
--- @param messageOrigin SceneManagerMessageOrigin
--- @param syncType RemoteSceneSyncType
--- @param currentSceneName string
--- @param nextSceneName string
--- @param sequenceNumber integer
--- @param currentSceneFragmentsComplete bool
--- @return void
function EVENT_LEADER_TO_FOLLOWER_SYNC(eventId, messageOrigin, syncType, currentSceneName, nextSceneName, sequenceNumber, currentSceneFragmentsComplete) end

--- @param eventId integer
--- @param response ApplyOutfitChangesResult
--- @param actorCategory GameplayActorCategory
--- @param outfitIndex luaindex
--- @return void
function EVENT_OUTFIT_CHANGE_RESPONSE(eventId, response, actorCategory, outfitIndex) end

--- @param eventId integer
--- @param shouldShow bool
--- @param isLocked bool
--- @return void
function EVENT_MARKET_ANNOUNCEMENT_UPDATED(eventId, shouldShow, isLocked) end

--- @param eventId integer
--- @param loadResult HousingLoadPermissionsResult
--- @return void
function EVENT_HOUSING_LOAD_PERMISSIONS_RESULT(eventId, loadResult) end

--- @param eventId integer
--- @return void
function EVENT_JUSTICE_NO_LONGER_KOS(eventId) end

--- @param eventId integer
--- @param alert GroupFinderMemberAlert
--- @return void
function EVENT_GROUP_FINDER_MEMBER_ALERT(eventId, alert) end

--- @param eventId integer
--- @param itemSoundCategory ItemUISoundCategory
--- @return void
function EVENT_INVENTORY_ITEM_DESTROYED(eventId, itemSoundCategory) end

--- @param eventId integer
--- @return void
function EVENT_PLAYER_NOT_SWIMMING(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GIFTS_UPDATED(eventId) end

--- @param eventId integer
--- @param journalIndex luaindex
--- @return void
function EVENT_QUEST_CONDITION_OVERRIDE_TEXT_CHANGED(eventId, journalIndex) end

--- @param eventId integer
--- @param requesterCharacterName string
--- @param timeLeftToAccept integer
--- @param requesterDisplayName string
--- @return void
function EVENT_RESURRECT_REQUEST(eventId, requesterCharacterName, timeLeftToAccept, requesterDisplayName) end

--- @param eventId integer
--- @param unitTag string
--- @param powerIndex luaindex
--- @param powerType CombatMechanicFlags
--- @param powerValue integer
--- @param powerMax integer
--- @param powerEffectiveMax integer
--- @return void
function EVENT_POWER_UPDATE(eventId, unitTag, powerIndex, powerType, powerValue, powerMax, powerEffectiveMax) end

--- @param eventId integer
--- @return void
function EVENT_REQUEST_SHOW_GIFT_INVENTORY(eventId) end

--- @param eventId integer
--- @param displayName string
--- @return void
function EVENT_IGNORE_REMOVED(eventId, displayName) end

--- @param eventId integer
--- @return void
function EVENT_TRADE_ACCEPT_FAILED_NOT_ENOUGH_MONEY(eventId) end

--- @param eventId integer
--- @return void
function EVENT_DAILY_LOGIN_MONTH_CHANGED(eventId) end

--- @param eventId integer
--- @param type MouseContentType
--- @param param1 integer
--- @param param2 integer
--- @param param3 integer
--- @param param4 integer
--- @param param5 integer
--- @param param6 integer
--- @return void
function EVENT_CURSOR_DROPPED(eventId, type, param1, param2, param3, param4, param5, param6) end

--- @param eventId integer
--- @return void
function EVENT_CANNOT_DO_THAT_WHILE_DEAD(eventId) end

--- @param eventId integer
--- @param result ActivityFinderStatus
--- @return void
function EVENT_ACTIVITY_FINDER_STATUS_UPDATE(eventId, result) end

--- @param eventId integer
--- @param tutorialTrigger TutorialTrigger
--- @return void
function EVENT_TUTORIAL_TRIGGER_COMPLETED(eventId, tutorialTrigger) end

--- @param eventId integer
--- @return void
function EVENT_CAMPAIGN_HISTORY_WINDOW_CHANGED(eventId) end

--- @param eventId integer
--- @param mailId id64
--- @return void
function EVENT_MAIL_TAKE_ATTACHED_MONEY_SUCCESS(eventId, mailId) end

--- @param eventId integer
--- @param result GroupOperationResult
--- @return void
function EVENT_GROUP_OPERATION_RESULT(eventId, result) end

--- @param eventId integer
--- @param mailId id64
--- @return void
function EVENT_MAIL_READABLE(eventId, mailId) end

--- @param eventId integer
--- @return void
function EVENT_LOCAL_PLAYER_MODEL_REBUILT(eventId) end

--- @param eventId integer
--- @param guildId integer
--- @param displayName string
--- @return void
function EVENT_GUILD_MEMBER_ADDED(eventId, guildId, displayName) end

--- @param eventId integer
--- @param messageOrigin SceneManagerMessageOrigin
--- @param sceneName string
--- @param sequenceNumber integer
--- @return void
function EVENT_FOLLOWER_SCENE_FINISHED_FRAGMENT_TRANSITION(eventId, messageOrigin, sceneName, sequenceNumber) end

--- @param eventId integer
--- @param collectibleId integer
--- @return void
function EVENT_COLLECTIBLE_REQUEST_BROWSE_TO(eventId, collectibleId) end

--- @param eventId integer
--- @param keepId integer
--- @param battlegroundContext integer
--- @param isPassable bool
--- @return void
function EVENT_KEEP_IS_PASSABLE_CHANGED(eventId, keepId, battlegroundContext, isPassable) end

--- @param eventId integer
--- @return void
function EVENT_CLOSE_GUILD_BANK(eventId) end

--- @param eventId integer
--- @return void
function EVENT_DYES_SEARCH_RESULTS_READY(eventId) end

--- @param eventId integer
--- @return void
function EVENT_PREVIEW_COLLECTIBLE_ACTION_RESET(eventId) end

--- @param eventId integer
--- @param operationType HouseTourFavoriteOperationType
--- @param result HouseTourSaveFavoriteResult
--- @param ownerDisplayName string
--- @param houseId integer
--- @return void
function EVENT_HOUSE_TOURS_SAVE_FAVORITE_OPERATION_COMPLETE(eventId, operationType, result, ownerDisplayName, houseId) end

--- @param eventId integer
--- @return void
function EVENT_RETICLE_TARGET_CHANGED(eventId) end

--- @param eventId integer
--- @param displayName string
--- @return void
function EVENT_IGNORE_ADDED(eventId, displayName) end

--- @param eventId integer
--- @param buildIndex luaindex
--- @return void
function EVENT_ARMORY_BUILD_UPDATED(eventId, buildIndex) end

--- @param eventId integer
--- @param newWritVouchers integer
--- @param oldWritVouchers integer
--- @param reason CurrencyChangeReason
--- @param reasonSupplementaryInfo integer
--- @return void
function EVENT_WRIT_VOUCHER_UPDATE(eventId, newWritVouchers, oldWritVouchers, reason, reasonSupplementaryInfo) end

--- @param eventId integer
--- @param keepId integer
--- @param battlegroundContext integer
--- @param owningAlliance Alliance
--- @param oldOwningAlliance Alliance
--- @return void
function EVENT_KEEP_ALLIANCE_OWNER_CHANGED(eventId, keepId, battlegroundContext, owningAlliance, oldOwningAlliance) end

--- @param eventId integer
--- @param inCombat bool
--- @return void
function EVENT_PLAYER_COMBAT_STATE(eventId, inCombat) end

--- @param eventId integer
--- @param endlessDungeonName string
--- @param score integer
--- @param isWeekly bool
--- @return void
function EVENT_ENDLESS_DUNGEON_NEW_BEST_SCORE(eventId, endlessDungeonName, score, isWeekly) end

--- @param eventId integer
--- @param guildId integer
--- @return void
function EVENT_GUILD_BANK_SELECTED(eventId, guildId) end

--- @param eventId integer
--- @param quitGame bool
--- @return void
function EVENT_JUSTICE_BEING_ARRESTED(eventId, quitGame) end

--- @param eventId integer
--- @param journalIndex luaindex
--- @param questName string
--- @param isPushed bool
--- @param isComplete bool
--- @param mainStepChanged bool
--- @param hideAnnouncement bool
--- @return void
function EVENT_QUEST_ADVANCED(eventId, journalIndex, questName, isPushed, isComplete, mainStepChanged, hideAnnouncement) end

--- @param eventId integer
--- @param helpCategoryIndex luaindex
--- @param helpIndex luaindex
--- @return void
function EVENT_SHOW_SPECIFIC_HELP_PAGE(eventId, helpCategoryIndex, helpIndex) end

--- @param eventId integer
--- @return void
function EVENT_BATTLEGROUND_SCOREBOARD_UPDATED(eventId) end

--- @param eventId integer
--- @param campaignKey id64
--- @return void
function EVENT_PROMOTIONAL_EVENTS_REWARDS_CLAIMED(eventId, campaignKey) end

--- @param eventId integer
--- @param unitTag string
--- @param rankNum luaindex
--- @param name string
--- @param xpBonus integer
--- @param loot bool
--- @return void
function EVENT_FINESSE_RANK_CHANGED(eventId, unitTag, rankNum, name, xpBonus, loot) end

--- @param eventId integer
--- @return void
function EVENT_TRADE_SUCCEEDED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_UPDATE(eventId) end

--- @param eventId integer
--- @param mounted bool
--- @return void
function EVENT_MOUNTED_STATE_CHANGED(eventId, mounted) end

--- @param eventId integer
--- @return void
function EVENT_OPEN_ARMORY_MENU(eventId) end

--- @param eventId integer
--- @return void
function EVENT_DUEL_STARTED(eventId) end

--- @param eventId integer
--- @param layerIndex luaindex
--- @param categoryIndex luaindex
--- @param actionIndex luaindex
--- @param bindingIndex luaindex
--- @return void
function EVENT_KEYBINDING_CLEARED(eventId, layerIndex, categoryIndex, actionIndex, bindingIndex) end

--- @param eventId integer
--- @return void
function EVENT_CRAFT_BAG_AUTO_TRANSFER_NOTIFICATION_CLEARED(eventId) end

--- @param eventId integer
--- @param mailId id64
--- @param success bool
--- @return void
function EVENT_DELETE_MAIL_RESPONSE(eventId, mailId, success) end

--- @param eventId integer
--- @param collectibleId integer
--- @return void
function EVENT_COLLECTIBLE_DYE_DATA_UPDATED(eventId, collectibleId) end

--- @param eventId integer
--- @param message string
--- @return void
function EVENT_BROADCAST(eventId, message) end

--- @param eventId integer
--- @return void
function EVENT_SCRIBING_DISABLED(eventId) end

--- @param eventId integer
--- @param guildServerId integer
--- @param characterName string
--- @param guildId integer
--- @return void
function EVENT_GUILD_SELF_LEFT_GUILD(eventId, guildServerId, characterName, guildId) end

--- @param eventId integer
--- @return void
function EVENT_HELP_INITIALIZED(eventId) end

--- @param eventId integer
--- @param houseId integer
--- @param furnitureCount integer
--- @return void
function EVENT_HOUSE_FURNITURE_COUNT_UPDATED(eventId, houseId, furnitureCount) end

--- @param eventId integer
--- @return void
function EVENT_AGENT_CHAT_ACCEPTED(eventId) end

--- @param eventId integer
--- @param journalIndex luaindex
--- @param toolIndex luaindex
--- @return void
function EVENT_ACTIVE_QUEST_TOOL_CHANGED(eventId, journalIndex, toolIndex) end

--- @param eventId integer
--- @param gamepadType GamepadType
--- @return void
function EVENT_GAMEPAD_TYPE_CHANGED(eventId, gamepadType) end

--- @param eventId integer
--- @return void
function EVENT_BATTLEGROUND_INACTIVITY_WARNING(eventId) end

--- @param eventId integer
--- @param enabled bool
--- @return void
function EVENT_SECURE_RENDER_MODE_CHANGED(eventId, enabled) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_INVITE_ACCEPT_RESPONSE_TIMEOUT(eventId) end

--- @param eventId integer
--- @return void
function EVENT_HOUSE_TOURS_STATUS_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_SYNERGY_ABILITY_CHANGED(eventId) end

--- @param eventId integer
--- @param furnitureId id64
--- @param pathIndex luaindex
--- @return void
function EVENT_HOUSING_FURNITURE_PATH_NODE_REMOVED(eventId, furnitureId, pathIndex) end

--- @param eventId integer
--- @return void
function EVENT_HOUSING_PERMISSIONS_SAVE_COMPLETE(eventId) end

--- @param eventId integer
--- @param subtitleText string
--- @return void
function EVENT_SET_SUBTITLE(eventId, subtitleText) end

--- @param eventId integer
--- @param displayName string
--- @param characterName string
--- @param oldStatus PlayerStatus
--- @param newStatus PlayerStatus
--- @return void
function EVENT_FRIEND_PLAYER_STATUS_CHANGED(eventId, displayName, characterName, oldStatus, newStatus) end

--- @param eventId integer
--- @param zoneId integer
--- @param zoneCompletionType ZoneCompletionType
--- @param activityId integer
--- @return void
function EVENT_TRACKED_ZONE_STORY_ACTIVITY_COMPLETED(eventId, zoneId, zoneCompletionType, activityId) end

--- @param eventId integer
--- @return void
function EVENT_FAST_TRAVEL_KEEP_NETWORK_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_PENDING_INTERACTION_CANCELLED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GAME_CREDITS_READY(eventId) end

--- @param eventId integer
--- @param cancelerName string
--- @return void
function EVENT_TRADE_CANCELED(eventId, cancelerName) end

--- @param eventId integer
--- @param responseType TradingHouseResult
--- @return void
function EVENT_TRADING_HOUSE_AWAITING_RESPONSE(eventId, responseType) end

--- @param eventId integer
--- @return void
function EVENT_UNSPENT_CHAMPION_POINTS_CHANGED(eventId) end

--- @param eventId integer
--- @param mailId id64
--- @return void
function EVENT_MAIL_TAKE_ATTACHED_ITEM_SUCCESS(eventId, mailId) end

--- @param eventId integer
--- @param errorReason VideoPlaybackErrorReason
--- @return void
function EVENT_VIDEO_PLAYBACK_ERROR(eventId, errorReason) end

--- @param eventId integer
--- @return void
function EVENT_LEVEL_UP_REWARD_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_OPEN_GUILD_BANK(eventId) end

--- @param eventId integer
--- @return void
function EVENT_POIS_INITIALIZED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_ACTIVE_DISPLAY_CHANGED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_RAID_PARTICIPATION_UPDATE(eventId) end

--- @param eventId integer
--- @param interactType InteractionType
--- @param cancelContext InteractCancelContext
--- @return void
function EVENT_INTERACTION_ENDED(eventId, interactType, cancelContext) end

--- @param eventId integer
--- @return void
function EVENT_SIEGE_PACK_FAILED_INVENTORY_FULL(eventId) end

--- @param eventId integer
--- @param actionSlotIndex luaindex
--- @return void
function EVENT_ACTION_SLOT_ABILITY_USED(eventId, actionSlotIndex) end

--- @param eventId integer
--- @param unitTag string
--- @param level integer
--- @return void
function EVENT_LEVEL_UPDATE(eventId, unitTag, level) end

--- @param eventId integer
--- @param result ClaimRewardResult
--- @return void
function EVENT_CLAIM_REWARD_RESULT(eventId, result) end

--- @param eventId integer
--- @param accountName string
--- @param characterName string
--- @return void
function EVENT_HOUSING_OCCUPANT_DEPARTED(eventId, accountName, characterName) end

--- @param eventId integer
--- @param guildId integer
--- @param rankIndex luaindex
--- @return void
function EVENT_GUILD_RANK_CHANGED(eventId, guildId, rankIndex) end

--- @param eventId integer
--- @return void
function EVENT_ZONE_STORY_ACTIVITY_TRACKING_INIT(eventId) end

--- @param eventId integer
--- @return void
function EVENT_STOP_ANTIQUITY_DIGGING(eventId) end

--- @param eventId integer
--- @param cooldownMilliseconds integer
--- @return void
function EVENT_TRADING_HOUSE_SEARCH_COOLDOWN_UPDATE(eventId, cooldownMilliseconds) end

--- @param eventId integer
--- @return void
function EVENT_HERALDRY_SAVED(eventId) end

--- @param eventId integer
--- @param result RespecResult
--- @return void
function EVENT_ATTRIBUTE_RESPEC_RESULT(eventId, result) end

--- @param eventId integer
--- @return void
function EVENT_MAIL_OPEN_MAILBOX(eventId) end

--- @param eventId integer
--- @param layerIndex luaindex
--- @param categoryIndex luaindex
--- @param actionIndex luaindex
--- @param bindingIndex luaindex
--- @param keyCode KeyCode
--- @param mod1 KeyCode
--- @param mod2 KeyCode
--- @param mod3 KeyCode
--- @param mod4 KeyCode
--- @return void
function EVENT_KEYBINDING_SET(eventId, layerIndex, categoryIndex, actionIndex, bindingIndex, keyCode, mod1, mod2, mod3, mod4) end

--- @param eventId integer
--- @return void
function EVENT_MARKET_PRODUCTS_UNLOCKED_NOTIFICATIONS_CLEARED(eventId) end

--- @param eventId integer
--- @param isLocalPlayer bool
--- @return void
function EVENT_TRIBUTE_PLAYER_TURN_STARTED(eventId, isLocalPlayer) end

--- @param eventId integer
--- @return void
function EVENT_DYEING_STATION_INTERACT_END(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_ELECTION_NOTIFICATION_REMOVED(eventId) end

--- @param eventId integer
--- @param displayName string
--- @return void
function EVENT_OUTGOING_FRIEND_INVITE_ADDED(eventId, displayName) end

--- @param eventId integer
--- @param id integer
--- @return void
function EVENT_COLLECTIBLE_UPDATED(eventId, id) end

--- @param eventId integer
--- @param response ReleaseKeepResultType
--- @return void
function EVENT_GUILD_RELEASE_KEEP_RESPONSE(eventId, response) end

--- @param eventId integer
--- @return void
function EVENT_ENTER_GROUND_TARGET_MODE(eventId) end

--- @param eventId integer
--- @param newBankedMoney integer
--- @param oldBankedMoney integer
--- @return void
function EVENT_GUILD_BANKED_MONEY_UPDATE(eventId, newBankedMoney, oldBankedMoney) end

--- @param eventId integer
--- @param bagId Bag
--- @param slotIndex integer
--- @return void
function EVENT_INVENTORY_SLOT_LOCKED(eventId, bagId, slotIndex) end

--- @param eventId integer
--- @return void
function EVENT_HERALDRY_CUSTOMIZATION_START(eventId) end

--- @param eventId integer
--- @return void
function EVENT_SHOW_DAILY_LOGIN_REWARDS_SCENE(eventId) end

--- @param eventId integer
--- @param campaignId integer
--- @return void
function EVENT_CAMPAIGN_UNDERPOP_BONUS_CHANGE_NOTIFICATION(eventId, campaignId) end

--- @param eventId integer
--- @param trialName string
--- @param weekly bool
--- @return void
function EVENT_RAID_TRIAL_STARTED(eventId, trialName, weekly) end

--- @param eventId integer
--- @return void
function EVENT_ATTRIBUTE_UPGRADE_UPDATED(eventId) end

--- @param eventId integer
--- @param categoryIndex luaindex
--- @param collectionIndex luaindex
--- @param bookIndex luaindex
--- @param guildIndex luaindex
--- @param skillType SkillType
--- @param skillLineIndex luaindex
--- @param rank luaindex
--- @param previousXP integer
--- @param currentXP integer
--- @return void
function EVENT_LORE_BOOK_LEARNED_SKILL_EXPERIENCE(eventId, categoryIndex, collectionIndex, bookIndex, guildIndex, skillType, skillLineIndex, rank, previousXP,
                                                  currentXP)
end

--- @param eventId integer
--- @return void
function EVENT_GAME_CAMERA_CHARACTER_FRAMING_STARTED(eventId) end

--- @param eventId integer
--- @param keepId integer
--- @param battlegroundContext integer
--- @param underAttack bool
--- @return void
function EVENT_KEEP_UNDER_ATTACK_CHANGED(eventId, keepId, battlegroundContext, underAttack) end

--- @param eventId integer
--- @return void
function EVENT_END_FAST_TRAVEL_INTERACTION(eventId) end

--- @param eventId integer
--- @param nodeIndex luaindex
--- @return void
function EVENT_START_FAST_TRAVEL_INTERACTION(eventId, nodeIndex) end

--- @param eventId integer
--- @param journalIndex luaindex
--- @param name string
--- @return void
function EVENT_MOUSE_REQUEST_ABANDON_QUEST(eventId, journalIndex, name) end

--- @param eventId integer
--- @return void
function EVENT_ENABLE_SIEGE_PACKUP_ABILITY(eventId) end

--- @param eventId integer
--- @param sellsUsed integer
--- @param laundersUsed integer
--- @return void
function EVENT_JUSTICE_FENCE_UPDATE(eventId, sellsUsed, laundersUsed) end

--- @param eventId integer
--- @return void
function EVENT_EXPIRING_MARKET_CURRENCY_NOTIFICATION_CLEARED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_SIEGE_FIRE_FAILED_COOLDOWN(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_FINDER_REMOVE_GROUP_LISTING_APPLICATION(eventId) end

--- @param eventId integer
--- @param descriptor string
--- @return void
function EVENT_GROUP_ELECTION_REQUESTED(eventId, descriptor) end

--- @param eventId integer
--- @param displayName string
--- @return void
function EVENT_FRIEND_ADDED(eventId, displayName) end

--- @param eventId integer
--- @return void
function EVENT_QUEST_COMPLETE_ATTEMPT_FAILED_INVENTORY_FULL(eventId) end

--- @param eventId integer
--- @param errorCode TradingHouseResult
--- @return void
function EVENT_TRADING_HOUSE_ERROR(eventId, errorCode) end

--- @param eventId integer
--- @param tradeskillResult TradeskillResult
--- @return void
function EVENT_CRAFT_FAILED(eventId, tradeskillResult) end

--- @return void
function EVENT_SCRIPTED_WORLD_EVENT_INVITE_REMOVED() end

--- @param eventId integer
--- @param directory string
--- @param filename string
--- @return void
function EVENT_SCREENSHOT_SAVED(eventId, directory, filename) end

--- @param eventId integer
--- @param currency CurrencyType
--- @param newValue integer
--- @param oldValue integer
--- @return void
function EVENT_BANKED_CURRENCY_UPDATE(eventId, currency, newValue, oldValue) end

--- @param eventId integer
--- @param oldBounty integer
--- @param newBounty integer
--- @param isInitialize bool
--- @return void
function EVENT_JUSTICE_BOUNTY_PAYOFF_AMOUNT_UPDATED(eventId, oldBounty, newBounty, isInitialize) end

--- @param eventId integer
--- @param unitTag string
--- @param stealthState StealthState
--- @return void
function EVENT_STEALTH_STATE_CHANGED(eventId, unitTag, stealthState) end

--- @param eventId integer
--- @return void
function EVENT_CONVERSATION_FAILED_UNIQUE_ITEM(eventId) end

--- @param eventId integer
--- @param guiName string
--- @return void
function EVENT_GUI_UNLOADING(eventId, guiName) end

--- @param eventId integer
--- @return void
function EVENT_SKILL_BUILD_SELECTION_UPDATED(eventId) end

--- @param eventId integer
--- @param furnitureId id64
--- @param pathIndex luaindex
--- @return void
function EVENT_HOUSING_FURNITURE_PATH_NODE_ADDED(eventId, furnitureId, pathIndex) end

--- @param eventId integer
--- @param who TradeParticipant
--- @param tradeIndex luaindex
--- @param itemSoundCategory ItemUISoundCategory
--- @return void
function EVENT_TRADE_ITEM_ADDED(eventId, who, tradeIndex, itemSoundCategory) end

--- @param eventId integer
--- @return void
function EVENT_HOUSE_TOURS_LISTING_RECOMMENDED_NOTIFICATIONS_UPDATED(eventId) end

--- @param eventId integer
--- @param locked bool
--- @return void
function EVENT_WEAPON_PAIR_LOCK_CHANGED(eventId, locked) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_FINDER_UPDATE_APPLICATIONS(eventId) end

--- @param eventId integer
--- @return void
function EVENT_ENABLE_SIEGE_AIM_ABILITY(eventId) end

--- @param eventId integer
--- @param cost integer
--- @param ultimateResource integer
--- @return void
function EVENT_ULTIMATE_ABILITY_COST_CHANGED(eventId, cost, ultimateResource) end

--- @param eventId integer
--- @param reason DyeStampUseResult
--- @return void
function EVENT_DYE_STAMP_USE_FAIL(eventId, reason) end

--- @param eventId integer
--- @return void
function EVENT_STUCK_COMPLETE(eventId) end

--- @param eventId integer
--- @param keepId integer
--- @param battlegroundContext integer
--- @return void
function EVENT_KEEP_GUILD_CLAIM_UPDATE(eventId, keepId, battlegroundContext) end

--- @param eventId integer
--- @param layerIndex luaindex
--- @param activeLayerIndex luaindex
--- @return void
function EVENT_ACTION_LAYER_POPPED(eventId, layerIndex, activeLayerIndex) end

--- @param eventId integer
--- @return void
function EVENT_HERALDRY_FUNDS_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_MARKET_PRODUCTS_UNLOCKED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_SKILLS_FULL_UPDATE(eventId) end

--- @param eventId integer
--- @param battlegroundType BattlegroundLeaderboardType
--- @return void
function EVENT_BATTLEGROUND_LEADERBOARD_DATA_RECEIVED(eventId, battlegroundType) end

--- @param eventId integer
--- @return void
function EVENT_OPEN_COMPANION_MENU(eventId) end

--- @param eventId integer
--- @param displayName string
--- @param characterName string
--- @param maxValue integer
--- @param numDice integer
--- @param modifier integer
--- @param rollResult integer
--- @return void
function EVENT_RANDOM_DICE_ROLL(eventId, displayName, characterName, maxValue, numDice, modifier, rollResult) end

--- @param eventId integer
--- @return void
function EVENT_RECIPE_ALREADY_KNOWN(eventId) end

--- @param eventId integer
--- @param numEscorts integer
--- @return void
function EVENT_RAM_ESCORT_COUNT_UPDATE(eventId, numEscorts) end

--- @param eventId integer
--- @return void
function EVENT_GUILD_FINDER_APPLICATION_RESULTS_PLAYER(eventId) end

--- @param eventId integer
--- @param dialogTitle string
--- @param dialogBody string
--- @param acceptText string
--- @param cancelText string
--- @return void
function EVENT_CONFIRM_INTERACT(eventId, dialogTitle, dialogBody, acceptText, cancelText) end

--- @param eventId integer
--- @return void
function EVENT_PLAYER_REINCARNATED(eventId) end

--- @param eventId integer
--- @param playerName string
--- @param guildId integer
--- @return void
function EVENT_GUILD_INVITE_PLAYER_SUCCESSFUL(eventId, playerName, guildId) end

--- @param eventId integer
--- @param chapterUpgradeId integer
--- @return void
function EVENT_REQUEST_SHOW_GAMEPAD_CHAPTER_UPGRADE(eventId, chapterUpgradeId) end

--- @param eventId integer
--- @param reason TradeActionResult
--- @param itemName string
--- @return void
function EVENT_TRADE_ITEM_ADD_FAILED(eventId, reason, itemName) end

--- @param eventId integer
--- @return void
function EVENT_PATH_FINDING_NETWORK_LINK_CHANGED(eventId) end

--- @param eventId integer
--- @param id integer
--- @return void
function EVENT_ACHIEVEMENT_UPDATED(eventId, id) end

--- @param eventId integer
--- @return void
function EVENT_CLOSE_BANK(eventId) end

--- @param eventId integer
--- @param tutorialIndex luaindex
--- @param anchor AnchorPosition
--- @param offsetX number
--- @param offsetY number
--- @return void
function EVENT_DISPLAY_TUTORIAL_WITH_ANCHOR(eventId, tutorialIndex, anchor, offsetX, offsetY) end

--- @param eventId integer
--- @param accept bool
--- @return void
function EVENT_ANTIQUITY_DIGGING_EXIT_RESPONSE(eventId, accept) end

--- @param eventId integer
--- @return void
function EVENT_PLAYER_ALIVE(eventId) end

--- @param eventId integer
--- @param houseId integer
--- @return void
function EVENT_HOUSING_PRIMARY_RESIDENCE_SET(eventId, houseId) end

--- @param eventId integer
--- @param medalId integer
--- @param name string
--- @param iconFilename string
--- @param value integer
--- @return void
function EVENT_MEDAL_AWARDED(eventId, medalId, name, iconFilename, value) end

--- @param eventId integer
--- @param alertCategory UIAlertCategory
--- @param soundId string
--- @param message string
--- @return void
function EVENT_REQUEST_ALERT(eventId, alertCategory, soundId, message) end

--- @param eventId integer
--- @param result KeepRecallStoneUseResult
--- @return void
function EVENT_RECALL_KEEP_USE_RESULT(eventId, result) end

--- @param eventId integer
--- @param inviteeCharacterName string
--- @param inviteeDisplayName string
--- @return void
function EVENT_DUEL_INVITE_SENT(eventId, inviteeCharacterName, inviteeDisplayName) end

--- @param eventId integer
--- @return void
function EVENT_AGENT_CHAT_FORCED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_HOUSING_PERMISSIONS_SAVE_PENDING(eventId) end

--- @param eventId integer
--- @param response LeaveCampaignQueueResponseType
--- @return void
function EVENT_LEAVE_CAMPAIGN_QUEUE_RESPONSE(eventId, response) end

--- @param eventId integer
--- @return void
function EVENT_DUEL_INVITE_CANCELED(eventId) end

--- @param eventId integer
--- @param guildId integer
--- @return void
function EVENT_GUILD_DESCRIPTION_CHANGED(eventId, guildId) end

--- @param eventId integer
--- @return void
function EVENT_CLOSE_TRADING_HOUSE(eventId) end

--- @param eventId integer
--- @return void
function EVENT_AUTO_MAP_NAVIGATION_TARGET_SET(eventId) end

--- @param eventId integer
--- @param duelResult DuelResult
--- @param wasLocalPlayersResult bool
--- @param opponentCharacterName string
--- @param opponentDisplayName string
--- @param opponentAlliance Alliance
--- @param opponentGender Gender
--- @param opponentClassId integer
--- @param opponentRaceId integer
--- @return void
function EVENT_DUEL_FINISHED(eventId, duelResult, wasLocalPlayersResult, opponentCharacterName, opponentDisplayName, opponentAlliance, opponentGender,
                             opponentClassId, opponentRaceId)
end

--- @param eventId integer
--- @return void
function EVENT_PLAYER_SWIMMING(eventId) end

--- @param eventId integer
--- @return void
function EVENT_STABLE_INTERACT_START(eventId) end

--- @param eventId integer
--- @return void
function EVENT_END_KEEP_GUILD_RELEASE_INTERACTION(eventId) end

--- @param eventId integer
--- @param codAmount integer
--- @return void
function EVENT_MAIL_COD_CHANGED(eventId, codAmount) end

--- @param eventId integer
--- @param optionCount integer
--- @param debugSource integer
--- @return void
function EVENT_CHATTER_BEGIN(eventId, optionCount, debugSource) end

--- @param eventId integer
--- @param endlessDungeonId integer
--- @param flags integer
--- @param completed bool
--- @return void
function EVENT_ENDLESS_DUNGEON_INITIALIZED(eventId, endlessDungeonId, flags, completed) end

--- @param eventId integer
--- @return void
function EVENT_COLLECTION_UPDATED(eventId) end

--- @param eventId integer
--- @param craftSkill TradeskillType
--- @param context CraftingProcessContext
--- @return void
function EVENT_CRAFT_STARTED(eventId, craftSkill, context) end

--- @param eventId integer
--- @return void
function EVENT_ANTIQUITY_DIGGING_BONUS_LOOT_UNEARTHED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_MEMBER_SUBZONE_CHANGED(eventId) end

--- @param eventId integer
--- @param campaignId integer
--- @param emperorCharacterName string
--- @param emperorAlliance Alliance
--- @param abdication bool
--- @param emperorDisplayName string
--- @return void
function EVENT_DEPOSE_EMPEROR_NOTIFICATION(eventId, campaignId, emperorCharacterName, emperorAlliance, abdication, emperorDisplayName) end

--- @param eventId integer
--- @param currentCounter integer
--- @param countDelta integer
--- @return void
function EVENT_RAID_REVIVE_COUNTER_UPDATE(eventId, currentCounter, countDelta) end

--- @param eventId integer
--- @return void
function EVENT_TRIBUTE_INVITE_REMOVED(eventId) end

--- @param eventId integer
--- @param craftingStationFurnitureId id64
--- @return void
function EVENT_CONSOLIDATED_STATION_SETS_UPDATED(eventId, craftingStationFurnitureId) end

--- @param eventId integer
--- @param reductionReason BattlegroundMMRBonusType
--- @return void
function EVENT_BATTLEGROUND_MMR_LOSS_REDUCED(eventId, reductionReason) end

--- @param eventId integer
--- @param collectibleId integer
--- @return void
function EVENT_ENDLESS_DUNGEON_CONFIRM_COMPANION_SUMMONING(eventId, collectibleId) end

--- @param eventId integer
--- @return void
function EVENT_IMPACTFUL_HIT(eventId) end

--- @param eventId integer
--- @param campaignId integer
--- @param keepId integer
--- @param guildName string
--- @return void
function EVENT_GUILD_LOST_KEEP_CAMPAIGN_NOTIFICATION(eventId, campaignId, keepId, guildName) end

--- @param eventId integer
--- @param result RemoveGroupListingReason
--- @return void
function EVENT_GROUP_FINDER_REMOVE_GROUP_LISTING_RESULT(eventId, result) end

--- @param eventId integer
--- @param furnitureId id64
--- @param objectStateIndex integer
--- @param previousObjectStateId integer
--- @param triggeredByFurnitureId id64
--- @param reason HousingSetStateReason
--- @return void
function EVENT_HOUSING_FURNITURE_STATE_CHANGED(eventId, furnitureId, objectStateIndex, previousObjectStateId, triggeredByFurnitureId, reason) end

--- @param eventId integer
--- @param entryName string
--- @param entryType StoreEntryType
--- @param entryQuantity integer
--- @param money integer
--- @param specialCurrencyType1 CurrencyType
--- @param specialCurrencyInfo1 string
--- @param specialCurrencyQuantity1 integer
--- @param specialCurrencyType2 CurrencyType
--- @param specialCurrencyInfo2 string
--- @param specialCurrencyQuantity2 integer
--- @param itemSoundCategory ItemUISoundCategory
--- @return void
function EVENT_BUY_RECEIPT(eventId, entryName, entryType, entryQuantity, money, specialCurrencyType1, specialCurrencyInfo1, specialCurrencyQuantity1,
                           specialCurrencyType2, specialCurrencyInfo2, specialCurrencyQuantity2, itemSoundCategory)
end

--- @param eventId integer
--- @return void
function EVENT_REQUEST_CROWN_GEM_TUTORIAL(eventId) end

--- @param eventId integer
--- @return void
function EVENT_BEGIN_SIEGE_UPGRADE(eventId) end

--- @param eventId integer
--- @param guildId integer
--- @param accountName string
--- @param result GuildProcessApplicationResponse
--- @return void
function EVENT_GUILD_FINDER_PROCESS_APPLICATION_RESPONSE(eventId, guildId, accountName, result) end

--- @param eventId integer
--- @param reason GuildKioskResult
--- @return void
function EVENT_GUILD_KIOSK_ERROR(eventId, reason) end

--- @param eventId integer
--- @param channelType ChannelType
--- @param fromName string
--- @param text string
--- @param isCustomerService bool
--- @param fromDisplayName string
--- @return void
function EVENT_CHAT_MESSAGE_CHANNEL(eventId, channelType, fromName, text, isCustomerService, fromDisplayName) end

--- @param eventId integer
--- @param displayName string
--- @return void
function EVENT_FRIEND_REMOVED(eventId, displayName) end

--- @param eventId integer
--- @return void
function EVENT_TIMED_ACTIVITY_SYSTEM_STATUS_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_HOUSE_TOURS_SEARCH_COOLDOWN_COMPLETE(eventId) end

--- @param eventId integer
--- @param numSlotsRequested integer
--- @param numSlotsFree integer
--- @return void
function EVENT_INVENTORY_IS_FULL(eventId, numSlotsRequested, numSlotsFree) end

--- @param eventId integer
--- @return void
function EVENT_FULLSCREEN_MODE_CHANGED(eventId) end

--- @param eventId integer
--- @param nodeIndex luaindex
--- @return void
function EVENT_FAST_TRAVEL_NETWORK_UPDATED(eventId, nodeIndex) end

--- @param eventId integer
--- @param furnitureId id64
--- @return void
function EVENT_HOUSING_FURNITURE_PATH_NODES_RESTORED(eventId, furnitureId) end

--- @param eventId integer
--- @param targetCharacterName string
--- @param result ResurrectResult
--- @param targetDisplayName string
--- @return void
function EVENT_RESURRECT_RESULT(eventId, targetCharacterName, result, targetDisplayName) end

--- @param eventId integer
--- @param companionId integer
--- @return void
function EVENT_COMPANION_ACTIVATED(eventId, companionId) end

--- @param eventId integer
--- @param result DiggingActiveSkillUseResult
--- @return void
function EVENT_ANTIQUITY_DIGGING_ACTIVE_SKILL_USE_RESULT(eventId, result) end

--- @param eventId integer
--- @return void
function EVENT_RAID_OF_THE_WEEK_TURNOVER(eventId) end

--- @param eventId integer
--- @param groupListingId integer
--- @return void
function EVENT_GROUP_LISTING_INFO_REQUEST_COMPLETE(eventId, groupListingId) end

--- @param eventId integer
--- @param inactivityLengthMs integer
--- @return void
function EVENT_LOCKPICK_BROKE(eventId, inactivityLengthMs) end

--- @param eventId integer
--- @return void
function EVENT_CAMPAIGN_SELECTION_DATA_CHANGED(eventId) end

--- @param eventId integer
--- @param swapLevel integer
--- @return void
function EVENT_WEAPON_SWAP_LOCKED(eventId, swapLevel) end

--- @param eventId integer
--- @return void
function EVENT_GUILD_NAME_AVAILABLE(eventId) end

--- @param eventId integer
--- @param failureReason GroupElectionFailure
--- @param descriptor string
--- @return void
function EVENT_GROUP_ELECTION_FAILED(eventId, failureReason, descriptor) end

--- @param eventId integer
--- @param hidden bool
--- @return void
function EVENT_APP_GUI_HIDDEN_STATE_CHANGED(eventId, hidden) end

--- @param eventId integer
--- @param displayName string
--- @param characterName string
--- @param level integer
--- @return void
function EVENT_FRIEND_CHARACTER_LEVEL_CHANGED(eventId, displayName, characterName, level) end

--- @param eventId integer
--- @param bookTitle string
--- @return void
function EVENT_LORE_BOOK_ALREADY_KNOWN(eventId, bookTitle) end

--- @param eventId integer
--- @param journalIndex luaindex
--- @return void
function EVENT_QUEST_COMPLETE_DIALOG(eventId, journalIndex) end

--- @param eventId integer
--- @param accept bool
--- @return void
function EVENT_SCRYING_EXIT_RESPONSE(eventId, accept) end

--- @param eventId integer
--- @param journalIndex luaindex
--- @param questName string
--- @param conditionText string
--- @param conditionType QuestConditionType
--- @param currConditionVal integer
--- @param newConditionVal integer
--- @param conditionMax integer
--- @param isFailCondition bool
--- @param stepOverrideText string
--- @param isPushed bool
--- @param isComplete bool
--- @param isConditionComplete bool
--- @param isStepHidden bool
--- @param isConditionCompleteStatusChanged bool
--- @param isConditionCompletableBySiblingStatusChanged bool
--- @return void
function EVENT_QUEST_CONDITION_COUNTER_CHANGED(eventId, journalIndex, questName, conditionText, conditionType, currConditionVal, newConditionVal, conditionMax,
                                               isFailCondition, stepOverrideText, isPushed, isComplete, isConditionComplete, isStepHidden,
                                               isConditionCompleteStatusChanged, isConditionCompletableBySiblingStatusChanged)
end

--- @param eventId integer
--- @param isInit bool
--- @return void
function EVENT_COMPANION_SKILLS_FULL_UPDATE(eventId, isInit) end

--- @param eventId integer
--- @param purchaseResult MarketPurchasableResult
--- @param tutorialTrigger TutorialTrigger
--- @param wasGift bool
--- @return void
function EVENT_MARKET_PURCHASE_RESULT(eventId, purchaseResult, tutorialTrigger, wasGift) end

--- @param eventId integer
--- @return void
function EVENT_CANCEL_REQUEST_CONFIRM_USE_ITEM(eventId) end

--- @param eventId integer
--- @param channel ChannelType
--- @param numGuardsKilled integer
--- @param numAttackers integer
--- @param location string
--- @return void
function EVENT_GUILD_KEEP_ATTACK_UPDATE(eventId, channel, numGuardsKilled, numAttackers, location) end

--- @param eventId integer
--- @param pointsBefore integer
--- @param pointsNow integer
--- @param partialPointsBefore integer
--- @param partialPointsNow integer
--- @param skillPointChangeReason SkillPointReason
--- @return void
function EVENT_SKILL_POINTS_CHANGED(eventId, pointsBefore, pointsNow, partialPointsBefore, partialPointsNow, skillPointChangeReason) end

--- @param eventId integer
--- @param settingSystemType SettingSystemType
--- @param settingId integer
--- @return void
function EVENT_INTERFACE_SETTING_CHANGED(eventId, settingSystemType, settingId) end

--- @param eventId integer
--- @param killedPlayerCharacterName string
--- @param killedPlayerDisplayName string
--- @param killedPlayerBattlegroundTeam BattlegroundTeam
--- @param killingPlayerCharacterName string
--- @param killingPlayerDisplayName string
--- @param killingPlayerBattlegroundTeam BattlegroundTeam
--- @param battlegroundKillType BattlegroundKillType
--- @param killingAbilityId integer
--- @return void
function EVENT_BATTLEGROUND_KILL(eventId, killedPlayerCharacterName, killedPlayerDisplayName, killedPlayerBattlegroundTeam, killingPlayerCharacterName,
                                 killingPlayerDisplayName, killingPlayerBattlegroundTeam, battlegroundKillType, killingAbilityId)
end

--- @param eventId integer
--- @param collectibleId integer
--- @param notificationId integer
--- @return void
function EVENT_COLLECTIBLE_NOTIFICATION_NEW(eventId, collectibleId, notificationId) end

--- @param eventId integer
--- @param cost integer
--- @return void
function EVENT_INVENTORY_BUY_BAG_SPACE(eventId, cost) end

--- @param eventId integer
--- @param furnitureId id64
--- @param collectibleId integer
--- @return void
function EVENT_HOUSING_FURNITURE_PLACED(eventId, furnitureId, collectibleId) end

--- @param eventId integer
--- @return void
function EVENT_TRIBUTE_INVITE_ACCEPTED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_JUSTICE_PICKPOCKET_FAILED(eventId) end

--- @param eventId integer
--- @param reason ProgressReason
--- @param level integer
--- @param previousExperience integer
--- @param currentExperience integer
--- @param championPoints integer
--- @return void
function EVENT_EXPERIENCE_GAIN(eventId, reason, level, previousExperience, currentExperience, championPoints) end

--- @param eventId integer
--- @param itemLink string
--- @param itemQuantity integer
--- @param money integer
--- @param itemSoundCategory ItemUISoundCategory
--- @return void
function EVENT_BUYBACK_RECEIPT(eventId, itemLink, itemQuantity, money, itemSoundCategory) end

--- @param eventId integer
--- @param searchId integer
--- @return void
function EVENT_GROUP_FINDER_SEARCH_UPDATED(eventId, searchId) end

--- @param eventId integer
--- @return void
function EVENT_UNLOCKED_HIRELING_CORRESPONDENCE_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_MOUNT_INFO_UPDATED(eventId) end

--- @param eventId integer
--- @param antiquityId integer
--- @return void
function EVENT_ANTIQUITY_LEAD_ACQUIRED(eventId, antiquityId) end

--- @param eventId integer
--- @param unitTag string
--- @param newRole LFGRole
--- @return void
function EVENT_GROUP_MEMBER_ROLE_CHANGED(eventId, unitTag, newRole) end

--- @param eventId integer
--- @param layerIndex luaindex
--- @param activeLayerIndex luaindex
--- @return void
function EVENT_ACTION_LAYER_PUSHED(eventId, layerIndex, activeLayerIndex) end

--- @param eventId integer
--- @return void
function EVENT_ENLIGHTENED_STATE_GAINED(eventId) end

--- @param eventId integer
--- @param leaderboardType TributeLeaderboardType
--- @return void
function EVENT_TRIBUTE_LEADERBOARD_DATA_RECEIVED(eventId, leaderboardType) end

--- @param eventId integer
--- @param oldMode HousingEditorMode
--- @param newMode HousingEditorMode
--- @return void
function EVENT_HOUSING_EDITOR_MODE_CHANGED(eventId, oldMode, newMode) end

--- @param eventId integer
--- @param unitTag string
--- @param status bool
--- @return void
function EVENT_GROUP_SUPPORT_RANGE_UPDATE(eventId, unitTag, status) end

--- @param eventId integer
--- @return void
function EVENT_GAME_CAMERA_ACTIVATED(eventId) end

--- @param eventId integer
--- @param responseMessage string
--- @param success bool
--- @return void
function EVENT_CUSTOMER_SERVICE_FEEDBACK_SUBMITTED(eventId, responseMessage, success) end

--- @param eventId integer
--- @param unitTag string
--- @param unitAttributeVisual UnitAttributeVisual
--- @param statType DerivedStats
--- @param attributeType Attributes
--- @param powerType CombatMechanicFlags
--- @param value number
--- @param maxValue number
--- @param sequenceId integer
--- @return void
function EVENT_UNIT_ATTRIBUTE_VISUAL_ADDED(eventId, unitTag, unitAttributeVisual, statType, attributeType, powerType, value, maxValue, sequenceId) end

--- @param eventId integer
--- @return void
function EVENT_OPEN_HOUSE_STORE(eventId) end

--- @param eventId integer
--- @param error string
--- @param errorCode integer
--- @return void
function EVENT_LUA_ERROR(eventId, error, errorCode) end

--- @param eventId integer
--- @return void
function EVENT_START_KEEP_GUILD_CLAIM_INTERACTION(eventId) end

--- @param eventId integer
--- @param accountName string
--- @param characterName string
--- @return void
function EVENT_HOUSING_OCCUPANT_ARRIVED(eventId, accountName, characterName) end

--- @param eventId integer
--- @param questId integer
--- @return void
function EVENT_QUEST_SHARE_REMOVED(eventId, questId) end

--- @param eventId integer
--- @return void
function EVENT_AGENT_CHAT_TERMINATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_ACHIEVEMENTS_SEARCH_RESULTS_READY(eventId) end

--- @param eventId integer
--- @param particleEffectId integer
--- @return void
function EVENT_GUI_WORLD_PARTICLE_EFFECT_READY(eventId, particleEffectId) end

--- @param eventId integer
--- @param numApplications integer
--- @return void
function EVENT_GUILD_FINDER_PLAYER_APPLICATIONS_CHANGED(eventId, numApplications) end

--- @param eventId integer
--- @param houseId integer
--- @param recommendationCount integer
--- @return void
function EVENT_HOUSE_TOURS_HOUSE_RECOMMENDATION_COUNT_UPDATED(eventId, houseId, recommendationCount) end

--- @param eventId integer
--- @param furnitureId id64
--- @return void
function EVENT_HOUSING_FURNITURE_PATH_DATA_CHANGED(eventId, furnitureId) end

--- @param eventId integer
--- @param patronId integer|nil
--- @return void
function EVENT_TRIBUTE_PATRON_PROGRESSION_DATA_CHANGED(eventId, patronId) end

--- @param eventId integer
--- @param receivedBy string
--- @param itemName string
--- @param quantity integer
--- @param soundCategory ItemUISoundCategory
--- @param lootType LootItemType
--- @param self bool
--- @param isPickpocketLoot bool
--- @param questItemIcon string
--- @param itemId integer
--- @param isStolen bool
--- @return void
function EVENT_LOOT_RECEIVED(eventId, receivedBy, itemName, quantity, soundCategory, lootType, self, isPickpocketLoot, questItemIcon, itemId, isStolen) end

--- @param eventId integer
--- @return void
function EVENT_INTERACT_BUSY(eventId) end

--- @param eventId integer
--- @param trialName string
--- @param score integer
--- @param isWeekly bool
--- @return void
function EVENT_RAID_TRIAL_NEW_BEST_SCORE(eventId, trialName, score, isWeekly) end

--- @param eventId integer
--- @param isOnCooldown bool
--- @return void
function EVENT_HOUSE_TOURS_LISTING_OPERATION_COOLDOWN_STATE_CHANGED(eventId, isOnCooldown) end

--- @param eventId integer
--- @param flowState TributeGameFlowState
--- @return void
function EVENT_TRIBUTE_GAME_FLOW_STATE_CHANGE(eventId, flowState) end

--- @param eventId integer
--- @return void
function EVENT_PLAYER_DEAD(eventId) end

--- @param eventId integer
--- @return void
function EVENT_ZONE_SCORING_CHANGED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_ACTIVE_MOUNT_CHANGED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_LOCKPICK_BREAK_PREVENTED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GUILD_BANK_DESELECTED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_ACTION_SLOT_EFFECTS_CLEARED(eventId) end

--- @param eventId integer
--- @param responseCode RetraitResponse
--- @return void
function EVENT_RETRAIT_RESPONSE(eventId, responseCode) end

--- @param eventId integer
--- @param companionId integer
--- @param previousRapport integer
--- @param currentRapport integer
--- @param adjustmentAmountType CompanionRapportAdjustmentAmount
--- @return void
function EVENT_COMPANION_RAPPORT_UPDATE(eventId, companionId, previousRapport, currentRapport, adjustmentAmountType) end

--- @param eventId integer
--- @param didActiveHotbarChange bool
--- @param shouldUpdateAbilityAssignments bool
--- @param activeHotbarCategory HotBarCategory
--- @return void
function EVENT_ACTION_SLOTS_ACTIVE_HOTBAR_UPDATED(eventId, didActiveHotbarChange, shouldUpdateAbilityAssignments, activeHotbarCategory) end

--- @param eventId integer
--- @param errorId integer
--- @return void
function EVENT_REQUIREMENTS_FAIL(eventId, errorId) end

--- @param eventId integer
--- @param itemCombinationResult ItemCombinationResult
--- @return void
function EVENT_ITEM_COMBINATION_RESULT(eventId, itemCombinationResult) end

--- @param eventId integer
--- @param campaignId integer
--- @param keepId integer
--- @param guildName string
--- @param playerName string
--- @return void
function EVENT_GUILD_RELEASE_KEEP_CAMPAIGN_NOTIFICATION(eventId, campaignId, keepId, guildName, playerName) end

--- @param eventId integer
--- @return void
function EVENT_ACTIVE_QUEST_TOOL_CLEARED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_SIEGE_FIRE_FAILED_RETARGETING(eventId) end

--- @param eventId integer
--- @param isPreviewInspectionEnabled bool
--- @return void
function EVENT_HOUSING_PREVIEW_INSPECTION_STATE_CHANGED(eventId, isPreviewInspectionEnabled) end

--- @param eventId integer
--- @return void
function EVENT_ZONE_STORY_ACTIVITY_UNTRACKED(eventId) end

--- @param eventId integer
--- @param hasFocus bool
--- @return void
function EVENT_GAME_FOCUS_CHANGED(eventId, hasFocus) end

--- @param eventId integer
--- @return void
function EVENT_JUSTICE_STOLEN_ITEMS_REMOVED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_TRADE_INVITE_CANCELED(eventId) end

--- @param eventId integer
--- @param system UISystem
--- @param param1 integer
--- @return void
function EVENT_OPEN_UI_SYSTEM(eventId, system, param1) end

--- @param eventId integer
--- @param name string
--- @param points integer
--- @param id integer
--- @param link string
--- @return void
function EVENT_ACHIEVEMENT_AWARDED(eventId, name, points, id, link) end

--- @param eventId integer
--- @param guildId integer
--- @return void
function EVENT_GUILD_INFO_REQUEST_COMPLETE(eventId, guildId) end

--- @param eventId integer
--- @return void
function EVENT_TRADE_INVITE_DECLINED(eventId) end

--- @param eventId integer
--- @param reason MountFailureReason
--- @param arg1 integer
--- @return void
function EVENT_MOUNT_FAILURE(eventId, reason, arg1) end

--- @param eventId integer
--- @param isInWarningArea bool
--- @return void
function EVENT_DUEL_NEAR_BOUNDARY(eventId, isInWarningArea) end

--- @param eventId integer
--- @param currentXP integer
--- @param deltaXP integer
--- @return void
function EVENT_TRIBUTE_CLUB_EXPERIENCE_GAINED(eventId, currentXP, deltaXP) end

--- @param eventId integer
--- @return void
function EVENT_NO_INTERACT_TARGET(eventId) end

--- @param eventId integer
--- @return void
function EVENT_RAID_OF_THE_WEEK_INFO_RECEIVED(eventId) end

--- @param eventId integer
--- @param werewolf bool
--- @return void
function EVENT_WEREWOLF_STATE_CHANGED(eventId, werewolf) end

--- @param eventId integer
--- @param furnitureId id64
--- @param startingPathIndex luaindex
--- @return void
function EVENT_HOUSING_FURNITURE_PATH_STARTING_NODE_INDEX_CHANGED(eventId, furnitureId, startingPathIndex) end

--- @param eventId integer
--- @param guildId integer
--- @param rankIndex luaindex
--- @param guildRankChangeAction GuildRankChangeAction
--- @return void
function EVENT_GUILD_PLAYER_RANK_CHANGED(eventId, guildId, rankIndex, guildRankChangeAction) end

--- @param eventId integer
--- @return void
function EVENT_NEW_MOVEMENT_IN_UI_MODE(eventId) end

--- @param eventId integer
--- @param duration integer
--- @param coarseMotor number
--- @param fineMotor number
--- @param leftTriggerMotor number
--- @param rightTriggerMotor number
--- @param debugSourceInfo string
--- @return void
function EVENT_VIBRATION(eventId, duration, coarseMotor, fineMotor, leftTriggerMotor, rightTriggerMotor, debugSourceInfo) end

--- @param eventId integer
--- @return void
function EVENT_UNLOCKED_HIRELING_CORRESPONDENCE_INITIALIZED(eventId) end

--- @param eventId integer
--- @param accept bool
--- @return void
function EVENT_TRIBUTE_EXIT_RESPONSE(eventId, accept) end

--- @param eventId integer
--- @return void
function EVENT_CANCEL_GROUND_TARGET_MODE(eventId) end

--- @param eventId integer
--- @param largeGroup bool
--- @return void
function EVENT_GROUP_TYPE_CHANGED(eventId, largeGroup) end

--- @param eventId integer
--- @return void
function EVENT_ACCEPT_SHARED_QUEST_RESPONSE(eventId) end

--- @param eventId integer
--- @return void
function EVENT_FORCE_DISABLED_ADDONS_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_CANCEL_MOUSE_REQUEST_DESTROY_ITEM(eventId) end

--- @param eventId integer
--- @param reason GuildBankResult
--- @return void
function EVENT_GUILD_BANK_OPEN_ERROR(eventId, reason) end

--- @param eventId integer
--- @return void
function EVENT_TUTORIALS_RESET(eventId) end

--- @param eventId integer
--- @return void
function EVENT_DUEL_INVITE_DECLINED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_FORWARD_CAMPS_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_FINDER_MAX_SEARCHABLE(eventId) end

--- @param eventId integer
--- @param failure PlayerEmotePlayFailure
--- @return void
function EVENT_PLAYER_EMOTE_FAILED_PLAY(eventId, failure) end

--- @param eventId integer
--- @param journalIndex luaindex
--- @return void
function EVENT_QUEST_SHOW_JOURNAL_ENTRY(eventId, journalIndex) end

--- @param eventId integer
--- @param result HousingEditorCommandResult
--- @return void
function EVENT_HOUSING_EDITOR_COMMAND_RESULT(eventId, result) end

--- @param eventId integer
--- @param areaName string
--- @param level integer
--- @param previousExperience integer
--- @param currentExperience integer
--- @param championPoints integer
--- @return void
function EVENT_DISCOVERY_EXPERIENCE(eventId, areaName, level, previousExperience, currentExperience, championPoints) end

--- @param eventId integer
--- @param questId integer
--- @return void
function EVENT_QUEST_SHARED(eventId, questId) end

--- @param eventId integer
--- @param result HouseTourSaveRecommendationResult
--- @return void
function EVENT_HOUSE_TOURS_SAVE_RECOMMENDATION_OPERATION_COMPLETE(eventId, result) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_INVITE_REMOVED(eventId) end

--- @param eventId integer
--- @param campaignId integer
--- @param isGroup bool
--- @param state CampaignQueueRequestStateType
--- @return void
function EVENT_CAMPAIGN_QUEUE_STATE_CHANGED(eventId, campaignId, isGroup, state) end

--- @param eventId integer
--- @return void
function EVENT_AGENT_CHAT_DECLINED(eventId) end

--- @param eventId integer
--- @param skillType SkillType
--- @param skillLineIndex luaindex
--- @param advised bool
--- @return void
function EVENT_SKILL_LINE_ADDED(eventId, skillType, skillLineIndex, advised) end

--- @param eventId integer
--- @return void
function EVENT_INPUT_LANGUAGE_CHANGED(eventId) end

--- @param eventId integer
--- @param notificationId integer
--- @return void
function EVENT_LEADERBOARD_SCORE_NOTIFICATION_ADDED(eventId, notificationId) end

--- @param eventId integer
--- @param id integer
--- @param numResults integer
--- @param backgroundDurationMS integer
--- @return void
function EVENT_MATCH_TRADING_HOUSE_ITEM_NAMES_COMPLETE(eventId, id, numResults, backgroundDurationMS) end

--- @param eventId integer
--- @param journalIndex luaindex
--- @param questName string
--- @param objectiveName string
--- @return void
function EVENT_QUEST_ADDED(eventId, journalIndex, questName, objectiveName) end

--- @param eventId integer
--- @param playerName string
--- @return void
function EVENT_MAIL_SEND_SUCCESS(eventId, playerName) end

--- @param eventId integer
--- @return void
function EVENT_CURRENCY_CAPS_CHANGED(eventId) end

--- @param eventId integer
--- @param settingSystemType SettingSystemType
--- @param settingId integer
--- @param success bool
--- @param result integer
--- @return void
function EVENT_DEFERRED_SETTING_REQUEST_COMPLETED(eventId, settingSystemType, settingId, success, result) end

--- @param eventId integer
--- @param objectiveKeepId integer
--- @param objectiveObjectiveId integer
--- @param battlegroundContext integer
--- @param objectiveName string
--- @param objectiveControlEvent ObjectiveControlEvent
--- @param objectiveControlState ObjectiveControlState
--- @param owningAlliance Alliance
--- @param pinType MapDisplayPinType
--- @return void
function EVENT_CAPTURE_AREA_STATE_CHANGED(eventId, objectiveKeepId, objectiveObjectiveId, battlegroundContext, objectiveName, objectiveControlEvent,
                                          objectiveControlState, owningAlliance, pinType)
end

--- @param eventId integer
--- @param who TradeParticipant
--- @param money integer
--- @return void
function EVENT_TRADE_MONEY_CHANGED(eventId, who, money) end

--- @param eventId integer
--- @return void
function EVENT_HOUSING_EDITOR_LINK_TARGET_CHANGED(eventId) end

--- @param eventId integer
--- @param ridingSkillType RidingTrainType
--- @param previous integer
--- @param current integer
--- @param source RidingTrainSource
--- @return void
function EVENT_RIDING_SKILL_IMPROVEMENT(eventId, ridingSkillType, previous, current, source) end

--- @param eventId integer
--- @param recipeListIndex luaindex
--- @param recipeIndex luaindex
--- @return void
function EVENT_RECIPE_LEARNED(eventId, recipeListIndex, recipeIndex) end

--- @param eventId integer
--- @return void
function EVENT_HOUSING_PATH_NODE_SELECTION_CHANGED(eventId) end

--- @param eventId integer
--- @param alertText string
--- @param soundId string
--- @return void
function EVENT_DISPLAY_ALERT(eventId, alertText, soundId) end

--- @param eventId integer
--- @param inviterCharacterName string
--- @param inviterDisplayName string
--- @param timeRemainingMS integer
--- @return void
function EVENT_DUEL_INVITE_RECEIVED(eventId, inviterCharacterName, inviterDisplayName, timeRemainingMS) end

--- @param eventId integer
--- @param zoneName string
--- @param zoneDescription string
--- @param loadingTexture string
--- @param zoneDisplayType ZoneDisplayType
--- @return void
function EVENT_PREPARE_FOR_JUMP(eventId, zoneName, zoneDescription, loadingTexture, zoneDisplayType) end

--- @param eventId integer
--- @return void
function EVENT_RAID_LEADERBOARD_PLAYER_DATA_CHANGED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_END_KEEP_GUILD_CLAIM_INTERACTION(eventId) end

--- @param eventId integer
--- @param wasChampionSystemUnlocked bool
--- @return void
function EVENT_CHAMPION_LEVEL_ACHIEVED(eventId, wasChampionSystemUnlocked) end

--- @param eventId integer
--- @param guildId integer
--- @param level integer
--- @return void
function EVENT_GUILD_LEVEL_CHANGED(eventId, guildId, level) end

--- @param eventId integer
--- @param responseType TradingHouseResult
--- @return void
function EVENT_TRADING_HOUSE_OPERATION_TIME_OUT(eventId, responseType) end

--- @param eventId integer
--- @param zoneIndex luaindex
--- @param poiIndex luaindex
--- @return void
function EVENT_POI_UPDATED(eventId, zoneIndex, poiIndex) end

--- @param eventId integer
--- @param craftedAbilityDefId integer
--- @param totalNumReset integer
--- @param isLastReset bool
--- @return void
function EVENT_CRAFTED_ABILITY_RESET(eventId, craftedAbilityDefId, totalNumReset, isLastReset) end

--- @param eventId integer
--- @param guildId integer
--- @param accountName string
--- @param result GuildBlacklistResponse
--- @return void
function EVENT_GUILD_FINDER_BLACKLIST_RESPONSE(eventId, guildId, accountName, result) end

--- @param eventId integer
--- @return void
function EVENT_ITEM_PREVIEW_READY(eventId) end

--- @param eventId integer
--- @param inviterCharacterName string
--- @param inviterDisplayName string
--- @return void
function EVENT_GROUP_INVITE_RECEIVED(eventId, inviterCharacterName, inviterDisplayName) end

--- @param eventId integer
--- @param mousedOverSkill DiggingActiveSkills
--- @return void
function EVENT_ANTIQUITY_DIGGING_MOUSE_OVER_ACTIVE_SKILL_CHANGED(eventId, mousedOverSkill) end

--- @param eventId integer
--- @param result RespecResult
--- @return void
function EVENT_SKILL_RESPEC_RESULT(eventId, result) end

--- @param eventId integer
--- @return void
function EVENT_STUCK_BEGIN(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GUILD_KIOSK_CONSIDER_BID_START(eventId) end

--- @param eventId integer
--- @param campaignKey id64
--- @param success bool
--- @param isActive bool
--- @return void
function EVENT_TRIBUTE_PLAYER_CAMPAIGN_INIT(eventId, campaignKey, success, isActive) end

--- @param eventId integer
--- @param worldEventInstanceId integer
--- @param oldWorldEventLocationId integer
--- @param newWorldEventLocationId integer
--- @return void
function EVENT_WORLD_EVENT_ACTIVE_LOCATION_CHANGED(eventId, worldEventInstanceId, oldWorldEventLocationId, newWorldEventLocationId) end

--- @param eventId integer
--- @param startTimeMS integer
--- @return void
function EVENT_DUEL_COUNTDOWN(eventId, startTimeMS) end

--- @param eventId integer
--- @param keepId integer
--- @param open bool
--- @return void
function EVENT_KEEP_GATE_STATE_CHANGED(eventId, keepId, open) end

--- @param eventId integer
--- @param reason StoreFailure
--- @param errorStringId integer
--- @return void
function EVENT_STORE_FAILURE(eventId, reason, errorStringId) end

--- @param eventId integer
--- @return void
function EVENT_FORWARD_TRANSCRIPT_TO_TEXT_CHAT_ACCESSIBILITY_SETTING_CHANGED(eventId) end

--- @param eventId integer
--- @param guildId integer
--- @return void
function EVENT_GUILD_FINDER_GUILD_APPLICATIONS_VIEWED(eventId, guildId) end

--- @param eventId integer
--- @return void
function EVENT_HIDE_BOOK(eventId) end

--- @param eventId integer
--- @param weaponConfigType WeaponConfigType
--- @return void
function EVENT_ACTION_SLOT_ABILITY_USED_WRONG_WEAPON(eventId, weaponConfigType) end

--- @param eventId integer
--- @param trialName string
--- @param isWeekly bool
--- @return void
function EVENT_RAID_TRIAL_RESET_BEST_SCORE(eventId, trialName, isWeekly) end

--- @param eventId integer
--- @return void
function EVENT_CONVERSATION_FAILED_INVENTORY_FULL(eventId) end

--- @param eventId integer
--- @param messageOrigin SceneManagerMessageOrigin
--- @param requestType RemoteSceneRequestType
--- @param sceneName string
--- @return void
function EVENT_REMOTE_SCENE_REQUEST(eventId, messageOrigin, requestType, sceneName) end

--- @param eventId integer
--- @param reason TradeActionResult
--- @return void
function EVENT_TRADE_FAILED(eventId, reason) end

--- @param eventId integer
--- @param skillLineId integer
--- @param rank luaindex
--- @return void
function EVENT_COMPANION_SKILL_RANK_UPDATE(eventId, skillLineId, rank) end

--- @param eventId integer
--- @param goldAmount integer
--- @return void
function EVENT_JUSTICE_GOLD_REMOVED(eventId, goldAmount) end

--- @param eventId integer
--- @param progressionLevel integer
--- @return void
function EVENT_CADWELL_PROGRESSION_LEVEL_CHANGED(eventId, progressionLevel) end

--- @param eventId integer
--- @param userGroup HousePermissionUserGroup
--- @return void
function EVENT_HOUSING_PERMISSIONS_CHANGED(eventId, userGroup) end

--- @param eventId integer
--- @return void
function EVENT_INVENTORY_ITEMS_AUTO_TRANSFERRED_TO_CRAFT_BAG(eventId) end

--- @param eventId integer
--- @return void
function EVENT_LOW_FALL_DAMAGE(eventId) end

--- @param eventId integer
--- @param buffType EndlessDungeonBuffType
--- @param abilityId integer
--- @param stackCount integer
--- @return void
function EVENT_ENDLESS_DUNGEON_BUFF_STACK_COUNT_UPDATED(eventId, buffType, abilityId, stackCount) end

--- @param eventId integer
--- @param enabled bool
--- @return void
function EVENT_SECURE_3D_RENDER_MODE_CHANGED(eventId, enabled) end

--- @param eventId integer
--- @param forceReset bool
--- @return void
function EVENT_BOSSES_CHANGED(eventId, forceReset) end

--- @param eventId integer
--- @return void
function EVENT_HIGH_FALL_DAMAGE(eventId) end

--- @param eventId integer
--- @param inviteeCharacterName string
--- @param inviteeDisplayName string
--- @return void
function EVENT_TRIBUTE_INVITE_SENT(eventId, inviteeCharacterName, inviteeDisplayName) end

--- @param eventId integer
--- @return void
function EVENT_SHOW_WORLD_MAP(eventId) end

--- @param eventId integer
--- @param campaignId integer
--- @param isGroup bool
--- @return void
function EVENT_CAMPAIGN_QUEUE_LEFT(eventId, campaignId, isGroup) end

--- @param eventId integer
--- @param currentScore integer
--- @param reason EndlessDungeonPointReason
--- @return void
function EVENT_ENDLESS_DUNGEON_SCORE_UPDATED(eventId, currentScore, reason) end

--- @param eventId integer
--- @param result GroupFinderActionResult
--- @return void
function EVENT_GROUP_FINDER_UPDATE_GROUP_LISTING_RESULT(eventId, result) end

--- @param eventId integer
--- @return void
function EVENT_ANTIQUITY_SEARCH_RESULTS_READY(eventId) end

--- @param eventId integer
--- @param guildId integer
--- @return void
function EVENT_GUILD_INVITE_REMOVED(eventId, guildId) end

--- @param eventId integer
--- @param numberOfSlots integer
--- @return void
function EVENT_INVENTORY_BOUGHT_BANK_SPACE(eventId, numberOfSlots) end

--- @param eventId integer
--- @return void
function EVENT_MAIL_CLOSE_MAILBOX(eventId) end

--- @param eventId integer
--- @return void
function EVENT_VISUAL_LAYER_CHANGED(eventId) end

--- @param eventId integer
--- @param itemSetId integer
--- @param slotsJustUnlockedMask id64
--- @return void
function EVENT_ITEM_SET_COLLECTION_UPDATED(eventId, itemSetId, slotsJustUnlockedMask) end

--- @param eventId integer
--- @return void
function EVENT_RETRAIT_STATION_INTERACT_START(eventId) end

--- @param eventId integer
--- @param skillLineId integer
--- @param reason integer
--- @param rank luaindex
--- @param previousXP integer
--- @param currentXP integer
--- @return void
function EVENT_COMPANION_SKILL_XP_UPDATE(eventId, skillLineId, reason, rank, previousXP, currentXP) end

--- @param eventId integer
--- @param actionSlotIndex luaindex
--- @return void
function EVENT_ACTION_SLOT_STATE_UPDATED(eventId, actionSlotIndex) end

--- @param eventId integer
--- @param displayGroup MarketDisplayGroup
--- @return void
function EVENT_MARKET_PRODUCT_AVAILABILITY_UPDATED(eventId, displayGroup) end

--- @param eventId integer
--- @return void
function EVENT_BEGIN_CUTSCENE(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GROUPING_TOOLS_FIND_REPLACEMENT_NOTIFICATION_REMOVED(eventId) end

--- @param eventId integer
--- @param newAssignedCampaignId integer
--- @return void
function EVENT_ASSIGNED_CAMPAIGN_CHANGED(eventId, newAssignedCampaignId) end

--- @param eventId integer
--- @param craftSkill TradeskillType
--- @param craftMode CraftingInteractionMode
--- @return void
function EVENT_END_CRAFTING_STATION_INTERACT(eventId, craftSkill, craftMode) end

--- @param eventId integer
--- @param guildId integer
--- @param displayName string
--- @param rankIndex luaindex
--- @return void
function EVENT_GUILD_MEMBER_RANK_CHANGED(eventId, guildId, displayName, rankIndex) end

--- @param eventId integer
--- @return void
function EVENT_GUILD_INVITES_INITIALIZED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GUILD_FINDER_BLACKLIST_RESULTS(eventId) end

--- @param eventId integer
--- @param allocationMode AttributePointAllocationMode
--- @param paymentType RespecPaymentType
--- @return void
function EVENT_START_ATTRIBUTE_RESPEC(eventId, allocationMode, paymentType) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_FINDER_REFRESH_SEARCH(eventId) end

--- @param eventId integer
--- @param bagId Bag
--- @return void
function EVENT_STACKED_ALL_ITEMS_IN_BAG(eventId, bagId) end

--- @param eventId integer
--- @param displayName string
--- @return void
function EVENT_INCOMING_FRIEND_INVITE_ADDED(eventId, displayName) end

--- @param eventId integer
--- @return void
function EVENT_CHATTER_END(eventId) end

--- @param eventId integer
--- @return void
function EVENT_ACHIEVEMENTS_UPDATED(eventId) end

--- @param eventId integer
--- @param trialName string
--- @param score integer
--- @param totalTime integer
--- @return void
function EVENT_RAID_TRIAL_COMPLETE(eventId, trialName, score, totalTime) end

--- @param eventId integer
--- @param isVeteranDifficulty bool
--- @return void
function EVENT_GROUP_VETERAN_DIFFICULTY_CHANGED(eventId, isVeteranDifficulty) end

--- @param eventId integer
--- @param eventTicketAmount integer
--- @param difference integer
--- @param reason CurrencyChangeReason
--- @return void
function EVENT_EVENT_TICKET_UPDATE(eventId, eventTicketAmount, difference, reason) end

--- @param eventId integer
--- @param messageOrigin SceneManagerMessageOrigin
--- @param requestType RemoteSceneRequestType
--- @return void
function EVENT_REMOTE_TOP_LEVEL_CHANGE(eventId, messageOrigin, requestType) end

--- @param eventId integer
--- @param numUnread integer
--- @return void
function EVENT_MAIL_NUM_UNREAD_CHANGED(eventId, numUnread) end

--- @param eventId integer
--- @param trackedCampaignKey id64
--- @param trackedActivityIndex luaindex
--- @return void
function EVENT_PROMOTIONAL_EVENTS_ACTIVITY_TRACKING_UPDATED(eventId, trackedCampaignKey, trackedActivityIndex) end

--- @param eventId integer
--- @param siegeName string
--- @return void
function EVENT_SIEGE_BUSY(eventId, siegeName) end

--- @param eventId integer
--- @param journalIndex luaindex
--- @param questName string
--- @param countDelta integer
--- @param iconFilename string
--- @param questItemId integer
--- @param name string
--- @return void
function EVENT_QUEST_TOOL_UPDATED(eventId, journalIndex, questName, countDelta, iconFilename, questItemId, name) end

--- @param eventId integer
--- @return void
function EVENT_TRIBUTE_INVITE_CANCELED(eventId) end

--- @param eventId integer
--- @param responseType TradingHouseResult
--- @return void
function EVENT_TRADING_HOUSE_RESPONSE_TIMEOUT(eventId, responseType) end

--- @param eventId integer
--- @return void
function EVENT_DUEL_INVITE_ACCEPTED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GUILD_DATA_LOADED(eventId) end

--- @param eventId integer
--- @param actionSlotIndex luaindex
--- @return void
function EVENT_ACTIVE_QUICKSLOT_CHANGED(eventId, actionSlotIndex) end

--- @param eventId integer
--- @param crownAmount integer
--- @param difference integer
--- @param reason CurrencyChangeReason
--- @return void
function EVENT_CROWN_UPDATE(eventId, crownAmount, difference, reason) end

--- @param eventId integer
--- @param displayName string
--- @return void
function EVENT_INCOMING_FRIEND_INVITE_REMOVED(eventId, displayName) end

--- @param eventId integer
--- @return void
function EVENT_ZONE_CHANNEL_CHANGED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_STUCK_ERROR_ON_COOLDOWN(eventId) end

--- @param eventId integer
--- @param questName string
--- @param level integer
--- @param previousExperience integer
--- @param currentExperience integer
--- @param championPoints integer
--- @param questType QuestType
--- @param zoneDisplayType ZoneDisplayType
--- @return void
function EVENT_QUEST_COMPLETE(eventId, questName, level, previousExperience, currentExperience, championPoints, questType, zoneDisplayType) end

--- @param eventId integer
--- @param who TradeParticipant
--- @param tradeIndex luaindex
--- @return void
function EVENT_TRADE_ITEM_UPDATED(eventId, who, tradeIndex) end

--- @param eventId integer
--- @return void
function EVENT_ACTION_UPDATE_COOLDOWNS(eventId) end

--- @param eventId integer
--- @return void
function EVENT_ANTIQUITY_TRACKING_INITIALIZED(eventId) end

--- @param eventId integer
--- @param addonName string
--- @return void
function EVENT_ADD_ON_LOADED(eventId, addonName) end

--- @param eventId integer
--- @param campaignId integer
--- @param wasLockedToAlliance Alliance
--- @return void
function EVENT_CAMPAIGN_ALLIANCE_LOCK_ACTIVATED(eventId, campaignId, wasLockedToAlliance) end

--- @param eventId integer
--- @param pinType MapDisplayPinType
--- @param param1 integer
--- @param param2 integer
--- @param param3 integer
--- @param playerIsInside bool
--- @return void
function EVENT_PLAYER_IN_PIN_AREA_CHANGED(eventId, pinType, param1, param2, param3, playerIsInside) end

--- @param eventId integer
--- @return void
function EVENT_UNLOCKED_DYES_UPDATED(eventId) end

--- @param eventId integer
--- @param nonCombatBonus NonCombatBonusType
--- @param oldValue integer
--- @param newValue integer
--- @return void
function EVENT_NON_COMBAT_BONUS_CHANGED(eventId, nonCombatBonus, oldValue, newValue) end

--- @param eventId integer
--- @param tutorialIndex luaindex
--- @return void
function EVENT_DISPLAY_TUTORIAL(eventId, tutorialIndex) end

--- @param eventId integer
--- @param oldDisplayName string
--- @param newDisplayName string
--- @return void
function EVENT_FRIEND_DISPLAY_NAME_CHANGED(eventId, oldDisplayName, newDisplayName) end

--- @param eventId integer
--- @param unitTag string
--- @param isDifficult bool
--- @return void
function EVENT_VETERAN_DIFFICULTY_CHANGED(eventId, unitTag, isDifficult) end

--- @param eventId integer
--- @param bagId Bag
--- @param slotIndex integer
--- @return void
function EVENT_INVENTORY_SLOT_UNLOCKED(eventId, bagId, slotIndex) end

--- @param eventId integer
--- @param itemStyleId integer
--- @param chapterIndex integer
--- @param isDefaultRacialStyle bool
--- @return void
function EVENT_STYLE_LEARNED(eventId, itemStyleId, chapterIndex, isDefaultRacialStyle) end

--- @param eventId integer
--- @param result ScryingActiveSkillUseResult
--- @return void
function EVENT_SCRYING_ACTIVE_SKILL_USE_RESULT(eventId, result) end

--- @param eventId integer
--- @param trialName string
--- @param score integer
--- @return void
function EVENT_RAID_TRIAL_FAILED(eventId, trialName, score) end

--- @param eventId integer
--- @param zoneIndex luaindex
--- @param poiIndex luaindex
--- @param level integer
--- @param previousExperience integer
--- @param currentExperience integer
--- @param championPoints integer
--- @return void
function EVENT_OBJECTIVE_COMPLETED(eventId, zoneIndex, poiIndex, level, previousExperience, currentExperience, championPoints) end

--- @param eventId integer
--- @return void
function EVENT_GIFTING_GRACE_PERIOD_STARTED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_RAID_TIMER_STATE_UPDATE(eventId) end

--- @param eventId integer
--- @param guildId integer
--- @return void
function EVENT_GUILD_KEEP_CLAIM_UPDATED(eventId, guildId) end

--- @param eventId integer
--- @return void
function EVENT_QUEST_LOG_IS_FULL(eventId) end

--- @param eventId integer
--- @return void
function EVENT_ESO_PLUS_FREE_TRIAL_NOTIFICATION_CLEARED(eventId) end

--- @param eventId integer
--- @param guildId integer
--- @param displayName string
--- @param characterName string
--- @param zone string
--- @return void
function EVENT_GUILD_MEMBER_CHARACTER_ZONE_CHANGED(eventId, guildId, displayName, characterName, zone) end

--- @param eventId integer
--- @param playerName string
--- @param newRankIndex integer
--- @param guildId integer
--- @return void
function EVENT_GUILD_MEMBER_DEMOTE_SUCCESSFUL(eventId, playerName, newRankIndex, guildId) end

--- @param eventId integer
--- @param crownCratesSystemState LootCratesSystemState
--- @return void
function EVENT_CROWN_CRATES_SYSTEM_STATE_CHANGED(eventId, crownCratesSystemState) end

--- @param eventId integer
--- @param itemName string
--- @param itemQuantity integer
--- @param money integer
--- @return void
function EVENT_SELL_RECEIPT(eventId, itemName, itemQuantity, money) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_ELECTION_PROGRESS_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_START_KEEP_GUILD_RELEASE_INTERACTION(eventId) end

--- @param eventId integer
--- @param guildId integer
--- @return void
function EVENT_GUILD_RANKS_CHANGED(eventId, guildId) end

--- @param eventId integer
--- @param notificationId integer
--- @return void
function EVENT_LEADERBOARD_SCORE_NOTIFICATION_REMOVED(eventId, notificationId) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_FINDER_GROUP_LISTING_ATTAINED_ROLES_CHANGED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_DUEL_INVITE_REMOVED(eventId) end

--- @param eventId integer
--- @param mostRecentGamepadType GamepadType
--- @return void
function EVENT_MOST_RECENT_GAMEPAD_TYPE_CHANGED(eventId, mostRecentGamepadType) end

--- @param eventId integer
--- @return void
function EVENT_ANTIQUITY_DIGGING_READY_TO_PLAY(eventId) end

--- @param eventId integer
--- @param actionSlotIndex luaindex
--- @param hotbarCategory HotBarCategory
--- @param justUnlocked bool
--- @return void
function EVENT_HOTBAR_SLOT_UPDATED(eventId, actionSlotIndex, hotbarCategory, justUnlocked) end

--- @param eventId integer
--- @param response SetOutfitNameResult
--- @param actorCategory GameplayActorCategory
--- @param outfitIndex luaindex
--- @return void
function EVENT_OUTFIT_RENAME_RESPONSE(eventId, response, actorCategory, outfitIndex) end

--- @param eventId integer
--- @return void
function EVENT_BATTLEGROUND_RULESET_CHANGED(eventId) end

--- @param eventId integer
--- @param alliancePoints integer
--- @param playSound bool
--- @param difference integer
--- @param reason CurrencyChangeReason
--- @param reasonSupplementaryInfo integer
--- @return void
function EVENT_ALLIANCE_POINT_UPDATE(eventId, alliancePoints, playSound, difference, reason, reasonSupplementaryInfo) end

--- @param eventId integer
--- @param result CollectibleUsageBlockReason
--- @param isAttemptingActivation bool
--- @return void
function EVENT_COLLECTIBLE_USE_RESULT(eventId, result, isAttemptingActivation) end

--- @param eventId integer
--- @param guiName string
--- @param assetsLoaded integer
--- @param assetsTotal integer
--- @return void
function EVENT_UPDATE_GUI_LOADING_PROGRESS(eventId, guiName, assetsLoaded, assetsTotal) end

--- @param eventId integer
--- @param result ActionResult
--- @param isError bool
--- @param abilityName string
--- @param abilityGraphic integer
--- @param abilityActionSlotType ActionSlotType
--- @param sourceName string
--- @param sourceType CombatUnitType
--- @param targetName string
--- @param targetType CombatUnitType
--- @param hitValue integer
--- @param powerType CombatMechanicFlags
--- @param damageType DamageType
--- @param log bool
--- @param sourceUnitId integer
--- @param targetUnitId integer
--- @param abilityId integer
--- @param overflow integer
--- @return void
function EVENT_COMBAT_EVENT(eventId, result, isError, abilityName, abilityGraphic, abilityActionSlotType, sourceName, sourceType, targetName, targetType,
                            hitValue, powerType, damageType, log, sourceUnitId, targetUnitId, abilityId, overflow)
end

--- @param eventId integer
--- @param killedCharacterName string
--- @param killedDisplayName string
--- @return void
function EVENT_REVENGE_KILL(eventId, killedCharacterName, killedDisplayName) end

--- @param eventId integer
--- @param responseMessage string
--- @param success bool
--- @return void
function EVENT_CUSTOMER_SERVICE_TICKET_SUBMITTED(eventId, responseMessage, success) end

--- @param eventId integer
--- @return void
function EVENT_RECONSTRUCT_STARTED(eventId) end

--- @param eventId integer
--- @param stringId integer
--- @return void
function EVENT_UI_ERROR(eventId, stringId) end

--- @param eventId integer
--- @param isActivelyEngaged bool
--- @return void
function EVENT_PLAYER_ACTIVELY_ENGAGED_STATE(eventId, isActivelyEngaged) end

--- @param eventId integer
--- @return void
function EVENT_DISABLED_ACTIVITIES_UPDATE(eventId) end

--- @param eventId integer
--- @return void
function EVENT_LORE_LIBRARY_INITIALIZED(eventId) end

--- @param eventId integer
--- @param button MouseButtonIndex
--- @param ctrl bool
--- @param alt bool
--- @param shift bool
--- @param command bool
--- @return void
function EVENT_GLOBAL_MOUSE_UP(eventId, button, ctrl, alt, shift, command) end

--- @param eventId integer
--- @param notificationId integer
--- @param collectibleId integer
--- @return void
function EVENT_COLLECTIBLE_NOTIFICATION_REMOVED(eventId, notificationId, collectibleId) end

--- @param eventId integer
--- @return void
function EVENT_ENLIGHTENED_STATE_LOST(eventId) end

--- @param eventId integer
--- @param gameOverFlags DiggingGameOverFlags
--- @return void
function EVENT_ANTIQUITY_DIGGING_GAME_OVER(eventId, gameOverFlags) end

--- @param eventId integer
--- @param artificialEffectId integer
--- @return void
function EVENT_ARTIFICIAL_EFFECT_REMOVED(eventId, artificialEffectId) end

--- @param eventId integer
--- @return void
function EVENT_ARMORY_BUILDS_FULL_UPDATE(eventId) end

--- @param eventId integer
--- @param campaignId integer
--- @param keepId integer
--- @param guildName string
--- @param playerName string
--- @return void
function EVENT_GUILD_CLAIM_KEEP_CAMPAIGN_NOTIFICATION(eventId, campaignId, keepId, guildName, playerName) end

--- @param eventId integer
--- @param guildId integer
--- @param result GuildApplicationResponse
--- @return void
function EVENT_GUILD_FINDER_APPLICATION_RESPONSE(eventId, guildId, result) end

--- @param eventId integer
--- @param shareTargetCharacterName string
--- @param shareTargetDisplayName string
--- @param questName string
--- @param result QuestShareResult
--- @return void
function EVENT_QUEST_SHARE_RESULT(eventId, shareTargetCharacterName, shareTargetDisplayName, questName, result) end

--- @param eventId integer
--- @return void
function EVENT_GUILD_BANK_ITEMS_READY(eventId) end

--- @param eventId integer
--- @param crownCrateId integer
--- @param response LootCrateOpenResponse
--- @return void
function EVENT_CROWN_CRATE_OPEN_RESPONSE(eventId, crownCrateId, response) end

--- @param eventId integer
--- @param activeCombatTipId integer
--- @return void
function EVENT_DISPLAY_ACTIVE_COMBAT_TIP(eventId, activeCombatTipId) end

--- @param eventId integer
--- @param reason AbilityProgressionResult
--- @return void
function EVENT_ABILITY_PROGRESSION_RESULT(eventId, reason) end

--- @param eventId integer
--- @param isGiftingUnlocked bool
--- @return void
function EVENT_GIFTING_UNLOCKED_STATUS_CHANGED(eventId, isGiftingUnlocked) end

--- @param eventId integer
--- @return void
function EVENT_OPEN_STORE(eventId) end

--- @param eventId integer
--- @param keepId integer
--- @return void
function EVENT_START_FAST_TRAVEL_KEEP_INTERACTION(eventId, keepId) end

--- @param eventId integer
--- @param campaignId integer
--- @return void
function EVENT_CAMPAIGN_STATE_INITIALIZED(eventId, campaignId) end

--- @param eventId integer
--- @return void
function EVENT_ARMORY_BUILD_COUNT_UPDATED(eventId) end

--- @param eventId integer
--- @param newTelvarStones integer
--- @param oldTelvarStones integer
--- @param reason CurrencyChangeReason
--- @param reasonSupplementaryInfo integer
--- @return void
function EVENT_TELVAR_STONE_UPDATE(eventId, newTelvarStones, oldTelvarStones, reason, reasonSupplementaryInfo) end

--- @param eventId integer
--- @return void
function EVENT_TRADE_INVITE_REMOVED(eventId) end

--- @param eventId integer
--- @param displayName string
--- @param characterName string
--- @param zoneName string
--- @return void
function EVENT_FRIEND_CHARACTER_ZONE_CHANGED(eventId, displayName, characterName, zoneName) end

--- @param eventId integer
--- @param displayName string
--- @param characterName string
--- @param minValue integer
--- @param maxValue integer
--- @param rollResult integer
--- @return void
function EVENT_RANDOM_RANGE_ROLL(eventId, displayName, characterName, minValue, maxValue, rollResult) end

--- @param eventId integer
--- @param bookTitle string
--- @param body string
--- @param medium BookMedium
--- @param showTitle bool
--- @param bookId integer
--- @return void
function EVENT_SHOW_BOOK(eventId, bookTitle, body, medium, showTitle, bookId) end

--- @param eventId integer
--- @param result ClientInteractResult
--- @param interactTargetName string
--- @return void
function EVENT_CLIENT_INTERACT_RESULT(eventId, result, interactTargetName) end

--- @param eventId integer
--- @return void
function EVENT_KEEP_START_INTERACTION(eventId) end

--- @param eventId integer
--- @param objectiveKeepId integer
--- @param objectiveObjectiveId integer
--- @param battlegroundContext integer
--- @param objectiveName string
--- @param objectiveControlEvent ObjectiveControlEvent
--- @param objectiveControlState ObjectiveControlState
--- @param originalOwnerAlliance Alliance
--- @param holderAlliance Alliance
--- @param lastHolderAlliance Alliance
--- @param pinType MapDisplayPinType
--- @return void
function EVENT_CAPTURE_FLAG_STATE_CHANGED(eventId, objectiveKeepId, objectiveObjectiveId, battlegroundContext, objectiveName, objectiveControlEvent,
                                          objectiveControlState, originalOwnerAlliance, holderAlliance, lastHolderAlliance, pinType)
end

--- @param eventId integer
--- @return void
function EVENT_GRAVEYARD_USAGE_FAILURE(eventId) end

--- @param eventId integer
--- @param leaderTag string
--- @return void
function EVENT_LEADER_UPDATE(eventId, leaderTag) end

--- @param eventId integer
--- @param result ScribingItemUseResult
--- @return void
function EVENT_SCRIBING_ITEM_USE_RESULT(eventId, result) end

--- @param eventId integer
--- @param action GiftBoxAction
--- @param result GiftBoxActionResult
--- @param giftId id64
--- @return void
function EVENT_GIFT_ACTION_RESULT(eventId, action, result, giftId) end

--- @param eventId integer
--- @param pendingPurchaseIndex luaindex|nil
--- @return void
function EVENT_TRADING_HOUSE_CONFIRM_ITEM_PURCHASE(eventId, pendingPurchaseIndex) end

--- @param eventId integer
--- @param result GroupFinderActionResult
--- @param searchId integer
--- @return void
function EVENT_GROUP_FINDER_SEARCH_COMPLETE(eventId, result, searchId) end

--- @param eventId integer
--- @param crownGemAmount integer
--- @param difference integer
--- @param reason CurrencyChangeReason
--- @return void
function EVENT_CROWN_GEM_UPDATE(eventId, crownGemAmount, difference, reason) end

--- @param eventId integer
--- @param championPointsDelta integer
--- @return void
function EVENT_CHAMPION_POINT_GAINED(eventId, championPointsDelta) end

--- @param eventId integer
--- @param worldEventInstanceId integer
--- @return void
function EVENT_WORLD_EVENT_ACTIVATED(eventId, worldEventInstanceId) end

--- @param eventId integer
--- @return void
function EVENT_RESURRECT_REQUEST_REMOVED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_COLLECTIBLE_BLACKLIST_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GAME_CAMERA_DEACTIVATED(eventId) end

--- @param eventId integer
--- @param goldAmount integer
--- @return void
function EVENT_JUSTICE_GOLD_PICKPOCKETED(eventId, goldAmount) end

--- @param eventId integer
--- @return void
function EVENT_NEW_HIRELING_CORRESPONDENCE_RECEIVED(eventId) end

--- @param eventId integer
--- @param progressionIndex luaindex
--- @param rank integer
--- @param maxRank integer
--- @param morph integer
--- @return void
function EVENT_ABILITY_PROGRESSION_RANK_UPDATE(eventId, progressionIndex, rank, maxRank, morph) end

--- @param eventId integer
--- @return void
function EVENT_ENDLESS_DUNGEON_BUFF_SELECTOR_CHOICES_RECEIVED(eventId) end

--- @param eventId integer
--- @param artifactName string
--- @return void
function EVENT_CANNOT_CROUCH_WHILE_CARRYING_ARTIFACT(eventId, artifactName) end

--- @param eventId integer
--- @return void
function EVENT_LINKED_WORLD_POSITION_CHANGED(eventId) end

--- @param eventId integer
--- @param error SocialActionResult
--- @return void
function EVENT_SOCIAL_ERROR(eventId, error) end

--- @param eventId integer
--- @return void
function EVENT_END_SIEGE_CONTROL(eventId) end

--- @param eventId integer
--- @return void
function EVENT_SKYSHARDS_UPDATED(eventId) end

--- @param eventId integer
--- @param antiquityId integer
--- @return void
function EVENT_REVEAL_ANTIQUITY_DIG_SITES_ON_MAP(eventId, antiquityId) end

--- @param eventId integer
--- @param responseCode ReconstructResponse
--- @return void
function EVENT_RECONSTRUCT_RESPONSE(eventId, responseCode) end

--- @param eventId integer
--- @param deferMilliseconds integer
--- @param quitRequested bool
--- @return void
function EVENT_LOGOUT_DEFERRED(eventId, deferMilliseconds, quitRequested) end

--- @param eventId integer
--- @param guildId integer
--- @return void
function EVENT_GUILD_RECRUITMENT_INFO_UPDATED(eventId, guildId) end

--- @param eventId integer
--- @param actorCategory GameplayActorCategory
--- @param response EquipOutfitResult
--- @return void
function EVENT_OUTFIT_EQUIP_RESPONSE(eventId, actorCategory, response) end

--- @param eventId integer
--- @return void
function EVENT_ITEM_SET_COLLECTIONS_SEARCH_RESULTS_READY(eventId) end

--- @param eventId integer
--- @param endlessDungeonGroupType EndlessDungeonGroupType
--- @param endlessDungeonId integer
--- @param classId integer
--- @return void
function EVENT_ENDLESS_DUNGEON_LEADERBOARD_DATA_RECEIVED(eventId, endlessDungeonGroupType, endlessDungeonId, classId) end

--- @param eventId integer
--- @param scoreUpdateReason RaidPointReason
--- @param scoreAmount integer
--- @param totalScore integer
--- @return void
function EVENT_RAID_TRIAL_SCORE_UPDATE(eventId, scoreUpdateReason, scoreAmount, totalScore) end

--- @param eventId integer
--- @param keepId integer
--- @param battlegroundContext integer
--- @return void
function EVENT_KEEP_INITIALIZED(eventId, keepId, battlegroundContext) end

--- @param eventId integer
--- @param conversationBodyText string
--- @param conversationOptionCount integer
--- @return void
function EVENT_CONVERSATION_UPDATED(eventId, conversationBodyText, conversationOptionCount) end

--- @param eventId integer
--- @param worldEventInstanceId integer
--- @param unitTag string
--- @return void
function EVENT_WORLD_EVENT_UNIT_DESTROYED(eventId, worldEventInstanceId, unitTag) end

--- @param eventId integer
--- @return void
function EVENT_ZONE_STORY_ACTIVITY_TRACKED(eventId) end

--- @param eventId integer
--- @param guildId integer
--- @param result SocialActionResult
--- @return void
function EVENT_SAVE_GUILD_RANKS_RESPONSE(eventId, guildId, result) end

--- @param eventId integer
--- @param keybindDisplayMode KeybindDisplayMode
--- @return void
function EVENT_KEYBIND_DISPLAY_MODE_CHANGED(eventId, keybindDisplayMode) end

--- @param eventId integer
--- @param numberOfSlots integer
--- @return void
function EVENT_INVENTORY_BOUGHT_BAG_SPACE(eventId, numberOfSlots) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_FINDER_LONG_SEARCH_WARNING(eventId) end

--- @param eventId integer
--- @param unitTag string
--- @return void
function EVENT_UNIT_CHARACTER_NAME_CHANGED(eventId, unitTag) end

--- @param eventId integer
--- @param artifactName string
--- @param keepId integer
--- @param characterName string
--- @param playerAlliance Alliance
--- @param objectiveControlEvent ObjectiveControlEvent
--- @param objectiveControlState ObjectiveControlState
--- @param campaignId integer
--- @param displayName string
--- @return void
function EVENT_ARTIFACT_CONTROL_STATE(eventId, artifactName, keepId, characterName, playerAlliance, objectiveControlEvent, objectiveControlState, campaignId,
                                      displayName)
end

--- @param eventId integer
--- @param zoneIndex luaindex
--- @param poiIndex luaindex
--- @return void
function EVENT_POI_DISCOVERED(eventId, zoneIndex, poiIndex) end

--- @param eventId integer
--- @return void
function EVENT_BANK_DEPOSIT_NOT_ALLOWED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_COLLECTIBLE_SET_IN_WATER_ALERT(eventId) end

--- @param eventId integer
--- @param displayName string
--- @param characterName string
--- @param championRank integer
--- @return void
function EVENT_FRIEND_CHARACTER_CHAMPION_POINTS_CHANGED(eventId, displayName, characterName, championRank) end

--- @param eventId integer
--- @return void
function EVENT_RETICLE_TARGET_COMPANION_CHANGED(eventId) end

--- @param eventId integer
--- @param endlessDungeonName string
--- @param isWeekly bool
--- @return void
function EVENT_ENDLESS_DUNGEON_RESET_BEST_SCORE(eventId, endlessDungeonName, isWeekly) end

--- @param eventId integer
--- @param userGroup HousePermissionUserGroup
--- @param attemptedName string
--- @return void
function EVENT_HOUSING_ADD_PERMISSIONS_FAILED(eventId, userGroup, attemptedName) end

--- @param eventId integer
--- @return void
function EVENT_SIEGE_CREATION_FAILED_CLOSEST_DOOR_ALREADY_HAS_RAM(eventId) end

--- @param eventId integer
--- @param hasAttachments bool
--- @param hasExpiringAttachments bool
--- @return void
function EVENT_MAIL_WITH_ATTACHMENTS_AVAILABLE(eventId, hasAttachments, hasExpiringAttachments) end

--- @param eventId integer
--- @param newState CompanionState
--- @param oldState CompanionState
--- @return void
function EVENT_ACTIVE_COMPANION_STATE_CHANGED(eventId, newState, oldState) end

--- @param eventId integer
--- @return void
function EVENT_UPDATE_BUYBACK(eventId) end

--- @param eventId integer
--- @param worldEventInstanceId integer
--- @param unitTag string
--- @param oldPinType MapDisplayPinType
--- @param newPinType MapDisplayPinType
--- @return void
function EVENT_WORLD_EVENT_UNIT_CHANGED_PIN_TYPE(eventId, worldEventInstanceId, unitTag, oldPinType, newPinType) end

--- @param eventId integer
--- @param newClubRank TributeClubRank
--- @return void
function EVENT_TRIBUTE_CLUB_RANK_CHANGED(eventId, newClubRank) end

--- @param eventId integer
--- @param guildServerId integer
--- @param characterName string
--- @param guildId integer
--- @return void
function EVENT_GUILD_SELF_JOINED_GUILD(eventId, guildServerId, characterName, guildId) end

--- @param eventId integer
--- @return void
function EVENT_JUSTICE_NOW_KOS(eventId) end

--- @param eventId integer
--- @return void
function EVENT_MAIL_INBOX_UPDATE(eventId) end

--- @param eventId integer
--- @return void
function EVENT_INVENTORY_FULL_UPDATE(eventId) end

--- @param eventId integer
--- @param campaignKey id64
--- @param activityIndex luaindex
--- @param previousProgress integer
--- @param newProgress integer
--- @param isRewardClaimed bool
--- @return void
function EVENT_PROMOTIONAL_EVENTS_ACTIVITY_PROGRESS_UPDATED(eventId, campaignKey, activityIndex, previousProgress, newProgress, isRewardClaimed) end

--- @param eventId integer
--- @param unitTag string
--- @return void
function EVENT_DISPOSITION_UPDATE(eventId, unitTag) end

--- @param eventId integer
--- @return void
function EVENT_RETRAIT_STARTED(eventId) end

--- @param eventId integer
--- @param guildId integer
--- @param displayName string
--- @param characterName string
--- @param championRank integer
--- @return void
function EVENT_GUILD_MEMBER_CHARACTER_CHAMPION_POINTS_CHANGED(eventId, guildId, displayName, characterName, championRank) end

--- @param eventId integer
--- @param reason ItemRepairReason
--- @return void
function EVENT_ITEM_REPAIR_FAILURE(eventId, reason) end

--- @param eventId integer
--- @param result UnassignCampaignResult
--- @return void
function EVENT_CAMPAIGN_UNASSIGNMENT_RESULT(eventId, result) end

--- @param eventId integer
--- @param reason GuildBankResult
--- @return void
function EVENT_GUILD_BANK_TRANSFER_ERROR(eventId, reason) end

--- @param eventId integer
--- @param guildId integer
--- @param result SocialActionResult
--- @return void
function EVENT_GUILD_KIOSK_ACTIVE_BIDS_RESPONSE(eventId, guildId, result) end

--- @param eventId integer
--- @return void
function EVENT_ENDLESS_DUNGEON_OF_THE_WEEK_TURNOVER(eventId) end

--- @param eventId integer
--- @return void
function EVENT_COMPANION_DEACTIVATED(eventId) end

--- @param eventId integer
--- @param playerRandomMountType RandomMountType
--- @param companionRandomMountType RandomMountType
--- @return void
function EVENT_RANDOM_MOUNT_SETTING_CHANGED(eventId, playerRandomMountType, companionRandomMountType) end

--- @param eventId integer
--- @return void
function EVENT_ITEM_ON_COOLDOWN(eventId) end

--- @param eventId integer
--- @return void
function EVENT_CURRENT_SUBZONE_LIST_CHANGED(eventId) end

--- @param eventId integer
--- @param categoryId integer
--- @param red number
--- @param green number
--- @param blue number
--- @return void
function EVENT_CHAT_CATEGORY_COLOR_CHANGED(eventId, categoryId, red, green, blue) end

--- @param eventId integer
--- @return void
function EVENT_PROMOTIONAL_EVENTS_CAMPAIGNS_UPDATED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_GUILD_KIOSK_CONSIDER_PURCHASE_START(eventId) end

--- @param eventId integer
--- @return void
function EVENT_OPEN_TRADING_HOUSE(eventId) end

--- @param eventId integer
--- @param objectiveKeepId integer
--- @param objectiveObjectiveId integer
--- @param battlegroundContext integer
--- @param pinType MapDisplayPinType
--- @param hasMoved bool
--- @return void
function EVENT_CAPTURE_AREA_SPAWNED(eventId, objectiveKeepId, objectiveObjectiveId, battlegroundContext, pinType, hasMoved) end

--- @param eventId integer
--- @return void
function EVENT_SOCIAL_DATA_LOADED(eventId) end

--- @param eventId integer
--- @param durationMS integer
--- @return void
function EVENT_FORWARD_CAMP_RESPAWN_TIMER_BEGINS(eventId, durationMS) end

--- @param eventId integer
--- @param unitTag string
--- @return void
function EVENT_TARGET_CHANGED(eventId, unitTag) end

--- @param eventId integer
--- @return void
function EVENT_RETICLE_TARGET_PLAYER_CHANGED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_LOOT_CLOSED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_FISHING_LURE_CLEARED(eventId) end

--- @param eventId integer
--- @param unitTag string
--- @param rankPoints integer
--- @param difference integer
--- @return void
function EVENT_RANK_POINT_UPDATE(eventId, unitTag, rankPoints, difference) end

--- @param eventId integer
--- @param expiringMarketCurrencyState ExpiringMarketCurrencyState
--- @return void
function EVENT_EXPIRING_MARKET_CURRENCY_STATE_UPDATED(eventId, expiringMarketCurrencyState) end

--- @param eventId integer
--- @param unitTag string
--- @param isDead bool
--- @return void
function EVENT_UNIT_DEATH_STATE_CHANGED(eventId, unitTag, isDead) end

--- @param eventId integer
--- @return void
function EVENT_STUCK_ERROR_ALREADY_IN_PROGRESS(eventId) end

--- @param eventId integer
--- @param messageId integer
--- @return void
function EVENT_GROUP_NOTIFICATION_MESSAGE(eventId, messageId) end

--- @param eventId integer
--- @param width integer
--- @param height integer
--- @return void
function EVENT_SCREEN_RESIZED(eventId, width, height) end

--- @param eventId integer
--- @return void
function EVENT_SUBSCRIBER_BANK_IS_LOCKED(eventId) end

--- @param eventId integer
--- @param currency CurrencyType
--- @param newValue integer
--- @param oldValue integer
--- @param reason CurrencyChangeReason
--- @param reasonSupplementaryInfo integer
--- @return void
function EVENT_CARRIED_CURRENCY_UPDATE(eventId, currency, newValue, oldValue, reason, reasonSupplementaryInfo) end

--- @param eventId integer
--- @return void
function EVENT_HIDE_OBJECTIVE_STATUS(eventId) end

--- @param eventId integer
--- @param unitTag string
--- @return void
function EVENT_UNIT_CREATED(eventId, unitTag) end

--- @param eventId integer
--- @return void
function EVENT_AVAILABLE_DISPLAY_DEVICES_CHANGED(eventId) end

--- @param eventId integer
--- @param previousCapacity integer
--- @param currentCapacity integer
--- @param previousUpgrade integer
--- @param currentUpgrade integer
--- @return void
function EVENT_INVENTORY_BANK_CAPACITY_CHANGED(eventId, previousCapacity, currentCapacity, previousUpgrade, currentUpgrade) end

--- @param eventId integer
--- @return void
function EVENT_DYEING_STATION_INTERACT_START(eventId) end

--- @param eventId integer
--- @param result GroupFinderActionResult
--- @return void
function EVENT_GROUP_FINDER_CREATE_GROUP_LISTING_RESULT(eventId, result) end

--- @param eventId integer
--- @return void
function EVENT_TOGGLE_HELP(eventId) end

--- @param eventId integer
--- @param skillType SkillType
--- @param skillLineIndex luaindex
--- @param reason integer
--- @param rank luaindex
--- @param previousXP integer
--- @param currentXP integer
--- @return void
function EVENT_SKILL_XP_UPDATE(eventId, skillType, skillLineIndex, reason, rank, previousXP, currentXP) end

--- @param eventId integer
--- @param errorReason NamingError
--- @return void
function EVENT_COLLECTIBLE_RENAME_ERROR(eventId, errorReason) end

--- @param eventId integer
--- @param inviterCharacterName string
--- @param inviterDisplayName string
--- @return void
function EVENT_TRADE_INVITE_CONSIDERING(eventId, inviterCharacterName, inviterDisplayName) end

--- @param eventId integer
--- @param unitTag string
--- @param unitAttributeVisual UnitAttributeVisual
--- @param statType DerivedStats
--- @param attributeType Attributes
--- @param powerType CombatMechanicFlags
--- @param value number
--- @param maxValue number
--- @param sequenceId integer
--- @return void
function EVENT_UNIT_ATTRIBUTE_VISUAL_REMOVED(eventId, unitTag, unitAttributeVisual, statType, attributeType, powerType, value, maxValue, sequenceId) end

--- @param eventId integer
--- @param killLocation string
--- @param killerPlayerDisplayName string
--- @param killerPlayerCharacterName string
--- @param killerPlayerAlliance Alliance
--- @param killerPlayerRank integer
--- @param victimPlayerDisplayName string
--- @param victimPlayerCharacterName string
--- @param victimPlayerAlliance Alliance
--- @param victimPlayerRank integer
--- @param isKillLocation bool
--- @return void
function EVENT_PVP_KILL_FEED_DEATH(eventId, killLocation, killerPlayerDisplayName, killerPlayerCharacterName, killerPlayerAlliance, killerPlayerRank,
                                   victimPlayerDisplayName, victimPlayerCharacterName, victimPlayerAlliance, victimPlayerRank, isKillLocation)
end

--- @param eventId integer
--- @param newPopulation integer
--- @param previousPopulation integer
--- @return void
function EVENT_HOUSING_POPULATION_CHANGED(eventId, newPopulation, previousPopulation) end

--- @param eventId integer
--- @return void
function EVENT_EXPIRING_MARKET_CURRENCY_NOTIFICATION(eventId) end

--- @param eventId integer
--- @param categoryIndex luaindex
--- @param collectionIndex luaindex
--- @param guildIndex luaindex
--- @param skillType SkillType
--- @param skillLineIndex luaindex
--- @param rank luaindex
--- @param previousXP integer
--- @param currentXP integer
--- @return void
function EVENT_LORE_COLLECTION_COMPLETED_SKILL_EXPERIENCE(eventId, categoryIndex, collectionIndex, guildIndex, skillType, skillLineIndex, rank, previousXP,
                                                          currentXP)
end

--- @param eventId integer
--- @param slotId integer
--- @param addedByLocalPlayer bool
--- @param itemSoundCategory ItemUISoundCategory
--- @param isLastUpdateForMessage bool
--- @return void
function EVENT_GUILD_BANK_ITEM_ADDED(eventId, slotId, addedByLocalPlayer, itemSoundCategory, isLastUpdateForMessage) end

--- @param eventId integer
--- @param unitTag string
--- @param oldGuildId integer
--- @param newGuildId integer
--- @return void
function EVENT_GUILD_ID_CHANGED(eventId, unitTag, oldGuildId, newGuildId) end

--- @param eventId integer
--- @return void
function EVENT_KEEP_END_INTERACTION(eventId) end

--- @param eventId integer
--- @param locationName string
--- @return void
function EVENT_GROUPING_TOOLS_LFG_JOINED(eventId, locationName) end

--- @param eventId integer
--- @param craftedAbilityDefId integer
--- @param isUnlocked bool
--- @param isFromInit bool
--- @return void
function EVENT_CRAFTED_ABILITY_LOCK_STATE_CHANGED(eventId, craftedAbilityDefId, isUnlocked, isFromInit) end

--- @param eventId integer
--- @param campaignId integer
--- @param alliance Alliance
--- @return void
function EVENT_CAMPAIGN_LEADERBOARD_DATA_RECEIVED(eventId, campaignId, alliance) end

--- @param eventId integer
--- @return void
function EVENT_FEEDBACK_TOO_FREQUENT_SCREENSHOT(eventId) end

--- @param eventId integer
--- @param playerStunned bool
--- @return void
function EVENT_PLAYER_STUNNED_STATE_CHANGED(eventId, playerStunned) end

--- @param eventId integer
--- @param operationType ArmoryBuildOperationType
--- @param buildIndex luaindex
--- @return void
function EVENT_ARMORY_BUILD_OPERATION_STARTED(eventId, operationType, buildIndex) end

--- @param eventId integer
--- @param guildId integer
--- @param displayName string
--- @param characterName string
--- @param level integer
--- @return void
function EVENT_GUILD_MEMBER_CHARACTER_LEVEL_CHANGED(eventId, guildId, displayName, characterName, level) end

--- @param eventId integer
--- @param digPower integer
--- @return void
function EVENT_ANTIQUITY_DIG_SPOT_DIG_POWER_CHANGED(eventId, digPower) end

--- @param eventId integer
--- @return void
function EVENT_GUILD_KIOSK_CONSIDER_PURCHASE_STOP(eventId) end

--- @param eventId integer
--- @param requiredCollectible integer
--- @param message string
--- @return void
function EVENT_ZONE_COLLECTIBLE_REQUIREMENT_FAILED(eventId, requiredCollectible, message) end

--- @param eventId integer
--- @param unitTag string
--- @param disguiseState DisguiseState
--- @return void
function EVENT_DISGUISE_STATE_CHANGED(eventId, unitTag, disguiseState) end

--- @param eventId integer
--- @param displayName string
--- @return void
function EVENT_FRIEND_CHARACTER_UPDATED(eventId, displayName) end

--- @param eventId integer
--- @return void
function EVENT_STABLE_INTERACT_END(eventId) end

--- @param eventId integer
--- @param unitTag string
--- @param currentExp integer
--- @param maxExp integer
--- @param reason ProgressReason
--- @return void
function EVENT_EXPERIENCE_UPDATE(eventId, unitTag, currentExp, maxExp, reason) end

--- @param eventId integer
--- @param raidCategory RaidCategory
--- @param raidId integer
--- @param classId integer
--- @return void
function EVENT_RAID_LEADERBOARD_DATA_RECEIVED(eventId, raidCategory, raidId, classId) end

--- @param eventId integer
--- @param categoryIndex luaindex
--- @param collectionIndex luaindex
--- @param guildIndex luaindex
--- @param isMaxRank bool
--- @return void
function EVENT_LORE_COLLECTION_COMPLETED(eventId, categoryIndex, collectionIndex, guildIndex, isMaxRank) end

--- @param eventId integer
--- @param objectiveKeepId integer
--- @param objectiveObjectiveId integer
--- @param battlegroundContext integer
--- @param objectiveName string
--- @param objectiveType ObjectiveType
--- @param objectiveControlEvent ObjectiveControlEvent
--- @param objectiveControlState ObjectiveControlState
--- @param objectiveParam1 integer
--- @param objectiveParam2 integer
--- @param pinType MapDisplayPinType
--- @return void
function EVENT_OBJECTIVE_CONTROL_STATE(eventId, objectiveKeepId, objectiveObjectiveId, battlegroundContext, objectiveName, objectiveType, objectiveControlEvent,
                                       objectiveControlState, objectiveParam1, objectiveParam2, pinType)
end

--- @param eventId integer
--- @param questIndex luaindex
--- @return void
function EVENT_ZONE_STORY_QUEST_ACTIVITY_TRACKED(eventId, questIndex) end

--- @param eventId integer
--- @param playerName string
--- @param guildId integer
--- @return void
function EVENT_GUILD_INVITE_TO_BLACKLISTED_PLAYER(eventId, playerName, guildId) end

--- @param eventId integer
--- @param hotbar HotBarCategory
--- @param actionSlot luaindex
--- @return void
function EVENT_ACTION_SLOT_EFFECT_UPDATE(eventId, hotbar, actionSlot) end

--- @param eventId integer
--- @return void
function EVENT_COLLECTIBLES_SEARCH_RESULTS_READY(eventId) end

--- @param eventId integer
--- @param reason TradeActionResult
--- @param inviteeCharacterName string
--- @param inviteeDisplayName string
--- @return void
function EVENT_TRADE_INVITE_FAILED(eventId, reason, inviteeCharacterName, inviteeDisplayName) end

--- @param eventId integer
--- @return void
function EVENT_KILL_LOCATIONS_UPDATED(eventId) end

--- @param eventId integer
--- @param unitTag string
--- @param oldChampionPoints integer
--- @param currentChampionPoints integer
--- @return void
function EVENT_CHAMPION_POINT_UPDATE(eventId, unitTag, oldChampionPoints, currentChampionPoints) end

--- @param eventId integer
--- @param requestResult HousingRequestResult
--- @return void
function EVENT_HOUSING_EDITOR_REQUEST_RESULT(eventId, requestResult) end

--- @param eventId integer
--- @return void
function EVENT_EFFECTS_FULL_UPDATE(eventId) end

--- @param eventId integer
--- @return void
function EVENT_ENDLESS_DUNGEON_STARTED(eventId) end

--- @param eventId integer
--- @param reason LFGReadyCheckCancelReason
--- @return void
function EVENT_GROUPING_TOOLS_READY_CHECK_CANCELLED(eventId, reason) end

--- @param eventId integer
--- @return void
function EVENT_NOT_ENOUGH_MONEY(eventId) end

--- @param eventId integer
--- @param displayName string
--- @return void
function EVENT_OUTGOING_FRIEND_INVITE_REMOVED(eventId, displayName) end

--- @param eventId integer
--- @return void
function EVENT_TRADING_HOUSE_STATUS_RECEIVED(eventId) end

--- @param eventId integer
--- @param siegeName string
--- @return void
function EVENT_SIEGE_CONTROL_ANOTHER_PLAYER(eventId, siegeName) end

--- @param eventId integer
--- @param treasureMapIndex luaindex
--- @return void
function EVENT_SHOW_TREASURE_MAP(eventId, treasureMapIndex) end

--- @param eventId integer
--- @param enabled bool
--- @return void
function EVENT_BATTLEGROUND_SHUTDOWN_TIMER(eventId, enabled) end

--- @param eventId integer
--- @param response ClaimKeepResultType
--- @param keepId integer
--- @return void
function EVENT_GUILD_CLAIM_KEEP_RESPONSE(eventId, response, keepId) end

--- @param eventId integer
--- @param bagId Bag
--- @param slotIndex integer
--- @return void
function EVENT_REQUEST_CONFIRM_USE_ITEM(eventId, bagId, slotIndex) end

--- @param eventId integer
--- @param activeCombatTipId integer
--- @param result ActiveCombatTipConditionResult
--- @return void
function EVENT_REMOVE_ACTIVE_COMBAT_TIP(eventId, activeCombatTipId, result) end

--- @param eventId integer
--- @param unitTag string
--- @param isOnline bool
--- @return void
function EVENT_GROUP_MEMBER_CONNECTED_STATUS(eventId, unitTag, isOnline) end

--- @param eventId integer
--- @param groupListingIndex luaindex
--- @return void
function EVENT_GROUP_FINDER_JOIN_GROUP_FAILED(eventId, groupListingIndex) end

--- @param eventId integer
--- @param numAchievementsCompleteOnUpgrade integer
--- @return void
function EVENT_ACHIEVEMENTS_COMPLETED_ON_UPGRADE_TO_ACCOUNT_WIDE(eventId, numAchievementsCompleteOnUpgrade) end

--- @param eventId integer
--- @param opened bool
--- @return void
function EVENT_CHAT_LOG_TOGGLED(eventId, opened) end

--- @param eventId integer
--- @param responseType TradingHouseResult
--- @param result TradingHouseResult
--- @return void
function EVENT_TRADING_HOUSE_RESPONSE_RECEIVED(eventId, responseType, result) end

--- @param eventId integer
--- @return void
function EVENT_SAVE_DATA_COMPLETE(eventId) end

--- @param eventId integer
--- @param guildId integer
--- @param displayName string
--- @param note string
--- @return void
function EVENT_GUILD_MEMBER_NOTE_CHANGED(eventId, guildId, displayName, note) end

--- @param eventId integer
--- @param who TradeParticipant
--- @param level integer
--- @return void
function EVENT_TRADE_CONFIRMATION_CHANGED(eventId, who, level) end

--- @param eventId integer
--- @param antiquityId integer
--- @return void
function EVENT_ANTIQUITY_UPDATED(eventId, antiquityId) end

--- @param eventId integer
--- @return void
function EVENT_KEYBINDINGS_LOADED(eventId) end

--- @param eventId integer
--- @param collectibleId integer
--- @return void
function EVENT_COLLECTIBLE_NEW_STATUS_CLEARED(eventId, collectibleId) end

--- @param eventId integer
--- @param flags integer
--- @return void
function EVENT_ENDLESS_DUNGEON_COMPLETED(eventId, flags) end

--- @param eventId integer
--- @param itemSoundCategory ItemUISoundCategory
--- @return void
function EVENT_INVENTORY_ITEM_USED(eventId, itemSoundCategory) end

--- @param eventId integer
--- @param previousState BattlegroundState
--- @param currentState BattlegroundState
--- @return void
function EVENT_BATTLEGROUND_STATE_CHANGED(eventId, previousState, currentState) end

--- @param eventId integer
--- @return void
function EVENT_ACTIVITY_FINDER_ACTIVITY_COMPLETE(eventId) end

--- @param eventId integer
--- @param desiredStateName string
--- @return void
function EVENT_SHOW_PREGAME_GUI_IN_STATE(eventId, desiredStateName) end

--- @param eventId integer
--- @param displayName string
--- @return void
function EVENT_IGNORE_ONLINE_CHARACTER_CHANGED(eventId, displayName) end

--- @param eventId integer
--- @param operationType HouseToursListingOperationType
--- @param houseId integer
--- @return void
function EVENT_HOUSE_TOURS_LISTING_OPERATION_STARTED(eventId, operationType, houseId) end

--- @param eventId integer
--- @param journalIndex luaindex
--- @return void
function EVENT_QUEST_TIMER_UPDATED(eventId, journalIndex) end

--- @param eventId integer
--- @return void
function EVENT_PLAYER_DEACTIVATED(eventId) end

--- @param eventId integer
--- @param companionId integer
--- @param level integer
--- @param previousExperience integer
--- @param currentExperience integer
--- @return void
function EVENT_COMPANION_EXPERIENCE_GAIN(eventId, companionId, level, previousExperience, currentExperience) end

--- @param eventId integer
--- @param worldEventInstanceId integer
--- @return void
function EVENT_WORLD_EVENT_DEACTIVATED(eventId, worldEventInstanceId) end

--- @param eventId integer
--- @return void
function EVENT_CONSOLIDATED_SMITHING_ITEM_SET_SEARCH_RESULTS_READY(eventId) end

--- @param eventId integer
--- @param craftSkill TradeskillType
--- @param sameStation bool
--- @param craftMode CraftingInteractionMode
--- @return void
function EVENT_CRAFTING_STATION_INTERACT(eventId, craftSkill, sameStation, craftMode) end

--- @param eventId integer
--- @return void
function EVENT_ANTIQUITY_DIGGING_DIG_POWER_REFUND(eventId) end

--- @param eventId integer
--- @param allocationMode SkillPointAllocationMode
--- @param paymentType RespecPaymentType
--- @return void
function EVENT_START_SKILL_RESPEC(eventId, allocationMode, paymentType) end

--- @param eventId integer
--- @param fishingLure luaindex
--- @return void
function EVENT_FISHING_LURE_SET(eventId, fishingLure) end

--- @param eventId integer
--- @return void
function EVENT_ACTION_SLOTS_ALL_HOTBARS_UPDATED(eventId) end

--- @param eventId integer
--- @param craftingSkillType TradeskillType
--- @param researchLineIndex luaindex
--- @param traitIndex luaindex
--- @return void
function EVENT_SMITHING_TRAIT_RESEARCH_STARTED(eventId, craftingSkillType, researchLineIndex, traitIndex) end

--- @param eventId integer
--- @param stability integer
--- @return void
function EVENT_ANTIQUITY_DIG_SPOT_STABILITY_CHANGED(eventId, stability) end

--- @param eventId integer
--- @param keepId integer
--- @param objectiveId integer
--- @param battlegroundContext integer
--- @param capturePoolValue integer
--- @param capturePoolMax integer
--- @param capturingPlayers integer
--- @param contestingPlayers integer
--- @param owningAlliance Alliance
--- @param pinType MapDisplayPinType
--- @return void
function EVENT_CAPTURE_AREA_STATUS(eventId, keepId, objectiveId, battlegroundContext, capturePoolValue, capturePoolMax, capturingPlayers, contestingPlayers,
                                   owningAlliance, pinType)
end

--- @param eventId integer
--- @param allowSell bool
--- @param allowLaunder bool
--- @return void
function EVENT_OPEN_FENCE(eventId, allowSell, allowLaunder) end

--- @param eventId integer
--- @param guildId integer
--- @return void
function EVENT_TRADING_HOUSE_SELECTED_GUILD_CHANGED(eventId, guildId) end

--- @param eventId integer
--- @param hidden bool
--- @return void
function EVENT_RETICLE_HIDDEN_UPDATE(eventId, hidden) end

--- @param eventId integer
--- @param guildId integer
--- @param displayName string
--- @param characterName string
--- @return void
function EVENT_GUILD_MEMBER_REMOVED(eventId, guildId, displayName, characterName) end

--- @param eventId integer
--- @return void
function EVENT_ACTIVITY_FINDER_COOLDOWNS_UPDATE(eventId) end

--- @param eventId integer
--- @param worldEventInstanceId integer
--- @param unitTag string
--- @return void
function EVENT_WORLD_EVENT_UNIT_CREATED(eventId, worldEventInstanceId, unitTag) end

--- @param eventId integer
--- @param gamepadPreferred bool
--- @return void
function EVENT_GAMEPAD_PREFERRED_MODE_CHANGED(eventId, gamepadPreferred) end

--- @param eventId integer
--- @return void
function EVENT_SIEGE_CREATION_FAILED_NO_VALID_DOOR(eventId) end

--- @param eventId integer
--- @param craftSkill TradeskillType
--- @return void
function EVENT_CRAFT_COMPLETED(eventId, craftSkill) end

--- @param eventId integer
--- @param cost integer
--- @return void
function EVENT_INVENTORY_BUY_BANK_SPACE(eventId, cost) end

--- @param eventId integer
--- @param zoneName string
--- @param subZoneName string
--- @param newSubzone bool
--- @param zoneId integer
--- @param subZoneId integer
--- @return void
function EVENT_ZONE_CHANGED(eventId, zoneName, subZoneName, newSubzone, zoneId, subZoneId) end

--- @param eventId integer
--- @param inviteeCharacterName string
--- @param inviteeDisplayName string
--- @return void
function EVENT_TRADE_INVITE_WAITING(eventId, inviteeCharacterName, inviteeDisplayName) end

--- @param eventId integer
--- @param result AntiquityScryingResult
--- @return void
function EVENT_ANTIQUITY_SCRYING_RESULT(eventId, result) end

--- @param eventId integer
--- @param playerName string
--- @param newRankIndex integer
--- @param guildId integer
--- @return void
function EVENT_GUILD_MEMBER_PROMOTE_SUCCESSFUL(eventId, playerName, newRankIndex, guildId) end

--- @param eventId integer
--- @param skillType SkillType
--- @param skillLineIndex luaindex
--- @param rank luaindex
--- @return void
function EVENT_SKILL_RANK_UPDATE(eventId, skillType, skillLineIndex, rank) end

--- @param eventId integer
--- @param hasFreeTrial bool
--- @return void
function EVENT_ESO_PLUS_FREE_TRIAL_STATUS_CHANGED(eventId, hasFreeTrial) end

--- @param eventId integer
--- @param isCompleted bool
--- @param journalIndex luaindex
--- @param questName string
--- @param zoneIndex luaindex
--- @param poiIndex luaindex
--- @param questID integer
--- @return void
function EVENT_QUEST_REMOVED(eventId, isCompleted, journalIndex, questName, zoneIndex, poiIndex, questID) end

--- @param eventId integer
--- @return void
function EVENT_BEGIN_LOCKPICK(eventId) end

--- @param eventId integer
--- @param durability integer
--- @return void
function EVENT_ANTIQUITY_DIG_SPOT_DURABILITY_CHANGED(eventId, durability) end

--- @param eventId integer
--- @return void
function EVENT_SHOW_PROMOTIONAL_EVENT_SCENE(eventId) end

--- @param eventId integer
--- @param restrictionType TrialAccountRestrictionType
--- @return void
function EVENT_TRIAL_FEATURE_RESTRICTED(eventId, restrictionType) end

--- @param eventId integer
--- @return void
function EVENT_GROUP_CAMPAIGN_ASSIGNMENTS_CHANGED(eventId) end

--- @param eventId integer
--- @param numRecipesUnlocked integer
--- @return void
function EVENT_MULTIPLE_RECIPES_LEARNED(eventId, numRecipesUnlocked) end

--- @param eventId integer
--- @return void
function EVENT_HELP_SEARCH_RESULTS_READY(eventId) end

--- @param eventId integer
--- @param broadcastType BroadcastType
--- @param arg1 integer
--- @return void
function EVENT_FIXED_BROADCAST(eventId, broadcastType, arg1) end

--- @param eventId integer
--- @param initial bool
--- @return void
function EVENT_PLAYER_ACTIVATED(eventId, initial) end

--- @param eventId integer
--- @param antiquityId integer
--- @return void
function EVENT_ANTIQUITY_DIG_SITES_UPDATED(eventId, antiquityId) end

--- @param eventId integer
--- @param displayGroup MarketDisplayGroup
--- @param marketState MarketState
--- @return void
function EVENT_MARKET_STATE_UPDATED(eventId, displayGroup, marketState) end

--- @param eventId integer
--- @param guildId integer
--- @param displayName string
--- @return void
function EVENT_GUILD_MEMBER_CHARACTER_UPDATED(eventId, guildId, displayName) end

--- @param eventId integer
--- @param unitTag string
--- @param newZoneName string
--- @return void
function EVENT_ZONE_UPDATE(eventId, unitTag, newZoneName) end

--- @param eventId integer
--- @param taskId integer
--- @return void
function EVENT_BACKGROUND_LIST_FILTER_COMPLETE(eventId, taskId) end

--- @param eventId integer
--- @param leaderboardType TributeLeaderboardType
--- @return void
function EVENT_TRIBUTE_LEADERBOARD_RANK_RECEIVED(eventId, leaderboardType) end

--- @param eventId integer
--- @return void
function EVENT_OUTFITS_INITIALIZED(eventId) end

--- @param eventId integer
--- @param zoneId integer
--- @return void
function EVENT_SHOW_ZONE_STORIES_SCENE(eventId, zoneId) end

--- @param eventId integer
--- @return void
function EVENT_CANNOT_DO_THAT_WHILE_HIDDEN(eventId) end

--- @param eventId integer
--- @param result ItemLaunderResult
--- @return void
function EVENT_ITEM_LAUNDER_RESULT(eventId, result) end

--- @param eventId integer
--- @param timeRemainingMs integer
--- @return void
function EVENT_INSTANCE_KICK_TIME_UPDATE(eventId, timeRemainingMs) end

--- @param eventId integer
--- @param moneyAmount integer
--- @return void
function EVENT_MAIL_ATTACHED_MONEY_CHANGED(eventId, moneyAmount) end

--- @param eventId integer
--- @param slotId integer
--- @return void
function EVENT_GUILD_BANK_UPDATED_QUANTITY(eventId, slotId) end

--- @param eventId integer
--- @param furnitureId id64
--- @param collectibleId integer
--- @return void
function EVENT_HOUSING_FURNITURE_REMOVED(eventId, furnitureId, collectibleId) end

--- @param eventId integer
--- @param antiquityId integer
--- @return void
function EVENT_ANTIQUITY_SHOW_CODEX_ENTRY(eventId, antiquityId) end

--- @param eventId integer
--- @param mailId id64
--- @return void
function EVENT_MAIL_REMOVED(eventId, mailId) end

--- @param eventId integer
--- @param isGamepad bool
--- @return void
function EVENT_INPUT_TYPE_CHANGED(eventId, isGamepad) end

--- @param eventId integer
--- @param taskId integer
--- @param charId id64
--- @param isGroupLeader bool
--- @param isBreadcrumb bool
--- @param teleportNPCId integer
--- @param waypointId integer
--- @return void
function EVENT_GROUP_MEMBER_POSITION_REQUEST_COMPLETE(eventId, taskId, charId, isGroupLeader, isBreadcrumb, teleportNPCId, waypointId) end

--- @param eventId integer
--- @return void
function EVENT_PICKPOCKET_STATE_UPDATED(eventId) end

--- @param eventId integer
--- @param memberCharacterName string
--- @param reason GroupLeaveReason
--- @param isLocalPlayer bool
--- @param isLeader bool
--- @param memberDisplayName string
--- @param actionRequiredVote bool
--- @return void
function EVENT_GROUP_MEMBER_LEFT(eventId, memberCharacterName, reason, isLocalPlayer, isLeader, memberDisplayName, actionRequiredVote) end

--- @param eventId integer
--- @param unitTag string
--- @param unitAttributeVisual UnitAttributeVisual
--- @param statType DerivedStats
--- @param attributeType Attributes
--- @param powerType CombatMechanicFlags
--- @param oldValue number
--- @param newValue number
--- @param oldMaxValue number
--- @param newMaxValue number
--- @param sequenceId integer
--- @return void
function EVENT_UNIT_ATTRIBUTE_VISUAL_UPDATED(eventId, unitTag, unitAttributeVisual, statType, attributeType, powerType, oldValue, newValue, oldMaxValue,
                                             newMaxValue, sequenceId)
end

--- @param eventId integer
--- @param trackedAntiquityId integer
--- @return void
function EVENT_ANTIQUITY_TRACKING_UPDATE(eventId, trackedAntiquityId) end

--- @param eventId integer
--- @param bankBag Bag
--- @return void
function EVENT_OPEN_BANK(eventId, bankBag) end

--- @param eventId integer
--- @param newValue integer
--- @param oldValue integer
--- @return void
function EVENT_BANKED_MONEY_UPDATE(eventId, newValue, oldValue) end

--- @param eventId integer
--- @param daedricArtifactId integer
--- @return void
function EVENT_DAEDRIC_ARTIFACT_OBJECTIVE_SPAWNED_BUT_NOT_REVEALED(eventId, daedricArtifactId) end

--- @param eventId integer
--- @param respecType RespecType
--- @return void
function EVENT_FORCE_RESPEC(eventId, respecType) end

--- @return void
function EVENT_SCRIPTED_WORLD_EVENT_INVITE() end

--- @param eventId integer
--- @return void
function EVENT_END_FAST_TRAVEL_KEEP_INTERACTION(eventId) end

--- @param eventId integer
--- @return void
function EVENT_PLAYER_QUEUED_FOR_CYCLIC_RESPAWN(eventId) end

--- @param eventId integer
--- @return void
function EVENT_ANTIQUITY_SELECTED_TOOL_CHANGED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_CRAFTED_ABILITY_SEARCH_RESULTS_READY(eventId) end

--- @param eventId integer
--- @param crateId integer
--- @param newCount integer
--- @param oldCount integer
--- @return void
function EVENT_CROWN_CRATE_QUANTITY_UPDATE(eventId, crateId, newCount, oldCount) end

--- @param eventId integer
--- @param success bool
--- @return void
function EVENT_TRIBUTE_CLUB_INIT(eventId, success) end

--- @param eventId integer
--- @param targetCharacterName string
--- @param isSender bool
--- @param targetDisplayName string
--- @return void
function EVENT_PLEDGE_OF_MARA_OFFER(eventId, targetCharacterName, isSender, targetDisplayName) end

--- @param eventId integer
--- @param itemName string
--- @param itemTrait string
--- @return void
function EVENT_TRAIT_LEARNED(eventId, itemName, itemTrait) end

--- @param eventId integer
--- @param campaignId integer
--- @param isGroup bool
--- @param position integer
--- @return void
function EVENT_CAMPAIGN_QUEUE_POSITION_CHANGED(eventId, campaignId, isGroup, position) end

--- @param eventId integer
--- @return void
function EVENT_VIDEO_PLAYBACK_CANCEL_STARTED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_LEAVE_RAM_ESCORT(eventId) end

--- @param eventId integer
--- @param result GroupFinderActionResult
--- @return void
function EVENT_GROUP_FINDER_APPLY_TO_GROUP_LISTING_RESULT(eventId, result) end

--- @param eventId integer
--- @return void
function EVENT_STUCK_ERROR_IN_COMBAT(eventId) end

--- @param eventId integer
--- @param cooldownMs integer
--- @return void
function EVENT_GUILD_FINDER_SEARCH_COOLDOWN_UPDATE(eventId, cooldownMs) end

--- @param eventId integer
--- @param reason SoulGemItemChargingReason
--- @return void
function EVENT_SOUL_GEM_ITEM_CHARGE_FAILURE(eventId, reason) end

--- @param eventId integer
--- @param campaignId integer
--- @return void
function EVENT_CAMPAIGN_EMPEROR_CHANGED(eventId, campaignId) end

--- @param eventId integer
--- @return void
function EVENT_HOUSING_ADD_PERMISSIONS_CANT_ADD_SELF(eventId) end

--- @param eventId integer
--- @param inviterCharacterName string
--- @param inviterDisplayName string
--- @param timeRemainingMS integer
--- @return void
function EVENT_TRIBUTE_INVITE_RECEIVED(eventId, inviterCharacterName, inviterDisplayName, timeRemainingMS) end

--- @param eventId integer
--- @param button MouseButtonIndex
--- @param ctrl bool
--- @param alt bool
--- @param shift bool
--- @param command bool
--- @return void
function EVENT_GLOBAL_MOUSE_DOWN(eventId, button, ctrl, alt, shift, command) end

--- @param eventId integer
--- @param errorId integer
--- @return void
function EVENT_ABILITY_REQUIREMENTS_FAIL(eventId, errorId) end

--- @param eventId integer
--- @param guildId integer
--- @return void
function EVENT_GUILD_TRADER_HIRED_UPDATED(eventId, guildId) end

--- @param eventId integer
--- @param numRadarsRemaining integer
--- @return void
function EVENT_ANTIQUITY_DIGGING_NUM_RADARS_REMAINING_CHANGED(eventId, numRadarsRemaining) end

--- @param eventId integer
--- @return void
function EVENT_HOUSING_TARGET_FURNITURE_CHANGED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_TRACKING_UPDATE(eventId) end

--- @param eventId integer
--- @param unitTag string
--- @param isInRemoteRegion bool
--- @return void
function EVENT_GROUP_MEMBER_IN_REMOTE_REGION(eventId, unitTag, isInRemoteRegion) end

--- @param eventId integer
--- @return void
function EVENT_HERALDRY_CUSTOMIZATION_END(eventId) end

--- @param eventId integer
--- @return void
function EVENT_ALL_GUI_SCREENS_RESIZE_STARTED(eventId) end

--- @param eventId integer
--- @param previousCapacity integer
--- @param currentCapacity integer
--- @param previousUpgrade integer
--- @param currentUpgrade integer
--- @return void
function EVENT_INVENTORY_BAG_CAPACITY_CHANGED(eventId, previousCapacity, currentCapacity, previousUpgrade, currentUpgrade) end

--- @param eventId integer
--- @param isRepeccableBarState bool
--- @return void
function EVENT_ACTION_BAR_IS_RESPECCABLE_BAR_STATE_CHANGED(eventId, isRepeccableBarState) end

--- @param eventId integer
--- @param guildId integer
--- @return void
function EVENT_GUILD_MOTD_CHANGED(eventId, guildId) end

--- @param eventId integer
--- @param operationType HouseToursListingOperationType
--- @param houseId integer
--- @param result HouseTourListingResult
--- @return void
function EVENT_HOUSE_TOURS_LISTING_OPERATION_RESPONSE(eventId, operationType, houseId, result) end

--- @param eventId integer
--- @param craftingSkillType TradeskillType
--- @param researchLineIndex luaindex
--- @param traitIndex luaindex
--- @return void
function EVENT_SMITHING_TRAIT_RESEARCH_CANCELED(eventId, craftingSkillType, researchLineIndex, traitIndex) end

--- @param eventId integer
--- @return void
function EVENT_CLOSE_STORE(eventId) end

--- @param eventId integer
--- @param wasOwner bool
--- @param permissionsChanged bool
--- @param oldVisitorRole HousingVisitorRole
--- @return void
function EVENT_HOUSING_PLAYER_INFO_CHANGED(eventId, wasOwner, permissionsChanged, oldVisitorRole) end

--- @param eventId integer
--- @param guiName string
--- @param hidden bool
--- @return void
function EVENT_GUI_HIDDEN(eventId, guiName, hidden) end

--- @param eventId integer
--- @return void
function EVENT_CROWN_CRATE_INVENTORY_UPDATED(eventId) end

--- @param eventId integer
--- @param pingEventType MapPingEventType
--- @param pingType MapDisplayPinType
--- @param pingTag string
--- @param offsetX number
--- @param offsetY number
--- @param isLocalPlayerOwner bool
--- @return void
function EVENT_MAP_PING(eventId, pingEventType, pingType, pingTag, offsetX, offsetY, isLocalPlayerOwner) end

--- @param eventId integer
--- @param progressionIndex luaindex
--- @param lastRankXP integer
--- @param nextRankXP integer
--- @param currentXP integer
--- @param atMorph bool
--- @return void
function EVENT_ABILITY_PROGRESSION_XP_UPDATE(eventId, progressionIndex, lastRankXP, nextRankXP, currentXP, atMorph) end

--- @param eventId integer
--- @param quitRequested bool
--- @return void
function EVENT_LOGOUT_DISALLOWED(eventId, quitRequested) end

--- @param eventId integer
--- @return void
function EVENT_LEVEL_UP_REWARD_CHOICE_UPDATED(eventId) end

--- @param eventId integer
--- @param bagId Bag
--- @param slotIndex integer
--- @param itemCount integer
--- @param name string
--- @param needsConfirm bool
--- @return void
function EVENT_MOUSE_REQUEST_DESTROY_ITEM(eventId, bagId, slotIndex, itemCount, name, needsConfirm) end

--- @param eventId integer
--- @param displayName string
--- @param note string
--- @return void
function EVENT_FRIEND_NOTE_UPDATED(eventId, displayName, note) end

--- @param eventId integer
--- @param campaignKey id64
--- @return void
function EVENT_TRIBUTE_CAMPAIGN_CHANGE(eventId, campaignKey) end

--- @param eventId integer
--- @param timedActivityType TimedActivityType
--- @param previousNumCompleted integer
--- @param currentNumCompleted integer
--- @param complete bool
--- @return void
function EVENT_TIMED_ACTIVITY_TYPE_PROGRESS_UPDATED(eventId, timedActivityType, previousNumCompleted, currentNumCompleted, complete) end

--- @param eventId integer
--- @return void
function EVENT_LOOT_UPDATED(eventId) end

--- @param eventId integer
--- @param displayName string
--- @param message string
--- @return void
function EVENT_INCOMING_FRIEND_INVITE_NOTE_UPDATED(eventId, displayName, message) end

--- @param eventId integer
--- @param type MouseContentType
--- @param param1 integer
--- @param param2 integer
--- @param param3 integer
--- @param param4 integer
--- @param param5 integer
--- @param param6 integer
--- @param itemSoundCategory ItemUISoundCategory
--- @return void
function EVENT_CURSOR_PICKUP(eventId, type, param1, param2, param3, param4, param5, param6, itemSoundCategory) end

--- @param eventId integer
--- @return void
function EVENT_WORLD_EVENTS_INITIALIZED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_STUCK_CANCELED(eventId) end

--- @param eventId integer
--- @return void
function EVENT_HOLIDAYS_CHANGED(eventId) end

--- @param eventId integer
--- @param channelType ChannelType
--- @param speakerName string
--- @param text string
--- @return void
function EVENT_SHOW_SUBTITLE(eventId, channelType, speakerName, text) end

--- @param eventId integer
--- @return void
function EVENT_NO_DAEDRIC_PICKUP_WHEN_STEALTHED(eventId) end

--- @param eventId integer
--- @param artifactId integer|nil
--- @return void
function EVENT_ACTIVE_DAEDRIC_ARTIFACT_CHANGED(eventId, artifactId) end

--- @param eventId integer
--- @param unitTag string
--- @return void
function EVENT_UNIT_DESTROYED(eventId, unitTag) end

--- @param eventId integer
--- @return void
function EVENT_ITEM_SET_COLLECTIONS_UPDATED(eventId) end

--- @param eventId integer
--- @param unitTag string
--- @return void
function EVENT_STATS_UPDATED(eventId, unitTag) end

--- @param eventId integer
--- @return void
function EVENT_ANTIQUITIES_UPDATED(eventId) end

--- @param eventId integer
--- @param feedbackId integer
--- @return void
function EVENT_FEEDBACK_REQUESTED(eventId, feedbackId) end

--- @param eventId integer
--- @param linkIndex luaindex
--- @param linkType FastTravelLinkType
--- @param owningAlliance Alliance
--- @param oldLinkType FastTravelLinkType
--- @param oldOwningAlliance Alliance
--- @param isLocal bool
--- @return void
function EVENT_FAST_TRAVEL_KEEP_NETWORK_LINK_CHANGED(eventId, linkIndex, linkType, owningAlliance, oldLinkType, oldOwningAlliance, isLocal) end

--- @param eventId integer
--- @param reason DuelInviteFailReason
--- @param targetCharacterName string
--- @param targetDisplayName string
--- @return void
function EVENT_DUEL_INVITE_FAILED(eventId, reason, targetCharacterName, targetDisplayName) end

--- @param eventId integer
--- @param result ArmoryBuildSaveResult
--- @param buildIndex luaindex
--- @return void
function EVENT_ARMORY_BUILD_SAVE_RESPONSE(eventId, result, buildIndex) end
