/**
 * ProMod Over Target Marker Dead Extended
 * Updated 15.12.2016 by OldSkool
 */

/**
 * ProMod Over Target Marker Extended
 * Updated 15.12.2016 by OldSkool
 */
 
{
  // Definitions
  "def": {
    "damageText": {
      "enabled": true,
      "x": 0,
      "y": -40,
      "alpha": 100,
      // Font options.
      "textFormat": {
        "font": "$FieldFont",
        "size": 18,
        "color": null,
        "align": "center",              
        "bold": false,                  
        "italic": false                
      },
      // Shadow options.
      "shadow": {
        // false - no shadow
        "enabled": true,
        "distance": 0,
        "angle": 45,
        "color": "0x000000",
        "alpha": 100,
        "blur": 3, 
        "strength": 1
      },
      "speed": 2,
      "maxRange": 40,
      "damageMessage": "-{{dmg}}",
      "blowupMessage": "BLOWUP!"
    },
    // Text field with the name of the tank.
    "tankName": {
      "name": "Tank name",
      "enabled": true,
      "x": 0,
      "y": -36,
      "alpha": 100,
      "textFormat": {
        "font": "$FieldFont",
        "size": 13,
        "color": null,
        "align": "center",
        "bold": false,
        "italic": false
      },
      "shadow": {
        "enabled": true,
        "distance": 0,
        "angle": 45,
        "color": "0x000000",
        "alpha": 100,
        "blur": 6,
        "strength": 2
      },
      "format": "{{vehicle}}{{turret}}"
    },
    // Text field with the name of the player.
    "playerName": {
      "name": "Player name",
      "enabled": true,
      "x": 0,
      "y": -20,
      "alpha": 100,
      // Font options.
      "textFormat": {
        "font": "$FieldFont",
        "size": 13,
        "color": null,
        "align": "center",
        "bold": false,
        "italic": false
      },
      // Shadow options.
      "shadow": {
        // false - no shadow
        "enabled": true,
        "distance": 0,
        "angle": 45,
        "color": "0x000000",
        "alpha": 100,
        "blur": 6,
        "strength": 2
      },
      "format": "{{name}}"
    },
    // Text field with the remaining health.
    "tankHp": {
      "name": "Tank HP",
      "enabled": true,
      "x": 0,
      "y": -15,
      "alpha": 100,
      "textFormat": {
        "font": "$FieldFont",
        "size": 11,
        "color": "0xD9D9D9",
        "align": "center",
        "bold": true,
        "italic": false
      },
      "shadow": {
        "enabled": true,
        "distance": 0,
        "angle": 45,
        "color": "0x000000",
        "alpha": 100,
        "blur": 4,
        "strength": 1
      },
      "format": "{{hp}} / {{hp-max}}"
    },
    // Text field with rating.
    "rating": {
      "name": "Rating",
      "enabled": false,
      "x": -33,
      "y": -20,
      "alpha": "{{xvm-stat?100|0}}",
      "textFormat": {
        "font": "xvm",
        "size": 16,
        "color": "{{c:r|#999999}}",
        "align": "right",
        "bold": false,
        "italic": false
      },
      "shadow": {
        "enabled": true,
        "distance": 0,
        "angle": 45,
        "color": "0x000000",
        "alpha": 100,
        "blur": 2,
        "strength": 1
      },
      "format": "&#x115;"
    },
    // Text field with the XMQP event marker.
    "xmqpEvent": {
      "name": "xmqp event",
      "enabled": true,
      "x": 0,
      "y": "{{battletype?-71|{{squad?-71|-56}}}}",
      "alpha": 100,
      // Font options.
      "textFormat": {
        "font": "xvm",
        "size": 23,
        "color": "0xFFBB00",
        "align": "center",
        "bold": false,
        "italic": false
      },
      // Shadow options.
      "shadow": {
        // false - no shadow
        "distance": 0,
        "angle": 45,
        "color": "0x000000",
        "alpha": 100,
        "blur": 4,
        "strength": 1
      },
      "format": "<font color='{{x-spotted?#FFBB00|#FFFFFF}}' alpha='{{x-spotted?#FF|#80}}'>{{x-spotted?&#x70;|{{x-sense-on?&#x70;}}}}</font> {{x-overturned?&#x112;}}"
    },
	//WN8 Marker
	   "WN8": {
	   "name": "WN8",
	   "enabled": true,
	   "x": -31,
	   "y": -14,
       "alpha": 80,
	 // Font options.
	   "textFormat": {
	   "font": "Wingdings",
	   "size": 10,
       "color": "{{c:r}}",
       "align": "left", 
	   "bold": false, 
	   "italic": false 
	   },
	 // Shadow options.
      "shadow": {
        "enabled": true,
        "distance": 0,
        "angle": 45,
        "color": "0x000000",
        "alpha": 100,
        "blur": 2,
        "strength": 1
	   },
	   "format": "n"
    }
  },
  "ally": {
  
    // Type of vehicle icon (HT/MT/LT/TD/Arty).
    "vehicleIcon": {
      // false - disable
      "enabled": true,
      // true - show speaker even if enabled=false
      "showSpeaker": false,
      // Axis field coordinates
      "x": 0,
      "y": -16,
      // Opacity.
      "alpha": 100,
      "maxScale": 100,
      "offsetX": 0,
      "offsetY": 0
    },
    "healthBar": {
      "enabled": false,
      "x": -36,
      "y": -33,
      "alpha": 100,
      "color": null,
      "lcolor": null,
      "width": 70,
      "height": 5,
      "border": {
        "alpha": 35,
        "color": "0x000000",
        "size": 1
      },
      "fill": {
        "alpha": 45
      },
      "damage": {
        "alpha": 100,
        "color": "{{c:dmg}}",
        "fade": 1
      }
    },
    // Floating damage values for ally, player, squadman.
    "damageText": {
      "$ref": { "path":"def.damageText" }
    },
    "damageTextPlayer": {
      "$ref": { "path":"def.damageText" }
    },
    "damageTextSquadman": {
      "$ref": { "path":"def.damageText" }
    },
    // Vehicle contour icon.
    "contourIcon": {
      // false - disable
      "enabled": false,
      // Axis field coordinates.
      "x": 6,
      "y": -65,
      "alpha": 100,
      "color": null,
      "amount": 0
    },
    // Vehicle tier.
    "levelIcon": {
      "enabled": false,
      "x": 0,
      "y": -15,
      "alpha": 100
    },
    // Markers "Help!" and "Attack!".
    "actionMarker": {
      "enabled": true,
      "x": 0,
      "y": -67,
      "alpha": 100
    },
    // Block of text fields.
    "textFields": [
      //${ "def.tankName" },
      ${ "def.playerName" },
      //${ "def.tankHp"},
      //${ "def.WN8" },
      ${ "def.xmqpEvent" }
    ]
  },
  "enemy": {
    // Type of vehicle icon (HT/MT/LT/TD/Arty).
    "vehicleIcon": {
      "enabled": true,
      "showSpeaker": false,
      "x": 0,
      "y": -16,
      "alpha": 100,
      "maxScale": 100,
      "offsetX": 0,
      "offsetY": 0
    },
    "healthBar": {
      "enabled": false,
      "x": -36,
      "y": -33,
      "alpha": 100,
      "color": null,
      "lcolor": null,
      "width": 70,
      "height": 5,
      "border": {
        "alpha": 35,
        "color": "0x000000",
        "size": 1
      },
      "fill": {
        "alpha": 50
      },
      "damage": {
        "alpha": 100,
        "color": "{{c:dmg}}",
        "fade": 1
      }
    },
    // Floating damage values for ally, player, squadman.
    "damageText": {
      "$ref": { "path":"def.damageText" }
    },
    "damageTextPlayer": {
      "$ref": { "path":"def.damageText" }
    },
    "damageTextSquadman": {
      "$ref": { "path":"def.damageText" }
    },
    // Vehicle contour icon.
    "contourIcon": {
      "enabled": false,
      "x": 6,
      "y": -65,
      "alpha": 100,
      "color": null,
      "amount": 0
    },
    // Vehicle tier.
    "levelIcon": {
      "enabled": false,
      "x": 0,
      "y": -15,
      "alpha": 100
    },
    // Markers "Help!" and "Attack!".
    "actionMarker": {
      "enabled": true,
      "x": 0,
      "y": -67,
      "alpha": 100
    },
    // Block of text fields.
    "textFields": [
	//${ "def.tankName" },
      ${ "def.playerName" }
      //${ "def.tankHp" },
      //${ "def.WN8" }
    ]
  }
}