/**
 * UserInfo window.
 */
{
  "userInfo": {
    // Initial page for current user service record.
    // Available values:
    //    "summary"      - "Summary" page
    //    "achievements" - "Achievements" page
    //    "awards"       - "Awards" page
    //    "statistics"   - "Statistics" page
    //    "vehicles"     - "Vehicles" page
    //    "hof"          - "Hall of Fame" page
    "profileStartPage": "summary",
    // Initial page for other players service records.
    // Available values:
    //    "summary"      - "Summary" page
    //    "achievements" - "Awards" page
    //    "awards"       - "Awards" page
    //    "statistics"   - "Statistics" page
    //    "vehicles"     - "Vehicles" page
    "contactsStartPage": "summary",
    // number of column for sorting by default.
    // Sort order: >0 - ascending, <0 - descending
    // 1 - Nation
    // 2 - Type
    // 3 - Level
    // 4 - Name
    // 5 - Fights
    // 6 - Wins
    // 7 - Average XP
    // 8 - Class mark
    // 9 - xTE
    "sortColumn": -5,
    // true - show xTE column in the vehicle list.
    "showXTEColumn": true,
    // true - show extra data in profile (experimental).
    "showExtraDataInProfile": true,
    // true - enable filter tanks in hangar by default.
    "inHangarFilterEnabled": false,
    // true - show filters on tanks.
    "showFilters": true,
    // true - set the default focus to the filter text input.
    "filterFocused": true,
    // TODO: description of the substitutions (+all, -premium, ...)
    // default value of the filter.
    "defaultFilterValue": ""
  }
}
