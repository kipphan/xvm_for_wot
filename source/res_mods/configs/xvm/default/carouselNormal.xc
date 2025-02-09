/**
 * Normal carousel cells settings.
 */
 {
  // Definitions.
  "def": {
    // Text fields shadow.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2, "distance": 0, "angle": 0 }
  },
  "normal": {
    // Cell width.
    "width": 160,
    // Cell height.
    "height": 100,
    // Spacing between carousel cells.
    "gap": 10,
    // Standard cell elements.
    "fields": {
      // "enabled"  - the visibility of the element
      // "dx"       - horizontal shift
      // "dy"       - vertical shift
      // "alpha"    - transparency
      // "scale"    - scale
      //
      // Nation flag.
      "flag": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle icon.
      "tankIcon": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle class icon.
      "tankType": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle level.
      "level": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Double XP icon.
      "xp": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 0.9 },
      // Vehicle name.
      "tankName": { "enabled": true, "dx": 16, "dy": 10, "alpha": 100, "scale": 0.9, "textFormat": {}, "shadow": {} },
      // Vehicle rent info text.
      "rentInfo": { "enabled": true, "dx": 16, "dy": 10, "alpha": 100, "scale": 0.9, "textFormat": {}, "shadow": {} },
      // Info text (Crew incomplete, Repairs required).
      "info": { "enabled": true, "dx": -24, "dy": 0, "alpha": 100, "scale": 0.9, "textFormat": {}, "shadow": {} },
      // Info image.
      "infoImg": { "enabled": true, "dx": 6, "dy": -20, "alpha": 100, "scale": 0.9 },
      // Info text for "Buy vehicle" and "Buy slot" slots.
      "infoBuy": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Clan lock timer.
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Price.
      "price": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Action price.
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Favorite vehicle mark.
      "favorite": { "enabled": true, "dx": 16, "dy": 10, "alpha": 100, "scale": 0.9 },
      // Vehicle mark with the ability to earn bonds.
      "crystalsBorder": { "enabled": true, "alpha": 100 },
      // Image in in the stats field "stats" for vehicle with the ability to earn bonds.
      "crystalsIcon": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Core Vehicles mark for the Battle Pass.
      "coreBorder": { "enabled": true, "alpha": 100 },
      // Stats field that appears on the mouse hover.
      "stats": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "textFormat": {}, "shadow": {} },
      // Battle Pass progression points.
      "progressionPoints": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 }
    },
    // Extra cell fields (extended format supported, see extra-field.txt).
    "extraFields": [
      // Shadow Layer.
      {
        "enabled": true,
        "x": 160, "y": 0, "align": "right", "width": 42, "height": 100, "alpha": "{{v.battles?{{v.selected?80|40}}|0}}",
        "bgColor": "0x000000"
      },
      // Sign of mastery.
      {
        "enabled": true,
        "x": 0, "y": 12, "width": 24, "height": 24, "alpha": "{{v.mastery?100|0}}",
        "src": "xvm://res/icons/carousel/mastery_{{v.mastery?|0}}.png"
      },
      // Battles count.
      {
        "enabled": true,
        "x": 160, "y": 12, "align": "right", "width": 18, "height": 18, "alpha": 100,
        "src": "xvm://res/icons/carousel/battles.png"
      },
      {
        "enabled": true,
        "x": 145, "y": 12, "align": "right", "alpha": 100,
        "format": "<b><font face='$FieldFont' size='11' color='#CFCFCF' alpha='#F0'>{{v.battles}}</font></b>",
        "shadow": ${ "def.textFieldShadow" }
      },
      // Winrate.
      {
        "enabled": true,
        "x": 160, "y": 26, "align": "right", "width": 18, "height": 18, "alpha": "{{v.winrate?100|0}}",
        "src": "xvm://res/icons/carousel/wins.png"
      },
      {
        "enabled": true,
        "x": 145, "y": 26, "align": "right", "alpha": 100,
        "format": "<b><font face='$FieldFont' size='11' color='{{v.c_winrate|#CFCFCF}}'>{{v.winrate%2d~%}}</font></b>",
        "shadow": ${ "def.textFieldShadow" }
      },
      // Average damage.
      {
        "enabled": true,
        "x": 160, "y": 40, "align": "right", "width": 18, "height": 18, "alpha": "{{v.tdb?100|0}}",
        "src": "xvm://res/icons/carousel/damage.png"
      },
      {
        "enabled": true,
        "x": 145, "y": 40, "align": "right", "alpha": 100,
        "format": "<b><font face='$FieldFont' size='11' color='{{v.c_xtdb|#CFCFCF}}'>{{v.tdb%d}}</font></b>",
        "shadow": ${ "def.textFieldShadow" }
      },
      // Marks on gun.
      {
        "enabled": true,
        "x": 160, "y": 54, "align": "right", "width": 18, "height": 18, "alpha": "{{v.marksOnGun?100|0}}", "layer": "top",
        "src": "xvm://res/icons/carousel/mark_{{v.marksOnGun|0}}.png"
      },
      {
        "enabled": true,
        "x": 145, "y": 54, "align": "right", "alpha": 100,
        "format": "<b><font face='$FieldFont' size='11' color='{{v.c_damageRating|#CFCFCF}}'>{{v.damageRating%2d~%}}</font></b>",
        "shadow": ${ "def.textFieldShadow" }
      },
      {}
    ]
  }
}
