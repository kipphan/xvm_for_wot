/**
 * Color settings.
 */
{
  // Color values for substitutions.
  "def": {
    "al":   "0x96FF00",            // ally
    "sq":   "0xFFB964",            // squadman
    "tk":   "0x00EAFF",            // teamKiller
    "en":   "0xF50800",            // enemy
    "pl":   "0xFFDD33",            // player
    "self": "0xDD00DD",            // self
    // Dynamic color by various statistical parameters.
    "colorRating": {
      "very_bad":  "0xFE0E00",     // very bad
      "bad":       "0xFE7903",     // bad
      "normal":    "0xF8F400",     // normal
      "good":      "0x60FF00",     // good
      "very_good": "0x02C9B3",     // very good
      "unique":    "0xD042F3"      // unique
    },
    "colorRatingExtended": {
      "1":  "0xd1475e", // WTR - Bronze I
      "2":  "0xd15e47", // WTR - Bronze II
      "3":  "0xd18c47", // WTR - Bronze III
      "4":  "0xd1ba47", // WTR - Silver I
      "5":  "0xbad147", // WTR - Silver II
      "6":  "0x8cd147", // WTR - Silver III
      "7":  "0x5ed147", // WTR - Gold I
      "8":  "0x47d15e", // WTR - Gold II
      "9":  "0x47d18c", // WTR - Gold III
      "10": "0x47d1ba", // WTR - Ace I
      "11": "0x47bad1", // WTR - Ace II
      "12": "0x478cd1", // WTR - Ace III
      "13": "0x4775d1", // WTR - Legend I
      "14": "0x5e47d1", // WTR - Legend II
      "15": "0x8c47d1"  // WTR - Legend III
    },
    // Dynamic color by remaining health points.
    "colorHP": {
      "very_low":      "0xFF0000", // very low
      "low":           "0xDD4444", // low
      "average":       "0xFFCC22", // average
      "above_average": "0xFCFCFC"  // above-average
    }
  },
  "colors": {
    // System colors.
    "system": {
      // Format:    object_state
      // Object:    ally, squadman, teamKiller, enemy, player.
      // State:     alive, dead, blowedup.
      "ally_alive":          ${"def.al"},
      "ally_dead":           "0x009900",
      "ally_blowedup":       "0x007700",
      "squadman_alive":      ${"def.sq"},
      "squadman_dead":       "0xCA7000",
      "squadman_blowedup":   "0xA45A00",
      "teamKiller_alive":    ${"def.tk"},
      "teamKiller_dead":     "0x097783",
      "teamKiller_blowedup": "0x096A75",
      "enemy_alive":         ${"def.en"},
      "enemy_dead":          "0x840500",
      "enemy_blowedup":      "0x5A0401",
      "player_alive":        ${"def.pl"},
      "player_dead":         "0xDDAA00",
      "player_blowedup":     "0xBB9900"
    },
    // Dynamic color by damage rating (percents for marks on gun)
    "damageRating": [
      { "value": 40,    "color": ${"def.colorRating.very_bad" } },  // 20% of players
      { "value": 55,    "color": ${"def.colorRating.bad"      } },  // better then 40% of players
      { "value": 65,    "color": ${"def.colorRating.normal"   } },  // better then 55% of players
      { "value": 85,    "color": ${"def.colorRating.good"     } },  // better then 65% of players
      { "value": 95,    "color": ${"def.colorRating.very_good"} },  // better then 85% of players
      { "value": 100,   "color": ${"def.colorRating.unique"   } }   // better then 95% of players
    ],
    // Dynamic color by damage kind.
    "dmg_kind": {
      "shot":            "0xFFAA55", // shot
      "fire":            "0xFF6655", // fire
      "ramming":         "0x998855", // ramming
      "world_collision": "0x228855", // world collision
      "death_zone":      "0xCCCCCC", // death_zone
      "drowning":        "0xCCCCCC", // drowning
      "overturn":        "0xCCCCCC", // overturn
      "other":           "0xCCCCCC"  // other
    },
    // Dynamic color by vehicle type.
    "vtype": {
      "LT":              "0xA2FF9A",
      "MT":              "0xFFF198",
      "HT":              "0xFFACAC",
      "SPG":             "0xEFAEFF",
      "TD":              "0xA0CFFF",
      "premium":         "0xFFCC66",
      "usePremiumColor": false
    },
    // Dynamic color by spotted status.
    "spotted": {
      "neverSeen":      "0x000000",
      "lost":           "0xD9D9D9",
      "spotted":        "0xFFBB00",
      "dead":           "0xFFFFFF",
      "neverSeen_arty": "0x000000",
      "lost_arty":      "0xD9D9D9",
      "spotted_arty":   "0xFFBB00",
      "dead_arty":      "0xFFFFFF"
    },
    // HP color depending on the ratio of ally and enemy teams hp.
    "totalHP": {
      "bad":     "0xFF0000",
      "neutral": "0xFFFFFF",
      "good":    "0x00FF00"
    },
    // Color settings for damage.
    "damage": {
      // Format: src_dst_type.
      // Src:  ally, squadman, enemy, unknown, player.
      // Dst:  ally, squadman, allytk, enemytk, enemy, self.
      // Type: hit, kill, blowup.
      "ally_ally_hit":              ${"def.tk"},
      "ally_ally_kill":             ${"def.tk"},
      "ally_ally_blowup":           ${"def.tk"},
      "ally_squadman_hit":          ${"def.tk"},
      "ally_squadman_kill":         ${"def.tk"},
      "ally_squadman_blowup":       ${"def.tk"},
      "ally_enemy_hit":             ${"def.en"},
      "ally_enemy_kill":            ${"def.en"},
      "ally_enemy_blowup":          ${"def.en"},
      "ally_allytk_hit":            ${"def.tk"},
      "ally_allytk_kill":           ${"def.tk"},
      "ally_allytk_blowup":         ${"def.tk"},
      "ally_enemytk_hit":           ${"def.en"},
      "ally_enemytk_kill":          ${"def.en"},
      "ally_enemytk_blowup":        ${"def.en"},
      "ally_self_hit":              ${"def.self"},
      "ally_self_kill":             ${"def.self"},
      "ally_self_blowup":           ${"def.self"},
      "squadman_ally_hit":          ${"def.sq"},
      "squadman_ally_kill":         ${"def.sq"},
      "squadman_ally_blowup":       ${"def.sq"},
      "squadman_squadman_hit":      ${"def.sq"},
      "squadman_squadman_kill":     ${"def.sq"},
      "squadman_squadman_blowup":   ${"def.sq"},
      "squadman_enemy_hit":         ${"def.sq"},
      "squadman_enemy_kill":        ${"def.sq"},
      "squadman_enemy_blowup":      ${"def.sq"},
      "squadman_allytk_hit":        ${"def.sq"},
      "squadman_allytk_kill":       ${"def.sq"},
      "squadman_allytk_blowup":     ${"def.sq"},
      "squadman_enemytk_hit":       ${"def.sq"},
      "squadman_enemytk_kill":      ${"def.sq"},
      "squadman_enemytk_blowup":    ${"def.sq"},
      "squadman_self_hit":          ${"def.self"},
      "squadman_self_kill":         ${"def.self"},
      "squadman_self_blowup":       ${"def.self"},
      "enemy_ally_hit":             ${"def.al"},
      "enemy_ally_kill":            ${"def.al"},
      "enemy_ally_blowup":          ${"def.al"},
      "enemy_squadman_hit":         ${"def.al"},
      "enemy_squadman_kill":        ${"def.al"},
      "enemy_squadman_blowup":      ${"def.al"},
      "enemy_enemy_hit":            ${"def.en"},
      "enemy_enemy_kill":           ${"def.en"},
      "enemy_enemy_blowup":         ${"def.en"},
      "enemy_allytk_hit":           ${"def.al"},
      "enemy_allytk_kill":          ${"def.al"},
      "enemy_allytk_blowup":        ${"def.al"},
      "enemy_enemytk_hit":          ${"def.en"},
      "enemy_enemytk_kill":         ${"def.en"},
      "enemy_enemytk_blowup":       ${"def.en"},
      "enemy_self_hit":             ${"def.self"},
      "enemy_self_kill":            ${"def.self"},
      "enemy_self_blowup":          ${"def.self"},
      "unknown_ally_hit":           ${"def.al"},
      "unknown_ally_kill":          ${"def.al"},
      "unknown_ally_blowup":        ${"def.al"},
      "unknown_squadman_hit":       ${"def.al"},
      "unknown_squadman_kill":      ${"def.al"},
      "unknown_squadman_blowup":    ${"def.al"},
      "unknown_enemy_hit":          ${"def.en"},
      "unknown_enemy_kill":         ${"def.en"},
      "unknown_enemy_blowup":       ${"def.en"},
      "unknown_allytk_hit":         ${"def.al"},
      "unknown_allytk_kill":        ${"def.al"},
      "unknown_allytk_blowup":      ${"def.al"},
      "unknown_enemytk_hit":        ${"def.en"},
      "unknown_enemytk_kill":       ${"def.en"},
      "unknown_enemytk_blowup":     ${"def.en"},
      "unknown_self_hit":           ${"def.self"},
      "unknown_self_kill":          ${"def.self"},
      "unknown_self_blowup":        ${"def.self"},
      "player_ally_hit":            ${"def.pl"},
      "player_ally_kill":           ${"def.pl"},
      "player_ally_blowup":         ${"def.pl"},
      "player_squadman_hit":        ${"def.pl"},
      "player_squadman_kill":       ${"def.pl"},
      "player_squadman_blowup":     ${"def.pl"},
      "player_enemy_hit":           ${"def.pl"},
      "player_enemy_kill":          ${"def.pl"},
      "player_enemy_blowup":        ${"def.pl"},
      "player_allytk_hit":          ${"def.pl"},
      "player_allytk_kill":         ${"def.pl"},
      "player_allytk_blowup":       ${"def.pl"},
      "player_enemytk_hit":         ${"def.pl"},
      "player_enemytk_kill":        ${"def.pl"},
      "player_enemytk_blowup":      ${"def.pl"},
      "player_self_hit":            ${"def.self"},
      "player_self_kill":           ${"def.self"},
      "player_self_blowup":         ${"def.self"}
    },
    // Values below should be from smaller to larger.
    // ----
    // Dynamic color by remaining absolute health.
    "hp": [
      { "value": 200,  "color": ${"def.colorHP.very_low"     } }, // color for HP <= 200
      { "value": 400,  "color": ${"def.colorHP.low"          } }, // color for HP <= 400
      { "value": 1000, "color": ${"def.colorHP.average"      } }, // color for HP <= 1000
      { "value": 9999, "color": ${"def.colorHP.above_average"} }  // color for HP > 1000
    ],
    // Dynamic color by remaining health percent.
    "hp_ratio": [
      { "value": 10.4, "color": ${"def.colorHP.very_low"     } }, // color for HP <= 10%
      { "value": 25.4, "color": ${"def.colorHP.low"          } }, // color for HP <= 25%
      { "value": 50.4, "color": ${"def.colorHP.average"      } }, // color for HP <= 50%
      { "value": 100,  "color": ${"def.colorHP.above_average"} }  // color for HP > 50%
    ],
    // Dynamic color for XVM Scale.
    // https://kr.cm/f/t/2625/
    "x": [
      { "value": 15.4, "color": ${"def.colorRatingExtended.1" } },  //  0 - 15
      { "value": 22.4, "color": ${"def.colorRatingExtended.2" } },  // 16 - 22
      { "value": 29.4, "color": ${"def.colorRatingExtended.3" } },  // 23 - 29
      { "value": 36.4, "color": ${"def.colorRatingExtended.4" } },  // 30 - 36
      { "value": 43.4, "color": ${"def.colorRatingExtended.5" } },  // 37 - 43
      { "value": 50.4, "color": ${"def.colorRatingExtended.6" } },  // 44 - 50
      { "value": 57.4, "color": ${"def.colorRatingExtended.7" } },  // 51 - 57
      { "value": 64.4, "color": ${"def.colorRatingExtended.8" } },  // 58 - 64
      { "value": 70.4, "color": ${"def.colorRatingExtended.9" } },  // 65 - 70
      { "value": 76.4, "color": ${"def.colorRatingExtended.10" } }, // 71 - 76
      { "value": 82.4, "color": ${"def.colorRatingExtended.11" } }, // 77 - 82
      { "value": 87.4, "color": ${"def.colorRatingExtended.12" } }, // 83 - 87
      { "value": 92.4, "color": ${"def.colorRatingExtended.13" } }, // 88 - 92
      { "value": 96.4, "color": ${"def.colorRatingExtended.14" } }, // 93 - 96
      { "value": 999,  "color": ${"def.colorRatingExtended.15" } }  // 97 - *
    ],
    // Current scales values for ratings are listed on this page: https://modxvm.com/en/ratings/xvm-scale/colors/
    //
    // Custom dynamic colors by ratings.
    // If you want use your own color scales,
    // uncomment this block and replace "rating_name" to one of this values: "eff", "wn8", "wtr", "wgr".
    // "rating_name": [
    //  { "value": 500,   "color": ${"def.colorRating.very_bad" } }, //    0 - 500   - very bad
    //  { "value": 1000,  "color": ${"def.colorRating.bad"      } }, //  501 - 1000  - bad
    //  { "value": 2000,  "color": ${"def.colorRating.normal"   } }, // 1001 - 2000  - normal
    //  { "value": 3000,  "color": ${"def.colorRating.good"     } }, // 2001 - 3000  - good
    //  { "value": 5000,  "color": ${"def.colorRating.very_good"} }, // 3001 - 5000  - very good
    //  { "value": 99999, "color": ${"def.colorRating.unique"   } }  // 5001 - 99999 - unique
    // ],
    // Dynamic color by win percent.
    "eff": [
      { "value": 610,  "color": ${"def.colorRating.very_bad" } },  //    0 - 609  - very bad   (20% of players)
      { "value": 850,  "color": ${"def.colorRating.bad"      } },  //  610 - 849  - bad        (better then 20% of players)
      { "value": 1145, "color": ${"def.colorRating.normal"   } },  //  850 - 1144 - normal     (better then 60% of players)
      { "value": 1475, "color": ${"def.colorRating.good"     } },  // 1145 - 1474 - good       (better then 90% of players)
      { "value": 1775, "color": ${"def.colorRating.very_good"} },  // 1475 - 1774 - very good  (better then 99% of players)
      { "value": 9999, "color": ${"def.colorRating.unique"   } }   // 1775 - *    - unique     (better then 99.9% of players)
    ],
    // Dynamic color by WN8 rating.
    "wn8": [
      { "value": 300,  "color": ${"def.colorRatingExtended.1" } },  //    0 -  300
      { "value": 500,  "color": ${"def.colorRatingExtended.2" } },  //  301 -  500
      { "value": 700,  "color": ${"def.colorRatingExtended.3" } },  //  501 -  700
      { "value": 900,  "color": ${"def.colorRatingExtended.4" } },  //  701 -  900
      { "value": 1100, "color": ${"def.colorRatingExtended.5" } },  //  901 - 1100
      { "value": 1300, "color": ${"def.colorRatingExtended.6" } },  // 1101 - 1300
      { "value": 1500, "color": ${"def.colorRatingExtended.7" } },  // 1301 - 1500
      { "value": 1700, "color": ${"def.colorRatingExtended.8" } },  // 1501 - 1700
      { "value": 1900, "color": ${"def.colorRatingExtended.9" } },  // 1701 - 1900
      { "value": 2100, "color": ${"def.colorRatingExtended.10" } }, // 1901 - 2100
      { "value": 2300, "color": ${"def.colorRatingExtended.11" } }, // 2101 - 2300
      { "value": 2500, "color": ${"def.colorRatingExtended.12" } }, // 2301 - 2500
      { "value": 2700, "color": ${"def.colorRatingExtended.13" } }, // 2501 - 2700
      { "value": 2900, "color": ${"def.colorRatingExtended.14" } }, // 2701 - 2900
      { "value": 9999, "color": ${"def.colorRatingExtended.15" } }  // 2901 - *
    ],
    // Dynamic color by WTR rating.
    "wtr": [
      { "value": 399,   "color": ${"def.colorRatingExtended.1" } },  //    0 -  399
      { "value": 999,   "color": ${"def.colorRatingExtended.2" } },  //  400 -  999
      { "value": 1399,  "color": ${"def.colorRatingExtended.3" } },  // 1000 - 1399
      { "value": 1899,  "color": ${"def.colorRatingExtended.4" } },  // 1400 - 1899
      { "value": 2699,  "color": ${"def.colorRatingExtended.5" } },  // 1900 - 2699
      { "value": 3199,  "color": ${"def.colorRatingExtended.6" } },  // 2700 - 3199
      { "value": 3899,  "color": ${"def.colorRatingExtended.7" } },  // 3200 - 3899
      { "value": 4799,  "color": ${"def.colorRatingExtended.8" } },  // 3900 - 4799
      { "value": 5399,  "color": ${"def.colorRatingExtended.9" } },  // 4800 - 5399
      { "value": 6199,  "color": ${"def.colorRatingExtended.10" } }, // 5400 - 6199
      { "value": 7299,  "color": ${"def.colorRatingExtended.11" } }, // 6200 - 7299
      { "value": 7999,  "color": ${"def.colorRatingExtended.12" } }, // 7300 - 7999
      { "value": 8799,  "color": ${"def.colorRatingExtended.13" } }, // 8000 - 8799
      { "value": 9899,  "color": ${"def.colorRatingExtended.14" } }, // 8800 - 9899
      { "value": 99999, "color": ${"def.colorRatingExtended.15" } }  // 9900 - *
    ],
    // Dynamic color by WGR rating.
    "wgr": [
      { "value": 2000,  "color": ${"def.colorRating.very_bad" } },  // very bad   (20% of players)
      { "value": 4000,  "color": ${"def.colorRating.bad"      } },  // bad        (better then 20% of players)
      { "value": 6000,  "color": ${"def.colorRating.normal"   } },  // normal     (better then 60% of players)
      { "value": 8000,  "color": ${"def.colorRating.good"     } },  // good       (better then 90% of players)
      { "value": 10000, "color": ${"def.colorRating.very_good"} },  // very good  (better then 99% of players)
      { "value": 20000, "color": ${"def.colorRating.unique"   } }   // unique     (better then 99.9% of players)
    ],
    // Dynamic color by TEFF (E) rating
    "e": [
      { "value": 3,    "color": ${"def.colorRating.very_bad" } },
      { "value": 6,    "color": ${"def.colorRating.bad"      } },
      { "value": 7,    "color": ${"def.colorRating.normal"   } },
      { "value": 8,    "color": ${"def.colorRating.good"     } },
      { "value": 9,    "color": ${"def.colorRating.very_good"} },
      { "value": 20,   "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by win percent.
    "winrate": [
      { "value":  29.99, "color": ${"def.colorRatingExtended.1" } },
      { "value":  39.99, "color": ${"def.colorRatingExtended.2" } },
      { "value":  44.99, "color": ${"def.colorRatingExtended.3" } },
      { "value":  47.99, "color": ${"def.colorRatingExtended.4" } },
      { "value":  49.99, "color": ${"def.colorRatingExtended.5" } },
      { "value":  52.99, "color": ${"def.colorRatingExtended.6" } },
      { "value":  54.99, "color": ${"def.colorRatingExtended.7" } },
      { "value":  57.99, "color": ${"def.colorRatingExtended.8" } },
      { "value":  59.99, "color": ${"def.colorRatingExtended.9" } },
      { "value":  62.99, "color": ${"def.colorRatingExtended.10" } },
      { "value":  64.99, "color": ${"def.colorRatingExtended.11" } },
      { "value":  67.99, "color": ${"def.colorRatingExtended.12" } },
      { "value":  69.99, "color": ${"def.colorRatingExtended.13" } },
      { "value":  79.99, "color": ${"def.colorRatingExtended.14" } },
      { "value": 100,    "color": ${"def.colorRatingExtended.15" } }
    ],
    // Dynamic color by kilo-battles.
    "kb": [
      { "value": 2,   "color": ${"def.colorRating.very_bad" } },  //  0 - 2
      { "value": 6,   "color": ${"def.colorRating.bad"      } },  //  3 - 6
      { "value": 16,  "color": ${"def.colorRating.normal"   } },  //  7 - 16
      { "value": 30,  "color": ${"def.colorRating.good"     } },  // 17 - 30
      { "value": 43,  "color": ${"def.colorRating.very_good"} },  // 31 - 43
      { "value": 999, "color": ${"def.colorRating.unique"   } }   // 44 - *
    ],
    // Dynamic color by average level of player tanks.
    "avglvl": [
      { "value": 1,  "color": ${"def.colorRating.very_bad" } },
      { "value": 2,  "color": ${"def.colorRating.bad"      } },
      { "value": 4,  "color": ${"def.colorRating.normal"   } },
      { "value": 6,  "color": ${"def.colorRating.good"     } },
      { "value": 8,  "color": ${"def.colorRating.very_good"} },
      { "value": 10, "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by battles on current tank.
    "t_battles": [
      { "value": 99,    "color": ${"def.colorRating.very_bad" } }, //    0 - 99
      { "value": 249,   "color": ${"def.colorRating.bad"      } }, //  100 - 249
      { "value": 499,   "color": ${"def.colorRating.normal"   } }, //  250 - 499
      { "value": 999,   "color": ${"def.colorRating.good"     } }, //  500 - 999
      { "value": 1799,  "color": ${"def.colorRating.very_good"} }, // 1000 - 1799
      { "value": 99999, "color": ${"def.colorRating.unique"   } }  // 1800 - *
    ],
    // Dynamic color by average damage on current tank.
    "tdb": [
      { "value": 499,  "color": ${"def.colorRating.very_bad" } },
      { "value": 749,  "color": ${"def.colorRating.bad"      } },
      { "value": 999,  "color": ${"def.colorRating.normal"   } },
      { "value": 1799, "color": ${"def.colorRating.good"     } },
      { "value": 2499, "color": ${"def.colorRating.very_good"} },
      { "value": 9999, "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by average damage efficiency on current tank.
    "tdv": [
      { "value": 0.5, "color": ${"def.colorRating.very_bad" } },
      { "value": 0.7, "color": ${"def.colorRating.bad"      } },
      { "value": 0.9, "color": ${"def.colorRating.normal"   } },
      { "value": 1.2, "color": ${"def.colorRating.good"     } },
      { "value": 1.9, "color": ${"def.colorRating.very_good"} },
      { "value": 15,  "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by average frags per battle on current tank.
    "tfb": [
      { "value": 0.5, "color": ${"def.colorRating.very_bad" } },
      { "value": 0.7, "color": ${"def.colorRating.bad"      } },
      { "value": 0.9, "color": ${"def.colorRating.normal"   } },
      { "value": 1.2, "color": ${"def.colorRating.good"     } },
      { "value": 1.9, "color": ${"def.colorRating.very_good"} },
      { "value": 15,  "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by average number of spotted enemies per battle on current tank.
    "tsb": [
      { "value": 0.5, "color": ${"def.colorRating.very_bad" } },
      { "value": 0.7, "color": ${"def.colorRating.bad"      } },
      { "value": 0.9, "color": ${"def.colorRating.normal"   } },
      { "value": 1.2, "color": ${"def.colorRating.good"     } },
      { "value": 1.9, "color": ${"def.colorRating.very_good"} },
      { "value": 15,  "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by WN8 effective damage.
    "wn8effd": [
      { "value": 0.5, "color": ${"def.colorRating.very_bad" } },
      { "value": 0.7, "color": ${"def.colorRating.bad"      } },
      { "value": 0.9, "color": ${"def.colorRating.normal"   } },
      { "value": 1.2, "color": ${"def.colorRating.good"     } },
      { "value": 1.9, "color": ${"def.colorRating.very_good"} },
      { "value": 15,  "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by damage rating (percents for marks on gun).
    "damageRating": [
      { "value": 14.99, "color": ${"def.colorRatingExtended.1" } },
      { "value": 24.99, "color": ${"def.colorRatingExtended.2" } },
      { "value": 34.99, "color": ${"def.colorRatingExtended.3" } },
      { "value": 44.99, "color": ${"def.colorRatingExtended.4" } },
      { "value": 54.99, "color": ${"def.colorRatingExtended.5" } },
      { "value": 64.99, "color": ${"def.colorRatingExtended.6" } },
      { "value": 74.99, "color": ${"def.colorRatingExtended.7" } }, // 1st mark
      { "value": 79.99, "color": ${"def.colorRatingExtended.8" } },
      { "value": 84.99, "color": ${"def.colorRatingExtended.9" } },
      { "value": 88.99, "color": ${"def.colorRatingExtended.10" } }, // 2nd mark
      { "value": 92.99, "color": ${"def.colorRatingExtended.11" } },
      { "value": 94.99, "color": ${"def.colorRatingExtended.12" } },
      { "value": 96.49, "color": ${"def.colorRatingExtended.13" } }, // 3rd mark
      { "value": 97.99, "color": ${"def.colorRatingExtended.14" } },
      { "value": 100,   "color": ${"def.colorRatingExtended.15" } }
    ],
    // Dynamic color by hit ratio (percents of hits).
    "hitsRatio": [
      { "value": 47.4, "color": ${"def.colorRating.very_bad" } },
      { "value": 60.4, "color": ${"def.colorRating.bad"      } },
      { "value": 68.4, "color": ${"def.colorRating.normal"   } },
      { "value": 74.4, "color": ${"def.colorRating.good"     } },
      { "value": 78.4, "color": ${"def.colorRating.very_good"} },
      { "value": 100,  "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by percentage of damage caused.
    "dmg_ratio_player": [
      { "value": 16.5, "color": ${"def.colorRating.very_bad" } },
      { "value": 33.5, "color": ${"def.colorRating.bad"      } },
      { "value": 49.5, "color": ${"def.colorRating.normal"   } },
      { "value": 66.5, "color": ${"def.colorRating.good"     } },
      { "value": 83.5, "color": ${"def.colorRating.very_good"} },
      { "value": 999,  "color": ${"def.colorRating.unique"   } }
    ]
  }
}
