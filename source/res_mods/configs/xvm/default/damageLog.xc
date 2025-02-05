/**
  * Macros used in damageLog:
    {{number}}            - line number
    {{dmg}}               - received damage
    {{dmg-kind}}          - kind of the received damage (attack, fire, ramming, ...)
    {{c:dmg-kind}}        - color depending on the kind of damage
    {{type-shell}}        - shell kind
    {{c:type-shell}}      - color depending on shell kind
    {{vtype}}             - vehicle type
    {{vehicle}}           - vehicle name
    {{c:vtype}}           - color depending on vehicle type
    {{c:team-dmg}}        - color depending on damage source (ally , enemy, self damage)
    {{c:costShell}}       - color depending on shell kind (gold, credits)
    {{name}}              - nickname player who caused the damage
    {{critical-hit}}      - critical hit
    {{c:hit-effects}}     - color depending on hit kind (with damage, ricochet, not penetrated, no damage)
    {{costShell}}         - text depending on shell kind (gold, credits)
    {{comp-name}}         - name part of vehicle that was hit (turret, body, suspension, gun)
    {{clan}}              - clan name with brackets (empty if no clan)
    {{level}}             - vehicle level
    {{clannb}}            - clan name without brackets
    {{clanicon}}          - macro with clan embed image path value
    {{squad-num}}         - number of squad (1,2,...), empty if not in squad
    {{hit-effects}}       - kind of hit
    {{dmg-ratio}}         - received damage in percent
    {{team-dmg}}          - source of damage (ally , enemy, self damage)
    {{splash-hit}}        - text when hit by splash damage from shell (HE/HESH)
 */

{
  "damageLog": {
    // true - disable standard detailed damage.
    "disabledDetailStats": false,
    // true - disable standard summarized damage.
    "disabledSummaryStats": false,
    // Log of the received damage.
    "log": {
      // Kind of the received damage (macro {{dmg-kind}}).
      "dmg-kind": {
        "shot":            "{{type-shell}}",                  //"<font face='xvm'>&#x50;</font>", // shot
        "fire":            "<font face='xvm'>&#x51;</font>",  // fire
        "ramming":         "<font face='xvm'>&#x52;</font>",  // ramming
        "world_collision": "<font face='xvm'>&#x53;</font>",  // world collision
        "drowning":        "Dr",                              // drowning
        "overturn":        "<font face='xvm'>&#x112;</font>", // overturn
        "death_zone":      "DZ",                              // death zone
        "gas_attack":      "GA",                              // gas attack
        "art_attack":      "<font face='xvm'>&#x110;</font>", // art attack
        "air_strike":      "<font face='xvm'>&#x111;</font>"  // air strike
      },
      // Color depending on the kind of damage (macro {{c:dmg-kind}}).
      "c:dmg-kind": {
        "shot":             "#CCCCCC",  // shot
        "fire":             "#CCCCCC",  // fire
        "ramming":          "#CCCCCC",  // ramming
        "world_collision":  "#CCCCCC",  // world collision
        "drowning":         "#CCCCCC",  // drowning
        "overturn":         "#CCCCCC",  // overturn
        "death_zone":       "#CCCCCC",  // death zone
        "gas_attack":       "#CCCCCC",  // gas attack
        "art_attack":       "#CCCCCC",  // art attack
        "air_strike":       "#CCCCCC"   // air strike
      },
      // Designation of hit by splash damage from shell (HE/HESH). (macro {{splash-hit}}).
      "splash-hit":{
        "splash":     "<font face='xvm'>&#x2C;</font>", // splash damage
        "no-splash":  ""                                // no splash damage
      },
      // Shell kind (macro {{type-shell}}).
      "type-shell": {
        "armor_piercing":      "<font color='{{c:costShell}}'>{{l10n:armor_piercing}}</font>",    // armor piercing
        "high_explosive":      "<font color='{{c:costShell}}'>{{l10n:high_explosive}}</font>",    // high explosive
        "high_explosive_stun": "<font color='{{c:costShell}}'>{{l10n:high_explosive}}</font>",    // stunning high explosive
        "armor_piercing_cr":   "<font color='{{c:costShell}}'>{{l10n:armor_piercing_cr}}</font>", // armor piercing composite rigid
        "armor_piercing_he":   "<font color='{{c:costShell}}'>{{l10n:armor_piercing_he}}</font>", // armor piercing high explosive
        "hollow_charge":       "<font color='{{c:costShell}}'>{{l10n:hollow_charge}}</font>",     // high explosive anti-tank
        "not_shell":           ""                                                                 // another source of damage
      },

      // Color depending on shell kind (macro {{type-shell}}).
      "c:type-shell": {
        "armor_piercing":      "#CCCCCC", // armor piercing
        "high_explosive":      "#CCCCCC", // high explosive
        "high_explosive_stun": "#CCCCCC", // stunning high explosive
        "armor_piercing_cr":   "#CCCCCC", // armor piercing composite rigid
        "armor_piercing_he":   "#CCCCCC", // armor piercing high explosive
        "hollow_charge":       "#CCCCCC", // high explosive anti-tank
        "not_shell":           "#CCCCCC"  // another source of damage
      },
      // Vehicle type (macro {{vtype}}).
      "vtype": {
        "mediumTank":   "<font face='xvm'>&#x3B;</font>", // medium tank
        "lightTank":    "<font face='xvm'>&#x3A;</font>", // light tank
        "heavyTank":    "<font face='xvm'>&#x3F;</font>", // heavy tank
        "AT-SPG":       "<font face='xvm'>&#x2E;</font>", // tank destroyer
        "SPG":          "<font face='xvm'>&#x2D;</font>", // SPG
        "not_vehicle":  ""                                // another source of damage
      },
      // Color depending on vehicle type (macro {{c:vtype}}).
      "c:vtype":{
        "mediumTank": "#CCCCCC", // medium tank
        "lightTank": "#CCCCCC",  // light tank
        "heavyTank": "#CCCCCC",  // heavy tank
        "AT-SPG": "#CCCCCC",     // tank destroyer
        "SPG": "#CCCCCC",        // SPG
        "not_vehicle": "#CCCCCC" // another source of damage
      },
      // Color depending on vehicle type (macro {{c:vtype}}).
      "c:vtype":{
        "mediumTank": "#CCCCCC", // medium tank
        "lightTank": "#CCCCCC",  // light tank
        "heavyTank": "#CCCCCC",  // heavy tank
        "AT-SPG": "#CCCCCC",     // tank destroyer
        "SPG": "#CCCCCC",        // SPG
        "not_vehicle": "#CCCCCC" // another source of damage
      },
      // Kind of hit (macro {{hit-effects}}).
      "hit-effects": {
        "armor_pierced": "{{dmg}}",                                   // penetrated
        "intermediate_ricochet": "Bounced",    // ricochet (intermediate)
        "final_ricochet": "Ricochet",                  // ricochet
        "armor_not_pierced": "Bounced",            // not penetrated
        "armor_pierced_no_damage": "Critical" // no damage
      },
      // Color depending on hit kind (with damage, ricochet, no penetration, no damage) (macro {{c:hit-effects}}).
      //"c:hit-effects": {
      //  "armor_pierced": "#FF4D3C",          // penetrated (damage)
      //  "intermediate_ricochet": "#CCCCCC",  // ricochet (intermediate)
      //  "final_ricochet": "#CCCCCC",         // ricochet
      //  "armor_not_pierced": "#CCCCCC",      // not penetrated
      //  "armor_pierced_no_damage": "#CCCCCC" // no damage
      //},
      // Color depending on hit kind (with damage, ricochet, no penetration, no damage) (macro {{c:hit-effects}}).
      "c:hit-effects": {
        "armor_pierced": "#CCCCCC",          // penetrated (damage)
        "intermediate_ricochet": "#CCCCCC",  // ricochet (intermediate)
        "final_ricochet": "#CCCCCC",         // ricochet
        "armor_not_pierced": "#CCCCCC",      // not penetrated
        "armor_pierced_no_damage": "#CCCCCC" // no damage
      },
      // Designation of critical hit (macro {{critical-hit}}).
      "critical-hit":{
        "critical": "*",  // critical hit
        "no-critical": "" // without critical hit
      },
      // Name part of vehicle (macro {{comp-name}}).
      "comp-name":{
        "turret": "{{l10n:turret}}",   // turret
        "hull": "{{l10n:hull}}",       // body
        "chassis": "{{l10n:chassis}}", // suspension
        "gun": "{{l10n:gun}}",         // gun
        "do_not_know": ""              // unknown
      },
      // Source of damage (ally , enemy, self damage) (macro {{team-dmg}}).
      "team-dmg":{
        "ally-dmg": "",   // ally
        "enemy-dmg": "",  // enemy
        "player": "",     // self damage
        "do_not_know": "" // unknown
      },
      // Color depending on damage source (ally , enemy, self damage) (macro {{c:team-dmg}}).
      "c:team-dmg":{
        "ally-dmg": "#00EAFF",    // ally
        "enemy-dmg": "#CCCCCC",   // enemy
        "player": "#228855",      // self damage
        "do_not_know": "#CCCCCC"  // unknown
      },
      // Text depending on cost shell (gold, credits) (macro {{costShell}}).
      "costShell":{
        "gold-shell": "",   // gold
        "silver-shell": "", // credits
        "do_not_know": "" // unknown
      },
      // Color depending on shell kind (gold, credits) (macro {{c:costShell}}).
      "c:costShell":{
        "gold-shell": "#FFCC66",   // gold
        "silver-shell": "#CCCCCC", // credits
        "do_not_know": "" // unknown
      },
      // true - show hits without damage, false - not to show.
      "showHitNoDamage": true,
      // true - to add and display in a log in one line of damage from the fire.
      "groupDamagesFromFire": true,
      // Damage log format.
      "formatHistory": "<textformat tabstops='[30,135,180,210]'><font size='10'>{{number}}.</font><tab><font color='#CCCCCC'>{{hit-effects}}{{critical-hit}}{{splash-hit}}<tab>{{dmg-kind}}</font><tab><font color='#CCCCCC'>{{vtype}}</font><tab><font color='{{c:team-dmg}}'>{{vehicle}}</font></textformat>",
    // Damage log format with the left Alt key.
      "formatHistoryAlt": "<textformat tabstops='[30,135,200]'><font size='10'>{{number}}.</font><tab><font color='#CCCCCC'>{{hit-effects}}{{critical-hit}}{{splash-hit}}</font><tab>{{dmg-kind}}<tab><font color='{{c:team-dmg}}'>{{name}}</font></textformat>"
    },
    // Display the last damage (hit).
    "lastHit": {
      "$ref": { "path":"damageLog.log" },
      // Display duration (seconds).
      "timeDisplayLastHit": 5,
      // Last damage format.
      "formatLastHit": "<font size='30' color='{{c:dmg-kind}}'>{{hit-effects}}</font>"
    },
    // Timer reload (value is not accurate, and consistent with the standard characteristics of vehicle).
    "timeReload": {
      "$ref": { "path":"damageLog.log" },
      // Reload timer format.
      "formatTimer": "<font face='xvm'>&#x114;</font>  {{timer}} {{l10n:sec}}.   [ <font color='{{c:team-dmg}}'>{{vehicle}}</font> ]",
      // Reload timer format (after reload).
      "formatTimerAfterReload": "<font face='xvm'>&#x114;</font>   [ <font color='{{c:team-dmg}}'>{{vehicle}}</font> ]  {{l10n:reloaded}}",
      // Display duration "formatTimerAfterReload" (seconds).
      "timeTextAfterReload": 5
    }
  }
}