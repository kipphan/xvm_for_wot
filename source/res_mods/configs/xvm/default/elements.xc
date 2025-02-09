/**
 * GUI elements settings (experts only)
 * https://kr.cm/f/t/1761/
 *
 * TODO: doc
 *
 * commands:
 *   "$log": 1,
 *   "$delay": 1,
 *   "$interval": 1,
 *   "$textFormat": {
 *     //"$log": 1,
 *     "size": 30,
 *     "font": "$TitleFont",
 *     "align": "center"
 *   }
 *
 */
{
  // Interface elements.
  "elements": [
    // "x"     - horizontal position
    // "y"     - vertical position
    // "alpha" - transparency
    //
    // Example: Players panels
    /*
    {
      "$delay": 100,
      "playersPanel": {
      // Left panel
        "listLeft": {
          "y": 65
      },
      // Right panel
        "listRight": {
          "y": 65
      },
      // Players panels switcher
        "panelSwitch": {
          "y": 37
        }
      }
    },
    */
    /*
    ┌─────────┐
    │ regular │
    └─────────┘
    "battleDamageLogPanel"          - Panel: Battle Notifications - Log
    "battleLoading"                 - Battle Loading screen
    "battleMessenger"               - Chat
    "battleNotifier"                - Panel with the results of the previous battle
    "battleTimer"                   - Battle timer
    "calloutPanel"                  - Command confirmation panel (communication in battle)
    "consumablesPanel"              - Ammo bar
    "damageInfoPanel"               - Ingame crits panel by "expert" skill
    "damagePanel"                   - Damage panel
    "debugPanel"                    - Debug panel (ping/lag/fps)
    "destroyTimersPanel"            - Destroy timers (drowning, overturned)
    "dualGunPanel"                  - Panel for vehicle with two guns
    "endWarningPanel"               - Panel informing about the imminent end of the battle
    "fragCorrelationBar"            - Battle score
    "fullStats"                     - Battle Statistics form on the Tab key
    "gameMessagesPanel"             - Messages on the outcome of the battle (victory, defeat, draw)
    "hintPanel":                    - Panel tips in battle
    "minimap"                       - Minimap
    "playersPanel"                  - Players panels
    "prebattleAmmunitionPanel"      - Ammo bar (choice of configurations)
    "prebattleTimer"                - Timer before a battle start
    "questProgressTopAnimContainer" - Panel: Battle Notifications - Progress for Personal Missions
    "questProgressTopView"          - Panel: Battle Notifications - Progress for Personal Missions (animation)
    "radialMenu"                    - Radial menu
    "ribbonsPanel"                  - Battle performance badges
    "siegeModePanel"                - Siege mode panel
    "sixthSense"                    - Sixth sense lamp
    "teamBasesPanelUI"              - Capture bar
    ┌─────────────┐
    │ epic_random │
    └─────────────┘
    "epicRandomPlayersPanel"        - Players panels
    "epicRandomScorePanel"          - Battle score
    ┌─────────────┐
    │ epic_battle │
    └─────────────┘
    "epicDeploymentMap"             - Minimap
    "epicDestroyTimersPanel"        - Destroy timers (hot key "J")
    "epicInGameRank"                - Rank received panel
    "epicMissionsPanel"             - The panel of the current task in battle (capture/defend point)
    "epicOverviewMapScreen"         - Minimap overview screen (hot key "M")
    "epicReinforcementPanel"        - ReinforcementPanel (the number of revivals vehicle)
    "epicRespawnView"               - Respawn zone selection panel (zone A, B, C)
    "epicSpectatorViewUI"           - View panel in spectator mode
    "epicScorePanelUI"              - Score panel
    "recoveryPanel"                 - Recovery indicator (resupply point)
    "superPlatoonPanel"             - Platoon panel
    */
    // Sixth sense duration
    {
      "$delay": 7000,
      // Sixth sense lamp duration (in milliseconds). Example: "sixthSenseDuration": 7000,
      "sixthSenseDuration": "sixthSenseDuration",
      // Sixth sense lamp
      "sixthSenseIndicator": {
        // To use some settings in this section, you may need to remove "//" before "$interval". Reduces the performance!
        // "$interval": 0,
        "alpha": 100,
        "x": "sixthSenseIndicator.x",
        "y": "sixthSenseIndicator.y"
      }
    }
  ]
}