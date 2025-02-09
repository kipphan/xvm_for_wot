/**
 * Minimap circles. Only real map meters. Only for own unit.
 */
{
  "circles": {
    // View distance.
    //
    // Parameters:
    // "enabled": false - disabled
    // "distance" - distance
    // "scale" - circle scale (distance multiplier) (optional)
    // "thickness" - thickness
    // "alpha" - transparency
    // "color" - color
    // "state" - state of the tank: 1-staying, 2-moving (optional)
    //
    // Available distance values:
    // N - number in meters, static circle is drawn
    // "dynamic" - real range of view of the tank taking into account standing/moving
    // "motion" - real range of view of the tank in motion
    // "standing" - real range of view of the tank while standing
    // "blindarea" - real border of the tank's blind spot (50<=X<=445)
    // "blindarea_motion" - real border of the tank's blind spot in motion (50<=X<=445)
    // "blindarea_standing" - real border of the tank's blind spot while standing (50<=X<=445)
    //
    // Source:
    // https://kr.cm/f/t/15467/c/187139/
    // https://kr.cm/f/t/15467/c/186794/
    "view": [
      // Main circles:
      { "enabled": true, "distance": "blindarea", "scale": 1, "thickness": 0.75, "alpha": 80, "color": "0x3EB5F1" },
      { "enabled": true, "distance": 445,         "scale": 1, "thickness":  1.1, "alpha": 45, "color": "0xFFCC66" },
      // Circle of the maximum units appearance.
      { "enabled": "{{my-vtype-key=SPG?false|true}}", "distance": 564, "scale": 1, "thickness": 0.7, "alpha": 40, "color": "0xFFFFFF" },
      // Additional circles:
      { "enabled": true,  "distance": 50,         "scale": 1, "thickness": 0.75, "alpha": 60, "color": "0xFFFFFF" },
      { "enabled": false, "distance": "standing", "scale": 1, "thickness":  1.0, "alpha": 60, "color": "0xFF0000" },
      { "enabled": false, "distance": "motion",   "scale": 1, "thickness":  1.0, "alpha": 60, "color": "0x0000FF" },
      { "enabled": false, "distance": "dynamic",  "scale": 1, "thickness":  1.0, "alpha": 60, "color": "0x3EB5F1" }
    ],
    // Maximum range of fire for artillery.
    // Artillery gun fire range may differ depending on vehicle angle relative to ground
    // and vehicle height positioning relative to target. These factors are not considered.
    // See pics at https://kr.cm/f/t/2076/c/35697/
    "artillery": { "enabled": true, "alpha": 55, "color": "0xFF6666", "thickness": 0.5 },
    // Maximum range of shooting for machine gun
    "shell":     { "enabled": true, "alpha": 55, "color": "0xFF6666", "thickness": 0.5 },
    // Special circles dependent on vehicle type.
    // Many configuration lines for the same vehicle make many circles.
    // See other vehicle types in file: vehicleNames.xc
    "special": [
      // Example: Artillery gun fire range circle.
      //
      // Parameters:
      // "enabled": false - disabled;
      // "distance": distance;
      // "thickness": thickness;
      // "alpha" - transparency;
      // "color" - color.
      //{ "china-Ch01_Type59": { "enabled": true, "distance": 500, "thickness": 1, "alpha": 60, "color": "0xEE4444" } }
    ]
  }
}
