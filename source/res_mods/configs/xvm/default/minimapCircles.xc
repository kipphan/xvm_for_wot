/**
 * Minimap circles. Only real map meters. Only for own unit.
 * ProMod - Updated 24.09.2016
 */
 
{
  "circles": {
 
    // View distance
    "view": [

      // Main circles:
      { "enabled":  true, "distance": "blindarea", "scale": 1, "thickness": 0.75, "alpha": 80, "color": "0xFFFFFF" },
      { "enabled":  true, "distance": 445,         "scale": 1, "thickness":  1, "alpha": 45, "color": "0xFFFFFF" },
      { "enabled": "{{my-vtype-key=SPG?false|true}}", "distance": 564, "scale": 1, "thickness": 1, "alpha": 40, "color": "0xFFFFFF" },

      // Additional circles:
      { "enabled": true, "distance": 50,          "scale": 1, "thickness": 0.75, "alpha": 60, "color": "0xFFFFFF" },
      { "enabled": false, "distance": "standing",  "scale": 1, "thickness":  1.0, "alpha": 60, "color": "0xFFFFFF" },
      { "enabled": false, "distance": "motion",    "scale": 1, "thickness":  1.0, "alpha": 60, "color": "0x0000FF" },
      { "enabled": false, "distance": "dynamic",   "scale": 1, "thickness":  1.0, "alpha": 60, "color": "0x3EB5F1" }
    ],

    // Maximum range of fire for artillery
    "artillery": { "enabled": true, "alpha": 55, "color": "0xFF0000", "thickness": 0.5 },

    // Maximum range of shooting for machine gun
    "shell": { "enabled": true, "alpha": 55, "color": "0xFF0000", "thickness": 0.5 },

    // Special circles dependent on vehicle type.
    "special": [

      // Example: Artillery gun fire range circle
      // "enabled": false - выключен; "thickness" - толщина; "alpha" - прозрачность; "color" - цвет.
      //{ "ussr-SU-18": { "enabled": true, "thickness": 1, "alpha": 60, "color": "0xEE4444", "distance": 500 } },
    ]
  }
}