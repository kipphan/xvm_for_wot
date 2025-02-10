/**
 * Parameters for tank carousel.
 */
{
  "carousel": {
    // false - disable customizable carousel.
    "enabled": true,
    // Type of cells - "default" (use client settings), "normal" or "small".
    "cellType": "default",
    // Normal cells settings.
    "normal": ${"carouselNormal.xc":"normal"},
    // Small cells settings.
    "small": ${"carouselSmall.xc":"small"},
    // Number of rows at carousel. 0 - use client settings
    "rows": 0,
    // Background transparency (default - 100).
    "backgroundAlpha": 100,
    // Slot transparency (default - 100).
    "slotBackgroundAlpha": 100,
    // Slot border transparency (default - 100).
    "slotBorderAlpha": 100,
    // Selected slot border transparency (default - 100).
    "slotSelectedBorderAlpha": 100,
    // Transparency of gradient frames at the carousel edges (default - 100).
    "edgeFadeAlpha": 100,
    // Mouse wheel scrolling speed multiplier (default - 1).
    "scrollingSpeed": 1,
    // true - hide cell "Buy vehicle".
    "hideBuyTank": false,
    // true - hide cell "Buy slot".
    "hideBuySlot": false,
    // true - hide cell "Restore Tank".
    "hideRestoreTank": false,
    // true - show total slots count in the "Buy vehicle" cell.
    "showTotalSlots": false,
    // true - show used slots count in the "Buy slot" cell.
    "showUsedSlots": true,
    // false - disable background for locked vehicles (default: true).
    "enableLockBackground": true,
    // Visibility filters.
    "filters": {
      // false - hide filter.
      "params":   { "enabled": true }, // main params
      "bonus":    { "enabled": true }, // x2 bonus
      "favorite": { "enabled": true }, // favorite tanks
      "elite":    { "enabled": true }, // elite tanks
      "premium":  { "enabled": true }  // premium tanks
    },
    // Spacing between filters cells.
    "filtersPadding": {
      "horizontal": 11,
      "vertical": 13
    },
    // Order of nations.
    //"nations_order": ["ussr", "germany", "usa", "china", "france", "uk", "japan", "czech", "poland", "sweden", "italy"],
    "nations_order": [],
    // Order of types of vehicles.
    "types_order": [],
    // Tank sorting criteria, available options: (minus = reverse order)
    // "nation", "type", "level", "-level", "maxBattleTier", "-maxBattleTier", "premium", "-premium",
    // "battles", "-battles", "winRate", "-winRate", "markOfMastery", "-markOfMastery", "xtdb", "-xtdb",
    // "xte", "-xte", "wtr", "-wtr", "damageRating", "-damageRating", "marksOnGun", "-marksOnGun"
    "sorting_criteria": ["-marksOnGun", "-damageRating", "-xte", "-xtdb"],
    // true - suppress the tooltips for tanks in carousel.
    "suppressCarouselTooltips": false
  }
}
