/**
 * Parameters for hangar.
 */
{
  "hangar": {
    // true - show "Buy premium" button.
    "showBuyPremiumButton": true,
    // true - show "Premium shop" button.
    "showPremiumShopButton": true,
    // true - show "WoT Plus" subscription button.
    "showWotPlusButton": true,
    // true - show "Create squad" text on the squad creation button.
    "showCreateSquadButtonText": true,
    // true - show selected battle mode text.
    "showBattleTypeSelectorText": true,
    // true - show "Referral Program" button.
    "showReferralButton": true,
    // true - show "General chat" button.
    "showGeneralChatButton": true,
    // false - disable display promo of premium vehicle (on the background in the hangar).
    "showPromoPremVehicle": true,
    // true - show info windows with the battle results in the "Ranked battle" mode.
    "showRankedBattleResults": true,
    // true - show info windows when receiving progressive decals.
    "showProgressiveDecalsWindow": true,
    // true - show battle pass widget in hangar.
    "showBattlePassWidget": true,
    // true - show widget "Daily Quests" in the hangar.
    "showDailyQuestWidget": true,
    // true - show banner of various events in the hangar.
    "showEventBanner": true,
    // true - show lootbox widget in hangar.
    "showLootboxesWidget": true,
    // true - show event tournaments widget in hangar.
    "showEventTournamentWidget": true,
    // true - show elite levels widget in the hangar.
    "showHangarPrestigeWidget": true,
    // true - show elite levels widget in the profile for vehicle statistics.
    "showProfilePrestigeWidget": true,
    // true - show reward window for unlocking new achievements.
    "showAchievementRewardWindow": true,
    // true - show popups in top right corner for unlocking new achievement.
    "showAchievementPopups": true,
    // "Combat Intelligence" - show/hide notifications in the main window and counters in the menu.
    "combatIntelligence": {
      // true - show pop-up messages in the hangar.
      "showPopUpMessages": true,
      // true - show unread notifications counter in the menu.
      "showUnreadCounter": true
    },
    // Parameters of the "Session statistics" button.
    "sessionStatsButton": {
      // false - disable display "Session statistics" button.
      "showButton": true,
      // false - disable display the counter of spent battles on the button.
      "showBattleCount": true
    },
    // true - enable locker for gold.
    "enableGoldLocker": true,
    // true - enable locker for free XP.
    "enableFreeXpLocker": true,
    // true - enable locker for bonds.
    "enableCrystalLocker": true,
    // Path to locker icons.
    "lockerIconsFolder": "xvm://res/locker/",
    // Show/hide server info or change its parameters.
    "serverInfo": {
      // Show server info in hangar.
      "enabled": true,
      // Transparency in percents [0..100].
      "alpha": 100,
      // Rotation in degrees [0..360].
      "rotation": 0,
      // X offset.
      "offsetX": 0,
      // Y offset.
      "offsetY": 0
    },
    // true - enable crew auto return function (the option works if there are free places in the barracks).
    "enableCrewAutoReturn": true,
    // true - return crew check box is selected by default.
    "crewReturnByDefault": false,
    // Show/hide common quests button or change its parameters.
    "commonQuests": {
      // Show common quests button in hangar.
      "enabled": true,
      // Transparency in percents [0..100].
      "alpha": 100,
      // Rotation in degrees [0..360].
      "rotation": 0,
      // X offset.
      "offsetX": 0,
      // Y offset.
      "offsetY": 0
    },
    // Show/hide personal quests button or change its parameters.
    "personalQuests": {
      // Show personal quests button in hangar.
      "enabled": true,
      // Transparency in percents [0..100].
      "alpha": 100,
      // Rotation in degrees [0..360].
      "rotation": 0,
      // X offset.
      "offsetX": 0,
      // Y offset.
      "offsetY": 0
    },
    // Show/hide current vehicle name, type and level or change their parameters.
    "vehicleName": {
      // Show current vehicle name, type and level in hangar.
      "enabled": true,
      // Transparency in percents [0..100].
      "alpha": 100,
      // Rotation in degrees [0..360].
      "rotation": 0,
      // X offset.
      "offsetX": 0,
      // Y offset.
      "offsetY": 0
    },
    // true - make vehicle not ready for battle if low ammo.
    "blockVehicleIfLowAmmo": false,
    // Below this percentage, ammo is low. (0 - 100)
    "lowAmmoPercentage": 20,
    // true - hide price button in tech tree.
    "hidePricesInTechTree": false,
    // true - show mastery mark in tech tree.
    "masteryMarkInTechTree": true,
    // true - allow to consider the exchange of experience with gold in tech tree.
    "allowExchangeXPInTechTree": true,
    // true - restore selected battle type on switching to another server, at the next login to the client.
    "restoreBattleType": true,
    // Ping servers.
    "pingServers": {
      // true - enable display of ping to the servers.
      "enabled": false,
      // Update interval, in ms.
      "updateInterval": 10000,
      // Axis field coordinates.
      "x": 85,
      "y": 52,
      // Horizontal alignment of field at screen ("left", "center", "right").
      "hAlign": "left",
      // Vertical alignment of field at screen ("top", "center", "bottom").
      "vAlign": "top",
      // Transparency (from 0 to 100).
      "alpha": 80,
      // If set, draw image at background.
      // example: "bgImage": "cfg://My/img/my.png",
      "bgImage": null,
      // Server to response time text delimiter.
      "delimiter": ": ",
      // Maximum number of column rows.
      "maxRows": 2,
      // Gap between columns.
      "columnGap": 3,
      // Leading between lines.
      "leading": 2,
      // Layer - "bottom", "normal" (default), "top".
      "layer": "normal",
      // true - show title "Ping".
      "showTitle": true,
      // true - show server names in list.
      "showServerName": true,
      // Expand server names to this amount of symbols. recommended to use monospace font if this option is set.
      "minimalNameLength": 4,
      // Expand values to this amount of symbols. recommended to use monospace font if this option is set.
      "minimalValueLength": 0,
      // Text to show in case of error.
      "errorString": "--",
      // List of ignored servers, for example, ["RU1", "RU3"].
      "ignoredServers": [],
      // Text style.
      "fontStyle": {
        // Font name.
        "name": "$FieldFont",
        "size": 12,
        "bold": false,
        "italic": false,
        // Different colors depending on server response time.
        "color": {
          "great": "0xFFCC66",
          "good":  "0xE5E4E1",
          "poor":  "0x96948F",
          "bad":   "0xD64D4D"
        },
        // Color for server name and delimiter (for example, "0x8080FF"). Empty string "" - use same color as online value.
        "serverColor": ""
      },
      // Text format for current server in the list,
      // Flash HTML tags supported. "{server}" for the server value.
      "currentServerFormat": "<b>{server}</b>",
      // Threshold values defining response quality.
      "threshold": {
        // Below this value response is great.
        "great": 35,
        // Below this value response is good.
        "good": 60,
        // Below this value response is poor.
        "poor": 100
      },
      // Shadow options.
      "shadow": {
        // false - no shadow.
        "enabled": true,
        "distance": 0,       // (in pixels)    / offset distance
        "angle": 0,          // (0.0 .. 360.0) / offset angle
        "color": "0x000000", // "0xXXXXXX"     / color
        "alpha": 70,         // (0 .. 100)     / opacity
        "blur": 4,           // (0.0 .. 255.0) / blur
        "strength": 2        // (0.0 .. 255.0) / intensity
      }
    },
    "onlineServers": {
      // true - enable display online of servers.
      "enabled": false,
      // Axis field coordinates.
      "x": -3,
      "y": 51,
      // Horizontal alignment of field at screen ("left", "center", "right").
      "hAlign": "right",
      // Vertical alignment of field at screen ("top", "center", "bottom").
      "vAlign": "top",
      // Transparency (from 0 to 100).
      "alpha": 80,
      // If set, draw image at background.
      // example: "bgImage": "cfg://My/img/my.png",
      "bgImage": null,
      // Server to online text delimiter.
      "delimiter": ": ",
      // Maximum number of column rows.
      "maxRows": 2,
      // Gap between columns.
      "columnGap": 3,
      // Leading between lines.
      "leading": 0,
      // Layer - "bottom", "normal" (default), "top".
      "layer": "normal",
      // true - show title "Online".
      "showTitle": true,
      // true - show server names in list.
      "showServerName": true,
      // Expand server names to this amount of symbols. recommended to use monospace font if this option is set.
      "minimalNameLength": 4,
      // Expand values to this amount of symbols. recommended to use monospace font if this option is set.
      "minimalValueLength": 0,
      // Text to show in case of error.
      "errorString": "--k",
      // List of ignored servers, for example, ["EU1", "EU2"]
      "ignoredServers": [],
      // Text style.
      "fontStyle": {
        // Font name.
        "name": "$FieldFont",
        "size": 12,
        "bold": false,
        "italic": false,
        // Different colors depending on people online.
        "color": {
          "great": "0x60ff00",
          "good":  "0xF8F400",
          "poor":  "0xFE7903",
          "bad":   "0xFE0E00"
        },
        // Mark current server in the list, possible options: "none" (don't mark), "normal", "bold", "italic", "underline".
        "markCurrentServer": "bold",
        // Color for server name and delimiter (for example, "0x8080FF"). Empty string "" - use same color as online value.
        "serverColor": ""
      },
      // Text format for current server in the list,
      // Flash HTML tags supported. "{server}" for the server value.
      "currentServerFormat": "<b>{server}</b>",
      // Threshold values defining server online and thus shorter battle queue.
      "threshold": {
        "great": 30000,
        "good": 10000,
        "poor": 3000
        // Below this value the queue might be long.
      },
      // Shadow options.
      "shadow": {
        "enabled": true,
        "distance": 0,
        "angle": 0,
        "color": "0x000000",
        "alpha": 70,
        "blur": 4,
        "strength": 2
      }
    },
    // true - show counter on buttons in lobby menu.
    "showLobbyMenuCounter": true,
    // true - show counter on buttons in battle selector.
    "showBattleSelectorCounter": true,
    // true - show new crew books counter in crew widget in hangar.
    "showNewCrewBooksCounter": true,
    // Show/hide notifications counters in the lobby header.
    "notificationCounter": {
      "storage": true,                       // Storage
      "store": true,                         // Store
      "missions": true,                      // Missions
      "PersonalMissionOperationsPage": true, // Campaigns
      "profile": true,                       // Service Record
      "barracks": true,                      // Barracks
      "StrongholdView": true                 // Clan
    },
    // true - show notifications counters in the window and on the button "Exterior".
    "showCustomizationCounter": true,
    // true - show counter on notification list (service channel) button.
    "showNotificationButtonCounter": true,
    // true - show counter in notification list (service channel).
    "showNotificationListCounters": true,
    // true - allow notification list (service channel) button blinking.
    "allowNotificationsButtonBlinking": true,
    // true - allow messenger bar channel (clan or private chat) button blinking.
    "allowChannelButtonBlinking": true,
    // Parameters for tank carousel.
    "carousel": ${"carousel.xc":"carousel"},
    // Parameters for widgets.
    "widgets": ${"widgets.xc":"widgets.lobby"}
  }
}
