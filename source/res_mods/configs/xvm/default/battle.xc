/**
 * General parameters for the battle interface.
 */
 {
  "battle": {
    // false - disable tank icon mirroring (good for alternative icons).
    "mirroredVehicleIcons": true,
    // false - disable pop-up panel at the bottom after death.
    "showPostmortemTips": false,
    // false - disable ally dog tag animation before battle start.
    "showPrebattleDogTags": false,
    // false - disable pop-up panel with enemy's dog tag.
    "showPostmortemDogTag": false,
    // false - disable battle hints.
    "showBattleHint": true,
    // false - disable highlighting of own vehicle icon and squad.
    "highlightVehicleIcon": true,
    // Format of clock on the Debug Panel (near FPS).
    // http://php.net/date
    "clockFormat": "H:i",
    // Path to clan icons folder relative to res_mods/mods/shared_resources/xvm/res.
    "clanIconsFolder": "clanicons/",
    // Sixth sense indicator settings
    "sixthSense": {
      // X offset relative to initial position of the indicator
      "offsetX": 0,
      // Y offset relative to initial position of the indicator
      "offsetY": 0,
      // Opacity of the indicator in percents (0..100)
      // (Only for WG, on Lesta use ingame settings)
      "alpha": 100,
      // Scale of the indicator (0..1)
      "scale": 1,
      // Path to sixth sense icon ("" for original icon).
      "icon": "",
      // Duration of the sixth sense indicator (msec).
      // On Lesta defines time after which indicator will enter permanent state.
      "duration": 7000
    },
    // GUI elements settings (experts only).
    "elements": ${"elements.xc":"elements"},
    // Camera settings
    "camera": ${"camera.xc":"camera"},
    // Switching between players on the minimap after death.
    "minimapDeadSwitch": true
  },
  // Frag counter panel at top side of battle windows interface.
  "fragCorrelation": {
    // true - show quantity of alive instead of dead.
    "showAliveNotFrags": false
  }
}
