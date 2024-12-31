/**
  * Log of applied damage.
  * For additional settings see battleLabelsTemplates.xc
*/

{
  "hitLog": {
  
    // false - disable.
    "enabled": true,
	
    // true - show damage by oneself.
    "showSelfDamage": false,
	
    // true - show damage by allies.
    "showAllyDamage": false,
	
    // Log of applied damage.
    "log": {
	
      //true - allow to move log in battle and disallow macros for "x" and "y" settings.
      //false - disallow to move log in battle and allow macros for "x" and "y" settings.
      "moveInBattle": true,
      "x": 50,
      "y": 60,
	  
      // true - allow scrolling of the contents of the log.
      "scrollLog": true,
	  
      // Group hits by players name.
      "groupHitsByPlayer": true,

      // Number of lines.
      "lines": 15,

      // Insert order: false - insert new values to begin, true - add to end.
      "addToEnd": false,
	  
      // Type of damage (macro {{dmg-kind}}).
      "dmg-kind": {
        "shot":            "<font face='$FieldFont'>{{type-shell}}</font>",
        "fire":            "<font size='6'> </font><font face='xvm'>&#x51;</font>",
        "ramming":         "<font size='6'> </font><font face='xvm'>&#x52;</font>",
        "world_collision": "<font size='6'> </font><font face='xvm'>&#x53;</font>",
        "drowning":        "<font size='6'> </font><font face='xvm'>&#x119;</font>",
        "overturn":        "<font size='6'> </font><font face='xvm'>&#x112;</font>",
        "death_zone":      "DZ",
        "gas_attack":      "GA",
        "art_attack":      "<font face='xvm'>&#x110;</font>",
        "air_strike":      "<font face='xvm'>&#x111;</font>"
      },
	  
      // Color by damage kind (macro {{c:dmg-kind}}).
      "c:dmg-kind": {
        "shot": "#FFAA55",            // shot
        "fire": "#FF6655",            // fire
        "ramming": "#998855",         // ramming
        "world_collision": "#228855", // world collision
        "drowning": "#CCCCCC",        // drowning
        "overturn": "#CCCCCC",        // overturn
        "death_zone": "#CCCCCC",      // death zone
        "gas_attack": "#CCCCCC",      // gas attack
        "art_attack": "#CCCCCC",      // art attack
        "air_strike": "#CCCCCC"       // air strike       
      },
	  
      // Type of damage (macro {{dmg-kind-player}}). 
      "dmg-kind-player": {
        "shot":            "<font size='6'> </font><font face='xvm'>&#x50;</font>",  // shot
        "fire":            "<font size='6'> </font><font face='xvm'>&#x51;</font>",  // fire
        "ramming":         "<font size='6'> </font><font face='xvm'>&#x52;</font>",  // ramming
        "world_collision": "<font size='6'> </font><font face='xvm'>&#x53;</font>",  // world collision
        "drowning":        "<font size='6'> </font><font face='xvm'>&#x119;</font>", // drowning
        "overturn":        "<font size='6'> </font><font face='xvm'>&#x112;</font>", // overturn
        "death_zone":      "DZ",                                                     // death zone
        "gas_attack":      "GA",                                                     // gas attack
        "art_attack":      "<font face='xvm'>&#x110;</font>",                        // art attack
        "air_strike":      "<font face='xvm'>&#x111;</font>"                         // air strike
      },  
	  
      // Shell kind (macro {{type-shell}}).
      "type-shell": {
        "armor_piercing":      "<font color='{{c:costShell}}' face='$FieldFont'>{{l10n:armor_piercing}}</font>",    // armor piercing
        "high_explosive":      "<font color='{{c:costShell}}' face='$FieldFont'>{{l10n:high_explosive}}</font>",    // high explosive
        "high_explosive_stun": "<font color='{{c:costShell}}' face='$FieldFont'>{{l10n:high_explosive}}</font>",    // stunning high explosive
        "armor_piercing_cr":   "<font color='{{c:costShell}}' face='$FieldFont'>{{l10n:armor_piercing_cr}}</font>", // armor piercing composite rigid
        "armor_piercing_he":   "<font color='{{c:costShell}}' face='$FieldFont'>{{l10n:armor_piercing_he}}</font>", // armor piercing high explosive
        "hollow_charge":       "<font color='{{c:costShell}}' face='$FieldFont'>{{l10n:hollow_charge}}</font>",     // high explosive anti-tank
        "not_shell": "НД"                                                                                           // another source of damage
      },
	  
      // Color by shell kind (macro {{type-shell}}).
      "c:type-shell": {
        "armor_piercing": "#CCCCCC",    // armor piercing
        "high_explosive": "#CCCCCC",    // high explosive
		"high_explosive_stun": "#CCCCCC", // stunning high explosive
        "armor_piercing_cr": "#CCCCCC", // armor piercing composite rigid
        "armor_piercing_he": "#CCCCCC", // armor piercing high explosive
        "hollow_charge": "#CCCCCC",     // high explosive anti-tank
        "not_shell": "#CCCCCC"          // another source of damage
      },
	  
      // Vehicle type (macro {{vtype}}).
      "vtype": {
        "HT": "<img width='17' height='17' src='xvm://res/icons/class/tanks/HT.png'>",          // heavy tank
        "MT": "<img width='17' height='17' src='xvm://res/icons/class/tanks/MT.png'>",          // medium tank
        "LT": "<img width='17' height='17' src='xvm://res/icons/class/tanks/LT.png'>",          // light tank
        "TD": "<img width='17' height='17' src='xvm://res/icons/class/tanks/TD.png'>",          // tank destroyer
        "SPG": "<img width='17' height='17' src='xvm://res/icons/class/tanks/SPG.png'>",        // SPG
        "not_vehicle": "<font face='xvm'>&#x105;</font>" // another source of damage
      },
	  
      // Color by vehicle type (macro {{c:vtype}}).
      "c:vtype": {
        "HT": "#FFACAC",         // heavy tank
        "MT": "#FFF198",         // medium tank
        "LT": "#A2FF9A",         // light tank
        "TD": "#A0CFFF",         // tank destroyer
        "SPG": "#EFAEFF",        // SPG
        "not_vehicle": "#CCCCCC" // another source of damage
      },
	  
      // Part of vehicle (macro {{comp-name}}).
      "comp-name": {
        "turret": "{{l10n:turret}}",   // turret
        "hull": "{{l10n:hull}}",       // body
        "chassis": "{{l10n:chassis}}", // suspension
        "wheel": "{{l10n:wheel}}",     // wheel
        "gun": "{{l10n:gun}}",         // gun
        "unknown": ""                  // unknown
      },
	  
      // Team attachment of the targets (macro {{team-dmg}}).
      "team-dmg": {
        "ally-dmg": "",  // ally
        "enemy-dmg": "", // enemy
        "player": "",    // self damage
        "unknown": ""    // unknown
      },
	  
      // Color by team attachment of the targets (macro {{c:team-dmg}}).
      "c:team-dmg": {
        "ally-dmg": "#00EAFF",  // ally
        "enemy-dmg": "#CCCCCC", // enemy
        "player": "#228855",    // self damage
        "unknown": "#CCCCCC"    // unknown
      },
	  
      // Shell currency (macro {{costShell}}).
      "costShell": {
        "gold-shell": "",   // gold
        "silver-shell": "", // credits
        "unknown": ""       // unknown
      },
	  
      // Color by shell currency (macro {{c:costShell}}).
      "c:costShell": {
        "gold-shell":   "#FFCC66", // gold
        "silver-shell": "#CCCCCC", // credits
        "unknown":      "#FFFFFF"  // unknown
      },
	  
      // List of hits format (macros allowed, see macros.txt).
      "formatHistory": "<textformat leading='-4' tabstops='[20,50,90,150]'><font size='12'>× {{n-player}}</font><tab><font size='15'><font color='#FFCC66'>{{dmg-player}}</font> (-{{dmg}})<tab><tab> {{vtype}} {{vehicle}}</font><tab><font size='12'> ({{name}})</font> <font color='#FFCC66'><font face='xvm' size='14' color='#FF0000'>{{alive? |{{blownup?&#44;|<font size='14'>&#66;</font>}}}}</font></font></font></textformat>"
    },
	
    // Log of applied damage (alternative mode).
    "logAlt": {
      "$ref": { "path":"hitLog.log" },
      "formatHistory": ""
      //"formatHistory": "<textformat leading='-4' tabstops='[20,50,90,150]'><font size='12'>× {{n-player}}</font><tab><font size='15'><font color='#FFCC66'>{{dmg-player}}</font> (-{{dmg}})<tab> <img src='xvm://res/icons/class/tanks/{{vtype}}.png' width='17' height='17'>{{vehicle}}</font>    <font size='12'>{{name}}</font> <font color='#FFCC66'><font face='xvm' size='14' color='#FF0000'>{{alive? |{{blownup?&#44;|<font size='14'>&#66;</font>}}}}</font></font></font></textformat>"
    },
    // Background of the log of applied damage.
    "logBackground": {
      "$ref": { "path":"hitLog.log" },
      "formatHistory": "<img height='17' width='310' src='xvm://res/icons/damageLog/{{alive?no_dmg|dmg}}.png'>"
    },
    // Background of the log of applied damage (alternative mode).
    "logAltBackground": {
      "$ref": { "path":"hitLog.log" },
      "formatHistory": ""
      //"<img height='20' width='310' src='xvm://res/icons/damageLog/{{alive?no_dmg|dmg}}.png'>"
    }
  }
}