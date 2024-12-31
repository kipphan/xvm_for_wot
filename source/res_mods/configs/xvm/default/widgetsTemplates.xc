/**
 * Widgets templates.
 */
 
{
  "clock": {
  
    // Show clock in hangar.
    "enabled": true,

    // layer - "bottom", "normal" (default), "top".
    "layer": "normal",
    "type": "extrafield",
	
    "formats": [
      {
        "updateEvent": "ON_EVERY_SECOND",
		
        // Horizontal position.
        "x": -10,
		
        // Vertical position.
        "y": 41,

        // Width.
        "width": 200,

        // Height.
        "height": 50,

        // Horizontal alignment of field at screen ("left", "center", "right").
        "screenHAlign": "right",
		
        "shadow": {
		
          // false - no shadow
          "enabled": true,
          "distance": 0,
          "angle": 0,
          "color": "0x000000",
          "alpha": 70,
          "blur": 4,
          "strength": 2
        },
		
        "textFormat": { "align": "right", "valign": "center", "color": "0x959688" },
		
        "format": "<font face='$FieldFont'><textformat leading='-38'><font size='36'>{{py:xvm.formatDate('%H:%M')}}</font><br></textformat><textformat rightMargin='85' leading='-2'>{{py:xvm.formatDate('%Au')}}<br><font size='15'>{{py:xvm.formatDate('%d %bu %Y')}}</font></textformat></font>"
      }
    ]
  }
}