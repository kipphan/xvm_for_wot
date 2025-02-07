/**
 * Options for dynamic transparency. Values from smallest to largest.
 */
{
  // Transparency values for substitutions.
  "def": {
    // Dynamic transparency by various statistical parameters.
    "alphaRating": {
      "very_bad":      "100",  // very bad
      "bad":           "70",   // bad
      "normal":        "40",   // normal
      "good":          "10",   // good
      "very_good":     "0",    // very good
      "unique":        "0"     // unique
    },
    // Dynamic transparency by remaining health points.
    "alphaHP": {
      "very_low":      "100",  // very low
      "low":           "75",   // low
      "average":       "50",   // average
      "above_average": "0"     // above-average
    }
  },
  "alpha": {
    // Dynamic transparency by spotted status.
    "spotted": {
      "neverSeen":      100,
      "lost":           100,
      "spotted":        100,
      "dead":           100,
      "neverSeen_arty": 100,
      "lost_arty":      100,
      "spotted_arty":   100,
      "dead_arty":      100
    },
    // Dynamic transparency by remaining health.
    "hp": [
      { "value": 200,  "alpha": ${"def.alphaHP.very_low"     } }, // alpha for HP <= 200
      { "value": 400,  "alpha": ${"def.alphaHP.low"          } }, // alpha for HP <= 400
      { "value": 1000, "alpha": ${"def.alphaHP.average"      } }, // alpha for HP <= 1000
      { "value": 9999, "alpha": ${"def.alphaHP.above_average"} }  // alpha for HP > 1000
    ],
    // Dynamic transparency by percentage of remaining health.
    "hp_ratio": [
      { "value": 10.4, "alpha": ${"def.alphaHP.very_low"     } }, // alpha for HP <= 10%
      { "value": 25.4, "alpha": ${"def.alphaHP.low"          } }, // alpha for HP <= 25%
      { "value": 50.4, "alpha": ${"def.alphaHP.average"      } }, // alpha for HP <= 50%
      { "value": 100,  "alpha": ${"def.alphaHP.above_average"} }  // alpha for HP > 50%
    ],
    // Current scales values for ratings are listed on this page: https://modxvm.com/en/ratings/xvm-scale/colors/
    //
    // Custom dynamic transparency by ratings.
    // If you want use your own transparency scales,
    // uncomment this block and replace "rating_name" to one of this values: "eff", "wn8", "wtr", "wgr".
    // "rating_name": [
    //  { "value": 500,   "alpha": ${"def.alphaRating.very_bad" } }, //    0 - 500   - very bad
    //  { "value": 1000,  "alpha": ${"def.alphaRating.bad"      } }, //  501 - 1000  - bad
    //  { "value": 2000,  "alpha": ${"def.alphaRating.normal"   } }, // 1001 - 2000  - normal
    //  { "value": 3000,  "alpha": ${"def.alphaRating.good"     } }, // 2001 - 3000  - good
    //  { "value": 5000,  "alpha": ${"def.alphaRating.very_good"} }, // 3001 - 5000  - very good
    //  { "value": 99999, "alpha": ${"def.alphaRating.unique"   } }  // 5001 - 99999 - unique
    // ],
    // Dynamic transparency for XVM Scale.
    "x": [
      { "value": 16.4, "alpha": ${"def.alphaRating.very_bad" } }, // 00 - 16 - very bad  (20% of players)
      { "value": 33.4, "alpha": ${"def.alphaRating.bad"      } }, // 17 - 33 - bad       (better than 20% of players)
      { "value": 52.4, "alpha": ${"def.alphaRating.normal"   } }, // 34 - 52 - normal    (better than 60% of players)
      { "value": 75.4, "alpha": ${"def.alphaRating.good"     } }, // 53 - 75 - good      (better than 90% of players)
      { "value": 92.4, "alpha": ${"def.alphaRating.very_good"} }, // 76 - 92 - very good (better than 99% of players)
      { "value": 999,  "alpha": ${"def.alphaRating.unique"   } }  // 93 - XX - unique    (better than 99.9% of players)
    ],
    // Dynamic transparency by efficiency.
    "eff": [
      { "value": 615,   "alpha": ${"def.alphaRating.very_bad"  } },
      { "value": 870,   "alpha": ${"def.alphaRating.bad"       } },
      { "value": 1175,  "alpha": ${"def.alphaRating.normal"    } },
      { "value": 1525,  "alpha": ${"def.alphaRating.good"      } },
      { "value": 1850,  "alpha": ${"def.alphaRating.very_good" } },
      { "value": 9999,  "alpha": ${"def.alphaRating.unique"    } }
    ],
    // Dynamic transparency by WN8 rating.
    "wn8": [
      { "value": 370,   "alpha": ${"def.alphaRating.very_bad"  } },
      { "value": 845,   "alpha": ${"def.alphaRating.bad"       } },
      { "value": 1395,  "alpha": ${"def.alphaRating.normal"    } },
      { "value": 2070,  "alpha": ${"def.alphaRating.good"      } },
      { "value": 2715,  "alpha": ${"def.alphaRating.very_good" } },
      { "value": 9999,  "alpha": ${"def.alphaRating.unique"    } }
    ],
    // Dynamic transparency by WTR rating.
    "wtr": [
      { "value": 399,   "color": ${"def.alphaRating.very_bad"     } }, // Bronze I
      { "value": 999,   "color": ${"def.alphaRating.very_bad"     } }, // Bronze II
      { "value": 1399,  "color": ${"def.alphaRating.very_bad"     } }, // Bronze III
      { "value": 1899,  "color": ${"def.alphaRating.bad"          } }, // Silver I
      { "value": 2699,  "color": ${"def.alphaRating.bad"          } }, // Silver II
      { "value": 3199,  "color": ${"def.alphaRating.bad"          } }, // Silver III
      { "value": 3899,  "color": ${"def.alphaRating.normal"       } }, // Gold I
      { "value": 4799,  "color": ${"def.alphaRating.normal"       } }, // Gold II
      { "value": 5399,  "color": ${"def.alphaRating.normal"       } }, // Gold III
      { "value": 6199,  "color": ${"def.alphaRating.good"         } }, // Ace I
      { "value": 7299,  "color": ${"def.alphaRating.good"         } }, // Ace II
      { "value": 7999,  "color": ${"def.alphaRating.very_good"    } }, // Ace III
      { "value": 8799,  "color": ${"def.alphaRating.very_good"    } }, // Legend I
      { "value": 9899,  "color": ${"def.alphaRating.unique"       } }, // Legend II
      { "value": 99999, "color": ${"def.alphaRating.unique"       } }  // Legend III
    ],
    // Dynamic transparency by WGR rating.
    "wgr": [
      { "value": 2495,  "alpha": ${"def.alphaRating.very_bad"  } },
      { "value": 4345,  "alpha": ${"def.alphaRating.bad"       } },
      { "value": 6425,  "alpha": ${"def.alphaRating.normal"    } },
      { "value": 8625,  "alpha": ${"def.alphaRating.good"      } },
      { "value": 10040, "alpha": ${"def.alphaRating.very_good" } },
      { "value": 99999, "alpha": ${"def.alphaRating.unique"    } }
    ],
    // Dynamic transparency by win percent.
    "winrate": [
      { "value": 46.49, "alpha": ${"def.alphaRating.very_bad" } },
      { "value": 48.49, "alpha": ${"def.alphaRating.bad"      } },
      { "value": 52.49, "alpha": ${"def.alphaRating.normal"   } },
      { "value": 57.49, "alpha": ${"def.alphaRating.good"     } },
      { "value": 63.49, "alpha": ${"def.alphaRating.very_good"} },
      { "value": 100,   "alpha": ${"def.alphaRating.unique"   } }
    ],
    // Dynamic transparency by kilo-battles.
    "kb": [
      { "value": 2,   "alpha": ${"def.alphaRating.very_bad" } },
      { "value": 6,   "alpha": ${"def.alphaRating.bad"      } },
      { "value": 16,  "alpha": ${"def.alphaRating.normal"   } },
      { "value": 30,  "alpha": ${"def.alphaRating.good"     } },
      { "value": 43,  "alpha": ${"def.alphaRating.very_good"} },
      { "value": 999, "alpha": ${"def.alphaRating.unique"   } }
    ],
    // Dynamic transparency by average level of player tanks.
    "avglvl": [
      { "value": 1,   "alpha": ${"def.alphaRating.very_bad" } },
      { "value": 2,   "alpha": ${"def.alphaRating.bad"      } },
      { "value": 4,   "alpha": ${"def.alphaRating.normal"   } },
      { "value": 6,   "alpha": ${"def.alphaRating.good"     } },
      { "value": 8,   "alpha": ${"def.alphaRating.very_good"} },
      { "value": 10,  "alpha": ${"def.alphaRating.unique"   } }
    ],
    // Dynamic transparency by battles on current tank.
    "t_battles": [
      { "value": 99,    "alpha": ${"def.alphaRating.very_bad" } },
      { "value": 249,   "alpha": ${"def.alphaRating.bad"      } },
      { "value": 499,   "alpha": ${"def.alphaRating.normal"   } },
      { "value": 999,   "alpha": ${"def.alphaRating.good"     } },
      { "value": 1799,  "alpha": ${"def.alphaRating.very_good"} },
      { "value": 99999, "alpha": ${"def.alphaRating.unique"   } }
    ],
    // Dynamic transparency by average damage on current tank.
    "tdb": [
      { "value": 499,  "alpha": ${"def.alphaRating.very_bad" } },
      { "value": 749,  "alpha": ${"def.alphaRating.bad"      } },
      { "value": 999,  "alpha": ${"def.alphaRating.normal"   } },
      { "value": 1799, "alpha": ${"def.alphaRating.good"     } },
      { "value": 2499, "alpha": ${"def.alphaRating.very_good"} },
      { "value": 9999, "alpha": ${"def.alphaRating.unique"   } }
    ],
    // Dynamic transparency by average damage efficiency on current tank.
    "tdv": [
      { "value": 0.5, "alpha": ${"def.alphaRating.very_bad" } },
      { "value": 0.7, "alpha": ${"def.alphaRating.bad"      } },
      { "value": 0.9, "alpha": ${"def.alphaRating.normal"   } },
      { "value": 1.2, "alpha": ${"def.alphaRating.good"     } },
      { "value": 1.9, "alpha": ${"def.alphaRating.very_good"} },
      { "value": 15,  "alpha": ${"def.alphaRating.unique"   } }
    ],
    // Dynamic transparency by average frags per battle on current tank.
    "tfb": [
      { "value": 0.5, "alpha": ${"def.alphaRating.very_bad" } },
      { "value": 0.7, "alpha": ${"def.alphaRating.bad"      } },
      { "value": 0.9, "alpha": ${"def.alphaRating.normal"   } },
      { "value": 1.2, "alpha": ${"def.alphaRating.good"     } },
      { "value": 1.9, "alpha": ${"def.alphaRating.very_good"} },
      { "value": 15,  "alpha": ${"def.alphaRating.unique"   } }
    ],
    // Dynamic transparency by average number of spotted enemies per battle on current tank.
    "tsb": [
      { "value": 0.5, "alpha": ${"def.alphaRating.very_bad" } },
      { "value": 0.7, "alpha": ${"def.alphaRating.bad"      } },
      { "value": 0.9, "alpha": ${"def.alphaRating.normal"   } },
      { "value": 1.2, "alpha": ${"def.alphaRating.good"     } },
      { "value": 1.9, "alpha": ${"def.alphaRating.very_good"} },
      { "value": 15,  "alpha": ${"def.alphaRating.unique"   } }
    ]
  }
}
