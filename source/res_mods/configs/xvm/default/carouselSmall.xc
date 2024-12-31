/**
 * Small carousel cells settings
 */

{
  // Definitions
  "def": {

    // Text fields shadow.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2, "distance": 0, "angle": 0 }
  },
 
  "small": {
 
    // Cell width
    "width": 160,

    // Cell height
    "height": 35,

    // Spacing between carousel cells.
    "gap": 10,

    // Standard cell elements.
    "fields": {
      // "enabled"  - the visibility of the element
      // "dx"       - horizontal shift
      // "dy"       - vertical shift
      // "alpha"    - transparency
      // "scale"    - scale

      // Vehicle class icon.
      "tankType": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },

      // Vehicle level.
      "level":    { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },

      // Double XP icon
      "xp":       { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },

      // Vehicle name.
      "tankName": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },

      // Info text (Crew incomplete, Repairs required)
      "info":     { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },

      // Info text for "Buy vehicle" and "Buy slot" slots.
      "infoBuy":  { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },

      // Clan lock timer
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },

      // Price
      "price":    { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
	
      // Action price
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
	  
      // Favorite vehicle mark
      "favorite": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 }
	  
    },

    // Extra cell fields (see playersPanel.xc).
    // Extra cell fields (see playersPanel.xc).
    "extraFields": [

	  // Shadow Layer
      { "x": 0, "y": 46, "h": 28, "w": "170", "bgColor": "{{v.selected?0x000000|0x000000}}", "alpha": "{{v.selected?75|0}}" },
	
      // Mastery level
      { "x": -1, "y": 10, "format": "<img src='img://gui/maps/icons/library/proficiency/class_icons_{{v.mastery}}.png' width='23' height='23'>" },
 
        // MOE on Vehicle Select
        { "x": 62, "y": 52, "format": "<font size='11' face='$TitleFont'>{{v.damageRating%-3.1f~%}}</font>", 
  	      "shadow": { "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 3, "distance": 0, "angle": 0 }, "alpha": "{{v.selected?{{v.battles?100|0}}|0}}" },
 
        // Damage per Battle
	    { "x": 150, "y": 44, "align": "right", "format": "<font size='11' face='$TitleFont' color='#FFFFFF'>{{v.tdb%-4d}}</font>", 
	      "shadow": { "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 3, "distance": 0, "angle": 0 } },
		  
	    // Tank Name
        //{ "x": 1, "y": 68, "format": "<font face='$TitleFont' color='{{v.premium?#DB834C|#ffffff}}' size='11'>{{v.name}}</font>",
	    //"shadow": {"blur":0, "color": null, "strength": "{{v.premium?3|2}}"} },

	    // Gunmark Text on Select
        { "x": 5, "y": 52, "format": "<font size='11' face='$TitleFont' color='#FFFFFF'>Gunmark: </font>", 
	      "shadow": { "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 3, "distance": 0, "angle": 0 }, "alpha": "{{v.selected?{{v.battles?100|0}}|0}}" },
		
        // Vehicle Winrate
	    { "x": 150, "y": 56, "align": "right", "format": "<font size='11' face='$TitleFont' color='{{v.c_winrate}}'>{{v.winrate%-3.1f~%}}</font>", 
	      "shadow": { "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 3, "distance": 0, "angle": 0 } },
	  {}
    ]
  }
}