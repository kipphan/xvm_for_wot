/**
 * Parameters of the After Battle Screen.
 */
{
  "battleResults": {
    // Initial page (1, 2, 3).
    "startPage": 1,
    // true - display total experience in first page.
    "showTotalExperience": true,
    // true - display crew experience in first page.
    "showCrewExperience": false,
    // true - display net income of credits in first page.
    "showNetIncome": true,
    // true - display shots precision and damage in first page under credits and XP.
    "showExtendedInfo": true,
    // true - display standard interface for the "FrontLine" mode.
    "showStandardFrontLineInterface": true,
    // true - display battle rating (player satisfaction) widget (WG only, 1.27.1+).
    "showPlayerSatisfactionWidget": true,
    // Customize "Manageable bonus to experience" panel.
    "bonusState": {
      // false - disable.
      "enabled": true,
      // Offset panel of X axis.
      "offsetX": 25,
      // Offset panel of Y axis.
      "offsetY": 60,
      // Panel background transparency, in percents.
      // 0 - transparent, 100 - opaque.
      "backgroundAlpha": 70
    }
  }
}
