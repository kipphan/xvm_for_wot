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
  // Minimap coordinates font
  "minimapFont": {
    "color": "0x8A855C", //color
    "alpha": 100 //transparency
  },
  // Interface elements.
  "elements": [
    // "x"     - horizontal position
    // "y"     - vertical position
    // "alpha" - transparency

    // You can use constants, relative paths and mathematical expressions:
    // "x": 100,
    // "y": "HEIGHT / 2 + sin(minimap.alpha)",

    // Players panels
    {
      "$delay": 100,
      // Left panel
      "leftPanel": {
        "y": null
      },
      // Right panel
      "rightPanel": {
        "y": null
      },
      // Players panels switcher
      "switcher_mc": {
        "y": "leftPanel.y - 28"
      }
    },
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
    },
    // Battle timer
    {
      "$delay": 100,
      // Battle timer
      "battleTimer": {
        "x": "battleTimer.x - 0",
        "y": "battleTimer.y - 0"
      }
    },
    // Minimap
    {
      "$delay": 100,
      // Minimap
      "minimap": {
        "alpha": "minimap.alpha",
        // Vertical coordinates
        "rowA": {
          "textColor": ${
            "minimapFont.color"
          },
          "alpha": ${
            "minimapFont.alpha"
          }
        },
        "rowB": {
          "textColor": ${
            "minimapFont.color"
          },
          "alpha": ${
            "minimapFont.alpha"
          }
        },
        "rowC": {
          "textColor": ${
            "minimapFont.color"
          },
          "alpha": ${
            "minimapFont.alpha"
          }
        },
        "rowD": {
          "textColor": ${
            "minimapFont.color"
          },
          "alpha": ${
            "minimapFont.alpha"
          }
        },
        "rowE": {
          "textColor": ${
            "minimapFont.color"
          },
          "alpha": ${
            "minimapFont.alpha"
          }
        },
        "rowF": {
          "textColor": ${
            "minimapFont.color"
          },
          "alpha": ${
            "minimapFont.alpha"
          }
        },
        "rowG": {
          "textColor": ${
            "minimapFont.color"
          },
          "alpha": ${
            "minimapFont.alpha"
          }
        },
        "rowH": {
          "textColor": ${
            "minimapFont.color"
          },
          "alpha": ${
            "minimapFont.alpha"
          }
        },
        "rowJ": {
          "textColor": ${
            "minimapFont.color"
          },
          "alpha": ${
            "minimapFont.alpha"
          }
        },
        "rowK": {
          "textColor": ${
            "minimapFont.color"
          },
          "alpha": ${
            "minimapFont.alpha"
          }
        },
        // Horizontal coordinates
        "colsNames": {
          "textColor": ${
            "minimapFont.color"
          },
          "alpha": ${
            "minimapFont.alpha"
          }
        }
      }
    },
    // Debug panel (ping/lag/fps)
    {
      "$delay": 100,
      // Debug panel (ping/lag/fps)
      "debugPanel": {
        // To use some settings in this section, you may need to remove "//" before "$interval". Reduces the performance!
        // "$interval": 0,
        "alpha": 100,
        "x": "debugPanel.x",
        "y": "debugPanel.y"
      }
    },
    // Battle score
    {
      "$delay": 100,
      // Battle score
      "fragCorrelationBar": {
        // To use some settings in this section, you may need to remove "//" before "$interval". Reduces the performance!
        // "$interval": 0,
        "alpha": 100,
        "x": "fragCorrelationBar.x",
        "y": "fragCorrelationBar.y"
      }
    },
    // Capture bar
    {
      "$delay": 100,
      // Capture bar
      "teamBasesPanel": {
        "alpha": 100,
        "x": "teamBasesPanel.x + 0",
        "y": "teamBasesPanel.y + 50"
      }
    },
    // Chat
    {
      "$delay": 100,
      // Chat
      "messenger": {
        "alpha": 100,
        "x": "messenger.x + 0",
        "y": "messenger.y + 0"
      }
    },
    // Kill-log
    {
      "$delay": 100,
      // Kill-log
      "playerMessangersPanel": {
        "alpha": 100
      }
    },
    // Ammo bar
    {
      "$delay": 100,
      // Ammo bar
      "consumablesPanel": {
        "alpha": 100,
        "x": "consumablesPanel.x + 0",
        "y": "consumablesPanel.y - 0"
      }
    }
  ]
}