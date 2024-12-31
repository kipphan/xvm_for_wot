/**
 * ProMod Parameters for login screen
 */
{
  "login": {
  
    // Skip intro movie
    "skipIntro": true,
	
    // Save last server
    "saveLastServer": true,
	
    // Auto enter to the game
    "autologin": false,
	
    // Auto confirm old replays playing
    "confirmOldReplays": false,
	
    // Ping servers
    "pingServers": {
      // true - Enable display of ping to the servers
      "enabled": false,
      // Update interval, in ms
      "updateInterval": 10000,
      // Axis field coordinates
      "x": 5,
      "y": 30,
      // Horizontal alignment of field at screen ("left", "center", "right").
      "hAlign": "left",
      // Vertical alignment of field at screen ("top", "center", "bottom").
      "vAlign": "top",
      "alpha": 80,
      // Server to response time text delimiter
      "delimiter": ": ",
      // Maximum number of column rows
      "maxRows": 3,
      // Gap between columns
      "columnGap": 10,
      // Leading between lines.
      "leading": 0,
      // true - show title "Ping"
      "showTitle": true,
      // true - show server names in list
      "showServerName": true,
      // expand values to this amount of symbols. recommended to use monospace font if this option is set.
      "minimalLength": 0,
      // text to show in case of error
      "errorString": "--",
      // Text style
      "fontStyle": {
        // Font name
        "name": "$TextFont",
        "size": 12,
        "bold": false,
        "italic": false,
        // Different colors depending on server response time
        "color": {
          "great": "0xFFCC66",
          "good": "0xE5E4E1",
          "poor": "0x96948F",
          "bad": "0xD64D4D"
        },
        // Color for server name and delimiter (for example, "0x8080FF"). Empty string "" - use same color as online value
        "serverColor": ""
      },
      // Threshold values defining response quality
      "threshold": {
        // Below this value response is great
        "great": 35,
        // Below this value response is good
        "good": 60,
        // Below this value response is poor
        "poor": 100
        // Values above define bad response
      },
      "shadow": {
        "enabled": true,
        "color": "0x000000",
        "distance": 0,
        "angle": 0,
        "alpha": 70,
        "blur": 4,
        "strength": 2
      }
    },
    "onlineServers": {
      // true - Enable display online of servers
      "enabled": false,
      // Axis field coordinates
      "x": -5,
      "y": 30,
      // Horizontal alignment of field at screen ("left", "center", "right").
      "hAlign": "right",
      // Vertical alignment of field at screen ("top", "center", "bottom").
      "vAlign": "top",
      // Transparency
      "alpha": 80,
      // Server to online text delimiter
      "delimiter": ": ",
      // Maximum number of column rows
      "maxRows": 3,
      // Gap between columns
      "columnGap": 10,
      // Leading between lines.
      "leading": 0,
      // true - show title "Online"
      "showTitle": true,
      // true - show server names in list
      "showServerName": true,
      // expand values to this amount of symbols. recommended to use monospace font if this option is set.
      "minimalLength": 0,
      // text to show in case of error
      "errorString": "--k",
      // Text style
      "fontStyle": {
        // Font name
        "name": "$TextFont",
        "size": 12,
        "bold": false,
        "italic": false,
        // Different colors depending on people online
        "color": {
          "great": "0x60ff00",
          "good": "0xF8F400",
          "poor": "0xFE7903",
          "bad": "0xFE0E00"
        },
        // Color for server name and delimiter (for example, "0x8080FF"). Empty string "" - use same color as online value
         "serverColor": ""
      },
      // Threshold values defining server online and thus shorter battle queue
      "threshold": {
        "great": 30000,
        "good": 10000,
        "poor": 3000
        //below this value the queue might be long
      },
      "shadow": {
        "enabled": true,
        "color": "0x000000",
        "distance": 0,
        "angle": 0,
        "alpha": 70,
        "blur": 4,
        "strength": 2
      }
    },
	
	// Parameters for widgets
    "widgets": ${"widgets.xc":"widgets.login"}

  }
}