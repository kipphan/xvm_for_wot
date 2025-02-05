{
  "xmqpServiceMarker": {
    "x": 100, 
	"y": 1, 
	"align": "center", 
	"bindToIcon": true,
    "format": "<font face='xvm' size='23' color='{{alive?{{x-spotted?#FFBB00|{{x-sense-on?#D9D9D9|#BFBFBF}}}}|#FFFFFF}}' alpha='{{alive?#FF|#80}}'>{{alive?{{x-spotted?&#x70;|{{x-sense-on?&#x70;|{{x-enabled?&#x7A;}}}}}}|&#x76;}}</font>",
    "shadow": {}
  },
  "clanIcon": {
    "enabled": true,
    "x": 125, 
	"y": 6, 
	"width": 16, 
	"height": 16, 
	"align": "center", 
	"alpha": 90, 
	"bindToIcon": true,
    "src": "{{clanicon}}"
  },
  "playersHPbarLarge": {
      "x": 0, 
	  "y": 11, 
	  "valign": "center", 
	  "height": 21, 
	  "width": "{{hp-ratio:195}}", 
	  "bgColor": "{{player?{{.colors.damage.player_enemy_hit}}|{{c:system}}}}",
	  "alpha": "{{alive?50|0}}"
  },
  "playersHPbarMedium": {
      "x": 0, 
	  "y": 11, 
	  "valign": "center", 
	  "height": 21, 
	  "width": "{{hp-ratio:145}}", 
	  "bgColor": "{{player?{{.colors.damage.player_enemy_hit}}|{{c:system}}}}",
	  "alpha": "{{alive?50|0}}"
  },
  "playersHPbarShort": {
      "x": 0, 
	  "y": 11, 
	  "valign": "center", 
	  "height": 21, 
	  "width": "{{hp-ratio:85}}", 
	  "bgColor": "{{player?{{.colors.damage.player_enemy_hit}}|{{c:system}}}}",
	  "alpha": "{{alive?50|0}}"
  },
  "backgroundLarge": {
      "x": 0, 
	  "y": 11, 
	  "valign": "center", 
	  "height": 21, 
	  "width": 195, 
	  "bgColor": "0x333333",
	  "alpha": "{{alive?50|20}}",
	  "borderColor": "0xFFFFFF"
  },
  "backgroundMedium": {
      "x": 0, 
	  "y": 11, 
	  "valign": "center", 
	  "height": 21, 
	  "width": 145, 
	  "bgColor": "0x333333",
	  "alpha": "{{alive?50|20}}",
	  "borderColor": "0xFFFFFF"
  },
  "backgroundShort": {
      "x": 0, 
	  "y": 11, 
	  "valign": "center", 
	  "height": 21, 
	  "width": 85, 
	  "bgColor": "0x333333",
	  "alpha": "{{alive?50|20}}",
	  "borderColor": "0xFFFFFF"
  },

  "playersPanel": {
    "enabled": true,
    "alpha": 0,
    "iconAlpha": 100,
    "removeSelectedBackground": true,
    "removePanelsModeSwitcher": false,
    "startMode": "large",
    "altMode": null,
    "none": {
      "enabled": true,
      "expandAreaWidth": 230,
      "layout": "vertical",
      "extraFields": {
        "leftPanel": {
          "x": 0, // from left side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          "formats": []
        },
        "rightPanel": {
          "x": 0, // from right side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          "formats": []
        }
      }
    },
    "short": {
      "enabled": true,
      "standardFields": [ "frags", "prestige"],
      "removeSquadIcon": false,
      "vehicleIconXOffsetLeft": 0,
      "vehicleIconXOffsetRight": 0,
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      "vehicleLevelAlpha": 0,
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      "fragsWidth": 25,
      "fragsFormatLeft": "<font color='#FFFFFF'><b>{{frags}}</b></font>",
      "fragsFormatRight": "<font color='#FFFFFF'><b>{{frags}}</b></font>",
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      "nickMinWidth": 65,
      "nickMaxWidth": 65,
      "nickFormatLeft": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{name%.10s~..}}</font>",
      "nickFormatRight": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{name%.10s~..}}</font>",
      "prestigeOffsetXLeft": 47,
      "prestigeOffsetXRight": 25,
	  "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      "vehicleWidth": 55,
      "vehicleFormatLeft": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{hp%4.4s|-----}}</font>",
      "vehicleFormatRight": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{hp%4.4s|-----}}</font>",
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      "fixedPosition": true,
      "extraFieldsLeft": [
	    ${"backgroundShort"},
	    ${"playersHPbarShort"},
        ${"xmqpServiceMarker"}
      ],
      "extraFieldsRight": [
	    ${"backgroundShort"},
	    ${"playersHPbarShort"}
      ]
    },
    "medium": {
      "enabled": true,
      "standardFields": [ "frags", "nick", "prestige"],
      "removeSquadIcon": false,
      "vehicleIconXOffsetLeft": 0,
      "vehicleIconXOffsetRight": 0,
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      "vehicleLevelAlpha": 0,
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      "fragsWidth": 25,
      "fragsFormatLeft": "<font color='#FFFFFF'><b>{{frags}}</b></font>",
      "fragsFormatRight": "<font color='#FFFFFF'><b>{{frags}}</b></font>",
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      "nickMinWidth": 65,
      "nickMaxWidth": 65,
      "prestigeOffsetXLeft": 47,
      "prestigeOffsetXRight": 25,
      "nickFormatLeft": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{name%.10s~..}}</font>",
      "nickFormatRight": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{name%.10s~..}}</font>",
      "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      "vehicleWidth": 55,
      "vehicleFormatLeft": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{hp%4.4s|-----}}</font>",
      "vehicleFormatRight": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{hp%4.4s|-----}}</font>",
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      "fixedPosition": true,
      "extraFieldsLeft": [
	    ${"backgroundMedium"},
	    ${"playersHPbarMedium"},
        ${"xmqpServiceMarker"}
      ],
      "extraFieldsRight": [
	    ${"backgroundMedium"},
	    ${"playersHPbarMedium"}
      ]
    },
    "medium2": {
      "enabled": true,
      "standardFields": [ "frags", "vehicle", "prestige"],
      "removeSquadIcon": false,
      "vehicleIconXOffsetLeft": 0,
      "vehicleIconXOffsetRight": 0,
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      "vehicleLevelAlpha": 0,
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      "fragsWidth": 25,
      "fragsFormatLeft": "<font color='#FFFFFF'><b>{{frags}}</b></font>",
      "fragsFormatRight": "<font color='#FFFFFF'><b>{{frags}}</b></font>",
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      "nickMinWidth": 65,
      "nickMaxWidth": 65,
      "nickFormatLeft": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{vehicle%.10s~..}}</font>",
      "nickFormatRight": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{vehicle%.10s~..}}</font>",
      "prestigeOffsetXLeft": 47,
      "prestigeOffsetXRight": 25,
	  "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      "vehicleWidth": 55,
      "vehicleFormatLeft": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{hp%4.4s|-----}}</font>",
      "vehicleFormatRight": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{hp%4.4s|-----}}</font>",
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      "fixedPosition": true,
      "extraFieldsLeft": [
	    ${"backgroundMedium"},
	    ${"playersHPbarMedium"},
        ${"xmqpServiceMarker"}
      ],
      "extraFieldsRight": [
	    ${"backgroundMedium"},
	    ${"playersHPbarMedium"}
      ]
    },
    "large": {
      "enabled": true,
      "standardFields": ["frags", "nick", "vehicle", "prestige"],
      "removeSquadIcon": false,
      "vehicleIconXOffsetLeft": 0,
      "vehicleIconXOffsetRight": 0,
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      "vehicleLevelAlpha": 0,
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      "fragsWidth": 25,
      "fragsFormatLeft": "<font color='#FFFFFF'><b>{{frags}}</b></font>",
      "fragsFormatRight": "<font color='#FFFFFF'><b>{{frags}}</b></font>",
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      "nickMinWidth": 110,
      "nickMaxWidth": 110,
      "nickFormatLeft": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{name%.12s~..}}</font><font color='#FFCC66'>{{clan}}</font>",
      "nickFormatRight": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{name%.12s~..}}</font><font color='#FFCC66'>{{clan}}</font>",
      "prestigeOffsetXLeft": 47,
      "prestigeOffsetXRight": 25,
	  "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      "vehicleWidth": 65,
      "vehicleFormatLeft": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{hp%4.4s|-----}}</font>",
      "vehicleFormatRight": "<font color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{hp%4.4s|-----}}</font>",
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      "fixedPosition": true,
      "extraFieldsLeft": [
	    ${"backgroundLarge"},
	    ${"playersHPbarLarge"},
        ${"xmqpServiceMarker"},
		${"clanIcon"}
      ],
      "extraFieldsRight": [
	    ${"backgroundLarge"},
	    ${"playersHPbarLarge"},
		${"clanIcon"}
      ]
    }
  }
}
