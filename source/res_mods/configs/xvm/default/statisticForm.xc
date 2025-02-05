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
    }
  },

  "statisticForm": {

    // true - Enable display of battle tier.
    "showBattleTier": false,

    // true - disable platoon icons.
    "removeSquadIcon": false,

    // true - disable badge icons.
    "removeRankBadgeIcon": false,

    // true - disable alpha/beta testers icons.
    "removeTesterIcon": false,

    // true - hide elite levels.
    "removePrestigeLevel": false,

    // Opacity percentage of vehicle icon. 0 - transparent ... 100 - opaque.
    "vehicleIconAlpha": 100,

    // true - disable vehicle level indicator.
    "removeVehicleLevel": false,

    // true - disable vehicle type icon. This space will be used for formatted vehicle field.
    "removeVehicleTypeIcon": false,

    // Show border for name field (useful for config tuning)
    "nameFieldShowBorder": false,

    // Show border for vehicle field (useful for config tuning)
    "vehicleFieldShowBorder": false,

    // Show border for frags field (useful for config tuning)
    "fragsFieldShowBorder": false,

    // X offset for allies squad icons
    "squadIconOffsetXLeft": 0,

    // X offset for enemies squad icons field
    "squadIconOffsetXRight": 0,

    // X offset for allies player names field
    "nameFieldOffsetXLeft": 0,

    // X offset for enemies player names field
    "nameFieldOffsetXRight": -9,

    // Width of allies player names field
    "nameFieldWidthLeft": 200,

    // Width of enemies names field
    "nameFieldWidthRight": 200,

    // X offset for "formatLeftVehicle" field
    "vehicleFieldOffsetXLeft": 8,

    // X offset for "formatRightVehicle" field
    "vehicleFieldOffsetXRight": 5,

    // Width of "formatLeftVehicle" field
    "vehicleFieldWidthLeft": 250,

    // Width of "formatRightVehicle" field
    "vehicleFieldWidthRight": 250,

    // X offset for allies vehicle icons
    "vehicleIconOffsetXLeft": 4,

    // X offset for enemies vehicle icons
    "vehicleIconOffsetXRight": 0,

    // X offset for allies frags
    "fragsFieldOffsetXLeft": 5,

    // X offset for enemies frags
    "fragsFieldOffsetXRight": 0,

    // Width of frags field for allies
    "fragsFieldWidthLeft": 43,

    // Width of frags field for enemies
    "fragsFieldWidthRight": 43,

    // Display format for the left panel (macros allowed, see macros.txt).
    "formatLeftNick": "{{name%.20s~..}}<font alpha='#A0'>{{clan}}</font>",

    // Display format for the right panel (macros allowed, see macros.txt).
    "formatRightNick": "{{name%.20s~..}}<font alpha='#A0'>{{clan}}</font>",

    // Display format for the left panel (macros allowed, see macros.txt).
    "formatLeftVehicle": "{{vehicle}} <font color='{{c:kb}}'>{{kb%2d~k}}</font> <font color='{{c:r}}'>{{r}}</font> <font color='{{c:rating}}'>{{rating%2d~%}}</font>",

    // Display format for the right panel (macros allowed, see macros.txt).
    "formatRightVehicle": "<font color='{{c:rating}}'>{{rating%2d~%}}</font> <font color='{{c:r}}'>{{r}}</font> <font color='{{c:kb}}'>{{kb%2d~k}}</font> {{vehicle}}",

    // Display format for the left panel (macros allowed, see macros.txt).
    "formatLeftFrags": "{{frags}}",

    // Display format for the right panel (macros allowed, see macros.txt).
    "formatRightFrags": "{{frags}}",

    // Extra fields. Fields are placed one above the other.
    // Set of formats for left panel (extended format supported, see playersPanel.xc)
    "extraFieldsLeft": [
      ${"templates.clanIcon"}
    ],

    // Set of formats for right panel (extended format supported, see playersPanel.xc)
    "extraFieldsRight": [
      ${"templates.clanIcon"}
    ]
  }
}
