/**
 * Minimap labels.
 * ProMod - Updated 02.09.2016
 */

{

  // Textfields for units on minimap.
  "def": {

    // Fields default format
    "defaultItem": {
      "enabled": true,
      "flags": [ "player", "ally", "squadman", "enemy", "teamKiller", "lost", "spotted", "alive", "dead" ],
      "shadow": { "distance": 0, "angle": 45, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 4 },
      "alpha": 100,
      "x": 0,
      "y": 0,
      "width": 100,
      "height": 40,
      "align": "left",
      "valign": "top",
      "antiAliasType": "normal",
      "bgColor": null,
      "borderColor": null
    },

    // Vehicle type, visible
    "vtypeSpotted": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "spotted", "alive" ],
      "layer": "top",
      "textFormat": { "font": "xvm", "size": 13, "align": "center", "valign": "center" },
      "format": "<font color='{{.minimap.labelsData.colors.dot.{{sys-color-key}}}}'>{{.minimap.labelsData.vtype.{{vtype-key}}}}</font>",
      "align": "center",
      "valign": "center"
    },

    // Vehicle name, visible
    "vehicleSpotted": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "spotted", "alive" ],
      "textFormat": { "size": 8 },
      "format": "<font color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'>{{vehicle}}</font>",
      "x": 2,
      "y": "{{squad?7|-1}}"
    },

    // Vehicle name, visible, company config
    "vehicleSpottedCompany": {
      "$ref": { "path":"def.vehicleSpotted" },
      "y": "{{ally?{{battletype?7|{{squad?7|-1}}}}|-1}}"
    },

    // Player nickname, visible
    "nickSpotted": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "squadman", "spotted", "alive" ],
      "textFormat": { "size": 8 },
      "format": "<font color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'><i>{{name%.7s~..}}</i></font>",
      "x": 2,
      "y": -1
    },

    // Player nickname, visible, company config
    "nickSpottedCompany": {
      "$ref": { "path": "def.nickSpotted" },
      "flags": [ "ally", "squadman", "teamKiller", "spotted", "alive" ],
      "format": "<font size='{{battletype?8|{{squad?8|0}}}}' color='{{squad?{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}|{{tk?{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}|#BFBFBF}}}}'><i>{{name%.7s~..}}</i></font>"
    },

    // XMQP event marker.
    "xmqpEvent": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "squadman", "teamKiller", "spotted", "alive" ],
      "textFormat": { "font": "xvm", "size": 8, "color": "0xFFBB00" },
      "format": "{{x-spotted?&#x70;&nbsp;}}{{x-overturned?&#x112;}}",
      "x": 3,
      "y": -7
    },

	// HP spotted
	"hp-ratioSpotted" : {
	  "$ref": { "path":"def.defaultItem" },
	  "x": -9,
      "y": -11,	  
	  "flags": [ "ally", "enemy", "squadman", "teamKiller", "spotted", "alive" ],
      "textFormat": { "font": "dynamic2", "size": 19 },		  
	  "format": "<font color='{{.minimap.labelsData.colors.dot.{{sys-color-key}}}}'>{{hp-ratio%.335a|&#x1B3;}}</font>"
	},	
	
    // Vehicle type, missing
    "vtypeLost": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "lost", "alive" ],
      "layer": "bottom",
      "textFormat": { "font": "xvm", "size": 13, "align": "center", "valign": "center" },
      "format": "<font color='{{.minimap.labelsData.colors.lostDot.{{sys-color-key}}}}'>{{.minimap.labelsData.vtype.{{vtype-key}}}}</font>",
      "align": "center",
      "valign": "center",
      "alpha": 75
    },

    // Vehicle name, missing
    "vehicleLost": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "lost", "alive" ],
      "layer": "bottom",
      "textFormat": { "size": 8 },
      "format": "<font color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'><i>{{vehicle}}</i></font>",
      "alpha": 85,
      "x": 2,
      "y": -1
    },

    // Player nickname, missing
    "nickLost": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "squadman", "lost", "alive" ],
      "layer": "bottom",
      "textFormat": { "size": 8 },
      "format": "<font color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'><i>{{name%.7s~..}}</i></font>",
      "alpha": 85,
      "x": 2,
      "y": -9
    },

	// HP Ratio Lost
	"hp-ratioLost" : {
      "$ref": { "path":"def.defaultItem" },
	  "x": -9,
      "y": -11,	  
      "alpha": 85,	  
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "lost", "alive" ],
      "layer": "bottom",
      "textFormat": { "font": "dynamic2", "size": 19 },	  
	  "format": "<font color='{{.minimap.labelsData.colors.lostDot.{{sys-color-key}}}}'>{{hp-ratio%.335a|&#x1B3;}}</font>"	  
	},	
	
    // Vehicle type, dead
    "vtypeDead": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "dead" ],
      "layer": "substrate",
      "textFormat": { "font": "xvm", "size": 8, "align": "center", "valign": "center" },
      "format": "<font color='{{.minimap.labelsData.colors.lostDot.{{sys-color-key}}}}'>&#x44;</font>",
      "shadow": { "$ref": { "path":"def.defaultItem.shadow" }, "strength": 3 },
      "align": "center",
      "valign": "center",
      "alpha": 90
    },

    // Vehicle name, dead
    "vehicleDead": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "squadman", "dead" ],
      "layer": "substrate",
      "textFormat": { "size": 8 },
      "format": "<font color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'>{{vehicle}}</font>",
      "alpha": 85,
      "x": 2,
      "y": -1
    },

    // Player nickname, dead
    "nickDead": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "squadman", "dead" ],
      "layer": "substrate",
      "textFormat": { "size": 8 },
      "format": "<font color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'><i>{{name%.7s~..}}</i></font>",
      "shadow": { "$ref": { "path":"def.defaultItem.shadow" }, "strength": 3 },
      "x": 2,
      "y": -9
    }
  }
}