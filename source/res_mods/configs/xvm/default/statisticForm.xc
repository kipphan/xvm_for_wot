/**
 * Parameters of the Battle Statistics form.
 */
{
  "templates": {
    // Clan icon definition.
    "clanIcon": {
      "enabled": true,
      "x": 65, "y": 6, "width": 16, "height": 16, "align": "center", "alpha": 90, "bindToIcon": true,
      "src": "{{clanicon}}"
    },
    // Rank badge definition.
    "rankBadgeIcon": {
      "enabled": true,
      "x": -28, "y": 0, "width": 24, "height": 24, "alpha": "{{alive?100|50}}",
      "src": "img://gui/maps/icons/library/badges/24x24/badge_{{rankBadgeId}}.png"
    },
    "bpStage": {
      "enabled": true,
      "x": -28, "y": 0, "width": 24, "height": 24, "alpha": "{{alive?100|50}}",
      "textFormat": { "color": "0xD4CD79", "size": 11, "align": "center" },
      "format": "{{rankBadgeId=90?{{bp-stage}}}}"
    }
  },
  "statisticForm": {
    // true - disable platoon/rank icons.
    "removeSquadIcon": false,
    // true - disable badge icons.
    "removeRankBadgeIcon": true,
    // true - disable alpha/beta testers icons.
    "removeTesterIcon": false,
    // true - hide elite levels.
    "removePrestigeLevel": true,
    // Opacity percentage of vehicle icon. 0 - transparent ... 100 - opaque.
    "vehicleIconAlpha": 100,
    // true - disable vehicle level indicator.
    "removeVehicleLevel": false,
    // true - disable vehicle type icon. This space will be used for formatted vehicle field.
    "removeVehicleTypeIcon": false,
    // true - disable player status icon.
    "removePlayerStatusIcon": false,
    // Show border for name field (useful for config tuning).
    "nameFieldShowBorder": false,
    // Show border for vehicle field (useful for config tuning).
    "vehicleFieldShowBorder": false,
    // Show border for frags field (useful for config tuning).
    "fragsFieldShowBorder": false,
    // X offset for allies squad icons.
    "squadIconOffsetXLeft": -1,
    // X offset for enemies squad icons.
    "squadIconOffsetXRight": 0,
    // X offset for allies player names field.
    "nameFieldOffsetXLeft": -15,
    // X offset for enemies player names field.
    "nameFieldOffsetXRight": -15,
    // Width of allies player names field.
    "nameFieldWidthLeft": 200,
    // Width of enemies names field.
    "nameFieldWidthRight": 200,
    // X offset for "formatLeftVehicle" field.
    "vehicleFieldOffsetXLeft": 55,
    // X offset for "formatRightVehicle" field.
    "vehicleFieldOffsetXRight": 36,
    // Width of "formatLeftVehicle" field.
    "vehicleFieldWidthLeft": 160,
    // Width of "formatRightVehicle" field.
    "vehicleFieldWidthRight": 160,
    // X offset for allies vehicle icons.
    "vehicleIconOffsetXLeft": 31,
    // X offset for enemies vehicle icons.
    "vehicleIconOffsetXRight": 27,
    // X offset for allies elite levels icons.
    "prestigeOffsetXLeft": 26,
    // X offset for enemies elite levels icons.
    "prestigeOffsetXRight": 26,
    // X offset for allies frags.
    "fragsFieldOffsetXLeft": 19,
    // X offset for enemies frags.
    "fragsFieldOffsetXRight": 15,
    // Width of frags field for allies.
    "fragsFieldWidthLeft": 30,
    // Width of frags field for enemies.
    "fragsFieldWidthRight": 30,
    // Display format for the left panel (macros allowed, see macros.txt).
    "formatLeftNick": "{{name%.{{anonym?13|20}}s~..}}{{anonym? <font face='xvm' size='13'><b>&#x11E;</b></font>}} <font alpha='#A0'>{{clan}}</font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    "formatRightNick": "{{name%.20s~..}}<font alpha='#A0'>{{clan}}</font>",
    // Display format for the left panel (macros allowed, see macros.txt).
    "formatLeftVehicle": "{{vehicle}}<font face='mono' size='{{xvm-stat?13|0}}'> <font color='{{c:kb}}'>{{kb%2d~k|--k}}</font> <font color='{{c:xr}}'>{{r}}</font> <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    "formatRightVehicle": "<font face='mono' size='{{xvm-stat?13|0}}'><font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font> <font color='{{c:xr}}'>{{r}}</font> <font color='{{c:kb}}'>{{kb%2d~k|--k}}</font> </font>{{vehicle}}",
    // Display format for the left panel (macros allowed, see macros.txt).
    "formatLeftFrags": "{{frags}}",
    // Display format for the right panel (macros allowed, see macros.txt).
    "formatRightFrags": "{{frags}}",
    // Extra fields. Fields are placed one above the other.
    // Set of formats for left panel (extended format supported, see extra-field.txt).
    "extraFieldsLeft": [
      ${"templates.clanIcon"},
      ${"templates.rankBadgeIcon"},
      ${"templates.bpStage"}
    ],
    // Set of formats for right panel (extended format supported, see extra-field.txt).
    "extraFieldsRight": [
      ${"templates.clanIcon"},
      ${"templates.rankBadgeIcon"},
      ${"templates.bpStage"}
    ]
  }
}
