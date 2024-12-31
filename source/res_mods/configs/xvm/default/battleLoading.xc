/**
 * Parameters of the Battle Loading screen.
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

  "battleLoading": {

    // Format of clock on the Battle Loading Screen.
    "clockFormat": "",

    // true - enable display of battle tier.
    "showBattleTier": false,

    // true - disable Platoon icons. This blank space can house, for example, clan logos.
    "removeSquadIcon": false,

    // true - disable rank badge icons
    "removeRankBadgeIcon": false,
	
    // true - disable vehicle level indicator.
    "removeVehicleLevel": false,

    // true - disable vehicle type icon. This space will be used for formatted vehicle field.
    "removeVehicleTypeIcon": false,

    // Show border for name field (useful for config tuning)
    "nameFieldShowBorder": false,

    // Show border for vehicle field (useful for config tuning)
    "vehicleFieldShowBorder": false,

    // X offset for allies squad icons
    "squadIconOffsetXLeft": 0,

    // X offset for enemies squad icons field
    "squadIconOffsetXRight": 0,

    // X offset for allies player names field
    "nameFieldOffsetXLeft": -11,

    // Width delta for allies player names field
    "nameFieldWidthDeltaLeft": 0,

    // X offset for enemies player names field
    "nameFieldOffsetXRight": -14,

    // Width delta for enemies player names field
    "nameFieldWidthDeltaRight": 0,

    // X offset for allies vehicle names field
    "vehicleFieldOffsetXLeft": -25,

    // Width delta for allies vehicle names field
    "vehicleFieldWidthDeltaLeft": 0,

    // X offset for enemies vehicle names field
    "vehicleFieldOffsetXRight": -25,

    // Width delta for enemies vehicle names field
    "vehicleFieldWidthDeltaRight": 0,

    // X offset for allies vehicle icons
    "vehicleIconOffsetXLeft": 0,

    // X offset for enemies vehicle icons
    "vehicleIconOffsetXRight": 0,

    // false - disable highlight of icons during battle start depends on ready state.
    "darkenNotReadyIcon": true,

    // Display format for the left panel (macros allowed, see macros.txt).
    "formatLeftNick": "{{name%.20s~..}}<font alpha='#A0'>{{clan}}</font>",
	
    // Display format for the right panel (macros allowed, see macros.txt).
    "formatRightNick": "{{name%.20s~..}}<font alpha='#A0'>{{clan}}</font>",
	
    // Display format for the left panel (macros allowed, see macros.txt).
    "formatLeftVehicle": "{{vehicle}}",
	
    // Display format for the right panel (macros allowed, see macros.txt).
    "formatRightVehicle": "{{vehicle}}",

    // TODO
    // Extra fields. Fields are placed one above the other.
    "extraFieldsLeft": [
      ${"templates.clanIcon"}
    ],

    // Set of formats for right panel (extended format supported, see above)
    "extraFieldsRight": [
      ${"templates.clanIcon"}
    ]
  }
}