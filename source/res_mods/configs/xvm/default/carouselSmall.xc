/**
 * Small carousel cells settings.
 */
{
  // Definitions.
  "def": {
    // Text fields shadow.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2, "distance": 0, "angle": 0 }
  },
  "small": {
    // Cell width.
    "width": 160,
    // Cell height.
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
      "tankName": { "enabled": true, "dx": 16, "dy": 3.5, "alpha": 100, "scale": 0.9, "textFormat": {}, "shadow": {} },
      // Info text (Crew incomplete, Repairs required).
      "info": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Info image.
      "infoImg": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Info text for "Buy vehicle" and "Buy slot" slots.
      "infoBuy": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Clan lock timer.
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Price.
      "price": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Action price.
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Favorite vehicle mark.
      "favorite": { "enabled": true, "dx": 16, "dy": 3.5, "alpha": 100, "scale": 0.9 },
      // Vehicle mark with the ability to earn bonds.
      "crystalsBorder": { "enabled": true, "alpha": 100 },
      // Image in in the stats field "stats" for vehicle with the ability to earn bonds.
      "crystalsIcon": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Core Vehicles mark for the Battle Pass.
      "coreBorder": { "enabled": true, "alpha": 100 },
      // Stats field that appears on the mouse hover.
      "stats": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Battle Pass progression points.
      "progressionPoints": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 }
    },
    // Extra cell fields (extended format supported, see extra-field.txt).
    "extraFields": [
      // Sign of mastery.
      {
        "enabled": true,
        "x": 2, "y": 12, "width": 24, "height": 24,
        "src": "xvm://res/icons/carousel/mastery_{{v.mastery|0}}.png"
      },
      // Marks on gun.
      {
        "enabled": true,
        "x": 20, "y": 15, "width": 18, "height": 18, "alpha": "{{v.marksOnGun?|0}}",
        "src": "xvm://res/icons/carousel/mark_{{v.marksOnGun|0}}.png"
      },
      {}
    ]
  }
}
