/**
 * Parameters of the Players Panels ("ears").
 */
{
  // Definitions (extended format supported, see extra-field.txt).
  "def": {
    // Enemy spotted status marker.
    "enemySpottedMarker": {
      // false - disable.
      "enabled": true,
      // Opacity percentage of spotted markers in the panels. 0 - transparent (disabled) ... 100 - opaque.
      "alpha": "{{a:spotted}}",
      // x position.
      "x": 88,
      // y position.
      "y": -2,
      // Horizontal alignment.
      "align": "center",
      // true - x position is bound to vehicle icon, false - bound to edge of the screen.
      "bindToIcon": true,
      // enemy spotted status marker format.
      "format": "<font color='{{c:spotted}}'>{{spotted}}</font>",
      // shadow (see below).
      "shadow": {}
    },
    // XMQP service marker definition.
    "xmqpServiceMarker": {
      "enabled": true,
      "x": 88, "y": -2, "align": "center", "bindToIcon": true,
      "textFormat": {
        "font": "xvm",
        "size": 24
      },
      "format": "<font color='{{x-spotted?#FFBB00|#D9D9D9}}'>{{alive?{{x-enabled?&#x70;}}}}</font>",
      "shadow": {}
    },
    // Clan icon.
    "clanIcon": {
      "enabled": true,
      "x": 65, "y": 6, "width": 16, "height": 16, "align": "center", "alpha": 90, "bindToIcon": true,
      "src": "{{clanicon}}"
      //"format": "<img src='{{clanicon}}' width='16' height='16'>"
    },
    // XVM user marker.
    "xvmUserMarker": {
      "enabled": false,
      "x": 10, "y": 5, "bindToIcon": true,
      "src": "xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png"
    },
    // HP bar background.
    "hpBarBg": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": 96, "y": 6, "width": 72, "bindToIcon": true, "height": 14, "bgColor": "0x000000", "alpha": "{{alive?35|0}}" },
    // HP bar.
    "hpBar": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": 97, "y": 7, "bindToIcon": true, "width": "{{hp-ratio:70}}", "height": 12, "bgColor": "{{player?#FFDD33|{{c:system}}}}", "alpha": "{{alive?50|0}}" },
    // Remaining HP.
    "hp": {
      "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "bindToIcon": true, "alpha": "{{alive?100|0}}",
      "x": 96, "width": 72, "y": 4,
      "textFormat": { "font": "$FieldFont", "size": 11, "color": "0xD9D9D9", "bold": "true", "align": "center" },
      "format": "<font alpha='{{alive?{{ready?#FF|#80}}|#80}}'>{{alive?{{hp|{{hp-max}}}}|{{l10n:Destroyed}}}}</font>",
      "shadow": { "enabled": true, "color": "0x000000", "alpha": 100, "blur": 4, "strength": 1, "distance": 0, "angle": 0 }
    }
  },
  // Parameters of the Players Panels ("ears").
  "playersPanel": {
    // false - disable.
    "enabled": true,
    // Opacity percentage of the background panels. 0 - transparent, 100 - opaque.
    "alpha": 80,
    // Opacity percentage of icons in the panels. 0 - transparent ... 100 - opaque.
    "iconAlpha": 100,
    // true - disable background of the selected player.
    "removeSelectedBackground": false,
    // true - remove the Players Panel mode switcher (buttons for changing size).
    "removePanelsModeSwitcher": false,
    // true - remove the number of hit points (HP) vehicle.
    "removeHealthPoints": false,
    // Start panels mode. Possible values: "none", "short", "medium", "medium2", "large".
    "startMode": "large",
    // Alternative panels mode. Possible values: null, "none", "short", "medium", "medium2", "large".
    "altMode": null,
    // Options for the "none" panels - empty panels.
    "none": {
      // false - disable.
      "enabled": true,
      // Width of area for switching to "large" mode on mouse over.
      "expandAreaWidth": 230,
      // Layout ("vertical" or "horizontal").
      "layout": "vertical",
      // true - don't change players positions on dead (default false).
      "fixedPosition": true,
      // Opacity of dynamic squad invite indicator.
      "inviteIndicatorAlpha": 100,
      // X position offset of dynamic squad invite indicator.
      "inviteIndicatorX": 0,
      // Y position offset of dynamic squad invite indicator.
      "inviteIndicatorY": 0,
      // Extra fields.
      "extraFields": {
        "leftPanel": {
          "x": 0, // from left side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for left panel.
          // example:
          // "formats": [
          //   // simple format (just a text)
          //   "{{nick}}",
          //   "<img src='xvm://res/img/panel-bg-l-{{alive|dead}}.png' width='318' height='28'>",
          //   // extended format
          //   { "x": 20, "y": 10, "borderColor": "0xFFFFFF", "format": "{{nick}}" },
          //   { "x": 200, "src": "xvm://res/contour/{{vehiclename}}.png" },
          //   { "x": 200, "src": "img://gui/maps/icons/vehicle/{{vehiclename}}.png" }
          //   { "x": 200, "src": "cfg://user/img/{{vehiclename}}.png" }
          // ]
          //
          // * all fields are optional
          //
          "formats": []
        },
        "rightPanel": {
          "x": 0, // from right side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for right panel (extended format supported, see above).
          "formats": []
        }
      }
    },
    // Options for the "short" panels - panels with frags and vehicle icon.
    "short": {
      // false - disable.
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle", "prestige".
      "standardFields": [ "frags" ],
      // Width of area for switching to "large" mode on mouse over.
      "expandAreaWidth": 230,
      // true - disable platoon/rank icons.
      "removeSquadIcon": false,
      // Transparency of the squad icon.
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      "vehicleIconOffsetXLeft": 0,
      "vehicleIconOffsetXRight": 0,
      // Offset of X value for vehicle level.
      "vehicleLevelOffsetXLeft": 0,
      "vehicleLevelOffsetXRight": 0,
      // Transparency of vehicle level.
      "vehicleLevelAlpha": 100,
      // Offset of X value for frags column.
      "fragsOffsetXLeft": 0,
      "fragsOffsetXRight": 0,
      // Width of the frags column. Default is 24.
      "fragsWidth": 24,
      // Display format for frags (macros allowed, see macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      "fragsShadowLeft": null,
      "fragsShadowRight": null,
      // Offset of X value for badge column.
      "rankBadgeOffsetXLeft": 0,
      "rankBadgeOffsetXRight": 0,
      // Width of the badge column. Default is 24.
      "rankBadgeWidth": 24,
      // Transparency of the badge icons.
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      "nickOffsetXLeft": 0,
      "nickOffsetXRight": 0,
      // Minimum width of the player name column. Default is 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      "nickMaxWidth": 158,
      // Display format for player name (macros allowed, see macros.txt).
      "nickFormatLeft": "",
      "nickFormatRight": "",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      "nickShadowLeft": null,
      "nickShadowRight": null,
      // Offset of X value for prestige level.
      "prestigeOffsetXLeft": 0,
      "prestigeOffsetXRight": 0,
      // Offset of X value for vehicle name column.
      "vehicleOffsetXLeft": 0,
      "vehicleOffsetXRight": 0,
      // Width of the vehicle name column. Default is 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      "vehicleFormatLeft": "",
      "vehicleFormatRight": "",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      // true - disable enemy spotted status icons.
      "removeSpottedIndicator": true,
      // Transparency of the enemy spotted status icons.
      "spottedIndicatorAlpha": 100,
      // Offset of X value for enemy spotted status icons.
      "spottedIndicatorOffsetX": 0,
      // Offset of Y value for enemy spotted status icons.
      "spottedIndicatorOffsetY": 0,
      // true - don't change players positions on dead (default false).
      "fixedPosition": true,
      // Extra fields. Each field have default size 350x25.
      // Fields are placed one above the other.
      // Set of formats for left panel (extended format supported, see above).
      "extraFieldsLeft": [
        ${"def.hpBarBg"},
        ${"def.hpBar"},
        ${"def.hp"},
        ${"def.clanIcon"},
        ${"def.xvmUserMarker"},
        ${"def.xmqpServiceMarker"}
      ],
      // Set of formats for right panel (extended format supported, see above).
      "extraFieldsRight": [
        ${"def.hpBarBg"},
        ${"def.hpBar"},
        ${"def.hp"},
        ${"def.clanIcon"},
        ${"def.xvmUserMarker"},
        ${"def.enemySpottedMarker"}
      ]
    },
    // Options for the "medium" panels - the first of the medium panels.
    "medium": {
      // false - disable.
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle", "prestige".
      "standardFields": [ "frags", "nick" ],
      // Width of area for switching to "large" mode on mouse over.
      "expandAreaWidth": 230,
      // true - disable platoon/rank icons.
      "removeSquadIcon": false,
      // Transparency of the squad icon.
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      "vehicleIconOffsetXLeft": 0,
      "vehicleIconOffsetXRight": 0,
      // Offset of X value for vehicle level.
      "vehicleLevelOffsetXLeft": 0,
      "vehicleLevelOffsetXRight": 0,
      // Transparency of vehicle level.
      "vehicleLevelAlpha": 100,
      // Offset of X value for frags column.
      "fragsOffsetXLeft": 0,
      "fragsOffsetXRight": 0,
      // Width of the frags column. Default is 24.
      "fragsWidth": 24,
      // Display format for frags (macros allowed, see macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      "fragsShadowLeft": null,
      "fragsShadowRight": null,
      // Offset of X value for badge column.
      "rankBadgeOffsetXLeft": 0,
      "rankBadgeOffsetXRight": 0,
      // Width of the badge column. Default is 24.
      "rankBadgeWidth": 24,
      // Transparency of the badge icons.
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      "nickOffsetXLeft": 0,
      "nickOffsetXRight": 0,
      // Minimum width of the player name column. Default is 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      "nickMaxWidth": 158,
      // Display format for player nickname (macros allowed, see macros.txt).
      "nickFormatLeft": "<font alpha='{{alive?#FF|#80}}'>{{name%.{{anonym?18|20}}s~..}}</font>{{anonym? <font face='xvm' size='19'>&#x11E;</font>}} <font alpha='#A0'>{{clan}}</font>",
      "nickFormatRight": "<font alpha='#A0'>{{clan}}</font> <font alpha='{{alive?#FF|#80}}'>{{name%.20s~..}}</font>",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      "nickShadowLeft": null,
      "nickShadowRight": null,
      // Offset of X value for vehicle name column.
      "vehicleOffsetXLeft": 0,
      "vehicleOffsetXRight": 0,
      // Width of the vehicle name column. Default is 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      "vehicleFormatLeft": "",
      "vehicleFormatRight": "",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      // true - disable enemy spotted status icons.
      "removeSpottedIndicator": true,
      // Transparency of the enemy spotted status icons.
      "spottedIndicatorAlpha": 100,
      // Offset of X value for enemy spotted status icons.
      "spottedIndicatorOffsetX": 0,
      // Offset of Y value for enemy spotted status icons.
      "spottedIndicatorOffsetY": 0,
      // true - don't change players positions on dead (default false).
      "fixedPosition": true,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Set of formats for left panel (extended format supported, see above).
      "extraFieldsLeft": [
        ${"def.hpBarBg"},
        ${"def.hpBar"},
        ${"def.hp"},
        ${"def.clanIcon"},
        ${"def.xvmUserMarker"},
        ${"def.xmqpServiceMarker"}
      ],
      // Set of formats for right panel (extended format supported, see above).
      "extraFieldsRight": [
        ${"def.hpBarBg"},
        ${"def.hpBar"},
        ${"def.hp"},
        ${"def.clanIcon"},
        ${"def.xvmUserMarker"},
        ${"def.enemySpottedMarker"}
      ]
    },
    // Options for the "medium2" panels - the second of the medium panels.
    "medium2": {
      // false - disable.
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle", "prestige".
      "standardFields": [ "frags", "vehicle" ],
      // Width of area for switching to "large" mode on mouse over.
      "expandAreaWidth": 230,
      // true - disable platoon/rank icons.
      "removeSquadIcon": false,
      // Transparency of the squad icon.
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      "vehicleIconOffsetXLeft": 0,
      "vehicleIconOffsetXRight": 0,
      // Offset of X value for vehicle level.
      "vehicleLevelOffsetXLeft": 0,
      "vehicleLevelOffsetXRight": 0,
      // Transparency of vehicle level.
      "vehicleLevelAlpha": 100,
      // Offset of X value for frags column.
      "fragsOffsetXLeft": 0,
      "fragsOffsetXRight": 0,
      // Width of the frags column. Default is 24.
      "fragsWidth": 24,
      // Display format for frags (macros allowed, see macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      "fragsShadowLeft": null,
      "fragsShadowRight": null,
      // Offset of X value for badge column.
      "rankBadgeOffsetXLeft": 0,
      "rankBadgeOffsetXRight": 0,
      // Width of the badge column. Default is 24.
      "rankBadgeWidth": 24,
      // Transparency of the badge icons.
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      "nickOffsetXLeft": 0,
      "nickOffsetXRight": 0,
      // Minimum width of the player name column. Default is 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      "nickMaxWidth": 158,
      // Display format for player nickname (macros allowed, see macros.txt).
      "nickFormatLeft": "",
      "nickFormatRight": "",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      "nickShadowLeft": null,
      "nickShadowRight": null,
      // Offset of X value for prestige level.
      "prestigeOffsetXLeft": 0,
      "prestigeOffsetXRight": 0,
      // Offset of X value for vehicle name column.
      "vehicleOffsetXLeft": 0,
      "vehicleOffsetXRight": 0,
      // Width of the vehicle name column. Default is 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      "vehicleFormatLeft": "<font alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      "vehicleFormatRight": "<font alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      // true - disable enemy spotted status icons.
      "removeSpottedIndicator": true,
      // Transparency of the enemy spotted status icons.
      "spottedIndicatorAlpha": 100,
      // Offset of X value for enemy spotted status icons.
      "spottedIndicatorOffsetX": 0,
      // Offset of Y value for enemy spotted status icons.
      "spottedIndicatorOffsetY": 0,
      // true - don't change players positions on dead (default false).
      "fixedPosition": true,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Set of formats for left panel (extended format supported, see above).
      "extraFieldsLeft": [
        ${"def.hpBarBg"},
        ${"def.hpBar"},
        ${"def.hp"},
        ${"def.clanIcon"},
        ${"def.xvmUserMarker"},
        ${"def.xmqpServiceMarker"}
      ],
      // Set of formats for right panel (extended format supported, see above).
      "extraFieldsRight": [
        ${"def.hpBarBg"},
        ${"def.hpBar"},
        ${"def.hp"},
        ${"def.clanIcon"},
        ${"def.xvmUserMarker"},
        ${"def.enemySpottedMarker"}
      ]
    },
    // Options for the "large" panels - the widest panels.
    "large": {
      // false - disable.
      // false - отключить.
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle", "prestige".
      "standardFields": [ "frags", "nick", "vehicle"],
      // true - disable platoon/rank icons.
      "removeSquadIcon": false,
      // Transparency of the squad icon.
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      "vehicleIconOffsetXLeft": 0,
      "vehicleIconOffsetXRight": 0,
      // Offset of X value for vehicle level.
      "vehicleLevelOffsetXLeft": 0,
      "vehicleLevelOffsetXRight": 0,
      // Transparency of vehicle level.
      "vehicleLevelAlpha": 100,
      // Offset of X value for frags column.
      "fragsOffsetXLeft": 0,
      "fragsOffsetXRight": 0,
      // Width of the frags column. Default is 24.
      "fragsWidth": 24,
      // Display format for frags (macros allowed, see macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      "fragsShadowLeft": null,
      "fragsShadowRight": null,
      // Offset of X value for badge column.
      "rankBadgeOffsetXLeft": 0,
      "rankBadgeOffsetXRight": 0,
      // Width of the badge column. Default is 24.
      "rankBadgeWidth": 24,
      // Transparency of the badge icons.
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      "nickOffsetXLeft": 0,
      "nickOffsetXRight": 0,
      // Minimum width of the player name column. Default is 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column, Default is 158.
      "nickMaxWidth": 158,
      // Display format for player nickname (macros allowed, see macros.txt).
      "nickFormatLeft": "{{name%.{{anonym?17|{{xvm-stat?{{r_size>2?15|18}}|20}}}}s~..}}{{anonym? <font face='xvm' size='13'>&#x11E;</font>}} <font alpha='#A0'>{{clan}}</font>",
      "nickFormatRight": "<font alpha='#A0'>{{clan}}</font> {{name%.{{xvm-stat?{{r_size>2?15|18}}|20}}s~..}}",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      "nickShadowLeft": null,
      "nickShadowRight": null,
      // Offset of X value for prestige level.
      "prestigeOffsetXLeft": 0,
      "prestigeOffsetXRight": 0,
      // Offset of X value for vehicle name column.
      "vehicleOffsetXLeft": 0,
      "vehicleOffsetXRight": 0,
      // Width of the vehicle name column. Default is 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      "vehicleFormatLeft": "{{vehicle}}",
      "vehicleFormatRight": "{{vehicle}}",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      // true - disable enemy spotted status icons.
      "removeSpottedIndicator": true,
      // Transparency of the enemy spotted status icons.
      "spottedIndicatorAlpha": 100,
      // Offset of X value for enemy spotted status icons.
      "spottedIndicatorOffsetX": 0,
      // Offset of Y value for enemy spotted status icons.
      "spottedIndicatorOffsetY": 0,
      // true - don't change players positions on dead (default false).
      "fixedPosition": true,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Set of formats for left panel (extended format supported, see above).
      "extraFieldsLeft": [
        ${"def.hpBarBg"},
        ${"def.hpBar"},
        ${"def.hp"},
        ${"def.clanIcon"},
        ${"def.xvmUserMarker"},
        ${"def.xmqpServiceMarker"}
      ],
      // Set of formats for right panel (extended format supported, see above).
      "extraFieldsRight": [
        ${"def.hpBarBg"},
        ${"def.hpBar"},
        ${"def.hp"},
        ${"def.clanIcon"},
        ${"def.xvmUserMarker"},
        ${"def.enemySpottedMarker"}
      ]
    }
  }
}
