/**
 * Color settings.
 * Настройки цветов.
 */
{
  // Color values for substitutions.
  // Значения цветов для подстановок.
  "def": {
    "al": "0x6CE06C",                 // ally       / союзник
    "sq": "0xF5A83D",                 // squadman   / взводный
    "tk": "0x52B1E0",                 // teamKiller / тимкиллер
    "en": "0xed5e5e",                 // enemy      / противник
    "pl": "0xf6e955",                 // player     / игрок
    // Dynamic color by various statistical parameters.
    // Динамический цвет по различным статистическим показателям.
    "colorRating": {
      "undefined":		"0xbdc3c7", // undefined

      "1":            "0xf76e6e", // very bad  / очень плохо
      "2":            "0xf7856e", // 
      "3":            "0xf79c6e", // bad       / плохо
      "4":            "0xf7b26e", // 
      "5":            "0xf7e06e", // low
      "6":            "0xd5f76e", // 
      "7":            "0xb3f76e", // normal    / средне
      "8":            "0x86f986", // 
      "9":            "0x6ef7b3", // good      / хорошо
      "10":           "0x55f6db", // 
      "11":           "0x6ee0f7", // very good / очень хорошо
      "12":           "0x86bff9", // 
      "13":           "0x86acf9", // unicum
      "14":           "0xbd9efa", // 
      "15":           "0xd286f9"  // unique    / уникально
    },
    // Dynamic color by remaining health points.
    // Динамический цвет по оставшемуся запасу прочности.
    "colorHP": {
      "1":            "0xf76e6e", // 
      "2":            "0xf7856e", // very low      / очень низкий
      "3":            "0xf79c6e", // 
      "4":            "0xf7b26e", // low           / низкий
      "5":            "0xf7e06e", // 
      "6":            "0xd5f76e", // average       / средний
      "7":            "0xb3f76e", // 
      "8":            "0x86f986"  // above-average / выше среднего
    }
  },
  "colors": {
    // System colors.
    // Системные цвета.
    "system": {
      // Format:    object_state
      // Object:    ally, squadman, teamKiller, enemy
      // State:     alive, dead, blowedup
      // ----
      // Формат:    объект_состояние
      // Объект:    ally - союзник, squadman - взводный, teamKiller - тимкиллер, enemy - противник
      // Состояние: alive - живой, dead - мертвый, blowedup - взорвана боеукладка
      "ally_alive":          ${"def.al"},
      "ally_dead":           "0x66cc66",
      "ally_blowedup":       "0x53c653",
      "squadman_alive":      ${"def.sq"},
      "squadman_dead":       "0xe0a552",
      "squadman_blowedup":   "0xdd9a3c",
      "teamKiller_alive":    ${"def.tk"},
      "teamKiller_dead":     "0x66aacc",
      "teamKiller_blowedup": "0x539fc6",
      "enemy_alive":         ${"def.en"},
      "enemy_dead":          "0xdb7070",
      "enemy_blowedup":      "0xd65c5c",
      "ally_base":           ${"def.al"},
      "enemy_base":          ${"def.en"}
    },
    // Dynamic color by damage kind.
    // Динамический цвет по типу урона.
    "dmg_kind": {
      "shot":            "0xEF5350", // shot            / попадание
      "fire":            "0xFF9800", // fire            / пожар
      "ramming":         "0x998855", // ramming         / таран
      "world_collision": "0x4CAF50", // world collision / столкновение с объектами, падение
      "death_zone":      "0x607D8B", // death_zone      / опасная зона
      "drowning":        "0x2196F3", // drowning        / затопление
      "other":           "0xEEEEEE"  // other           / другое
    },
    // Dynamic color by vehicle type.
    // Динамический цвет по типу техники.
    "vtype": {
      // Цвет для легких танков.
      "LT":      "0x4CAF50",
      // Цвет для средних танков.
      "MT":      "0xFFC107",
      // Цвет для тяжелых танков.
      "HT":      "0xEF5350",
      // Цвет для арты.
      "SPG":     "0x9C27B0",
      // Цвет для ПТ.
      "TD":      "0x2196F3",
      // Цвет для премиумной техники.
      "premium": "0xFF9800",
      // Включить/выключить использование премиумного цвета.
      "usePremiumColor": false
    },
    // Dynamic color by spotted status.
    // Динамический цвет по статусу засвета.
    "spotted": {
      "neverSeen":      "0x000000",
      "lost":           "0x757575",
      "spotted":        "0xFFC107",
      "dead":           "0x607D8B",
      "neverSeen_arty": "0x000000",
      "lost_arty":      "0x757575",
      "spotted_arty":   "0xFFC107",
      "dead_arty":      "0x607D8B"
    },
    // HP color depending on the ratio of ally and enemy teams hp.
    // Цвет ХП в зависимости от отношения хп союзной и вражеской команд.
    "totalHP": {
      "bad":     "0xEF5350",
      "neutral": "0xFFC107",
      "good":    "0x4CAF50"
    },
    // Color settings for damage.
    // Настройки цвета для урона.
    "damage": {
      // Format: src_dst_type.
      // Src:  ally, squadman, enemy, unknown, player.
      // Dst:  ally, squadman, allytk, enemytk, enemy.
      // Type: hit, kill, blowup.
      // ----
      // Формат: источник_получатель_тип.
      // Источник:   ally - союзник, squadman - взводный, enemy - противник, unknown - неизвестный (не виден игроку), player - игрок.
      // Получатель: ally, squadman, enemy, allytk - союзник тимкиллер, enemytk - противник тимкиллер.
      // Тип:        hit - попадание, kill - убийство, blowup - боеукладка.
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
      "player_enemytk_blowup":      ${"def.pl"}
    },
    // Values below should be from smaller to larger.
    // Значения ниже должны быть от меньшего к большему.
    // ----
    // Dynamic color by remaining absolute health.
    // Динамический цвет по оставшемуся здоровью.
    "hp": [
      { "value": 200,  "color": ${"def.colorHP.1"} }, // color for HP <=  200
      { "value": 400,  "color": ${"def.colorHP.2"} }, // color for HP <=  400
      { "value": 600,  "color": ${"def.colorHP.3"} }, // color for HP <=  600
      { "value": 800,  "color": ${"def.colorHP.4"} }, // color for HP <=  800
      { "value": 1000, "color": ${"def.colorHP.5"} }, // color for HP <= 1000
      { "value": 1500, "color": ${"def.colorHP.6"} }, // color for HP <= 1500
      { "value": 2000, "color": ${"def.colorHP.7"} }, // color for HP <= 2000
      { "value": 9999, "color": ${"def.colorHP.8"} }  // color for HP  > 2000
    ],
    // Dynamic color by remaining health percent.
    // Динамический цвет по проценту оставшегося здоровья.
    "hp_ratio": [
      { "value": 10,  "color": ${"def.colorHP.1"} }, // color for HP <= 10%
      { "value": 20,  "color": ${"def.colorHP.2"} }, // color for HP <= 20%
      { "value": 30,  "color": ${"def.colorHP.3"} }, // color for HP <= 30%
      { "value": 40,  "color": ${"def.colorHP.4"} }, // color for HP <= 40%
      { "value": 50,  "color": ${"def.colorHP.5"} }, // color for HP <= 50%
      { "value": 60,  "color": ${"def.colorHP.6"} }, // color for HP <= 60%
      { "value": 70,  "color": ${"def.colorHP.7"} }, // color for HP <= 70%
      { "value": 100, "color": ${"def.colorHP.8"} }  // color for HP  > 70%
    ],
    // Dynamic color for XVM Scale.
    // Динамический цвет по шкале XVM.
    // https://kr.cm/f/t/2625/
    "x": [
      { "value": 40.4, "color": ${"def.colorRating.1" } },
      { "value": 44.4, "color": ${"def.colorRating.2" } },
      { "value": 48.4, "color": ${"def.colorRating.3" } },
      { "value": 52.4, "color": ${"def.colorRating.4" } },
      { "value": 56.4, "color": ${"def.colorRating.5" } },
      { "value": 60.4, "color": ${"def.colorRating.6" } },
      { "value": 64.4, "color": ${"def.colorRating.7" } },
      { "value": 68.4, "color": ${"def.colorRating.8" } },
      { "value": 72.4, "color": ${"def.colorRating.9" } },
      { "value": 76.4, "color": ${"def.colorRating.10"} },
      { "value": 80.4, "color": ${"def.colorRating.11"} },
      { "value": 84.4, "color": ${"def.colorRating.12"} },
      { "value": 88.4, "color": ${"def.colorRating.13"} },
      { "value": 92.4, "color": ${"def.colorRating.14"} },
      { "value": 999,  "color": ${"def.colorRating.15"} }
    ],
    // Current scales values for ratings are listed on this page: https://modxvm.com/en/ratings/xvm-scale/colors/
    // Текущие граничные значения для рейтингов указаны на данной странице: https://modxvm.com/ru/ratings/xvm-scale/colors/
    //
    // Custom dynamic colors by ratings.
    // If you want use your own color scales,
    // uncomment this block and replace "rating_name" to one of this values: "eff", "wn8", "wtr", "wgr".
    // Динамический цвет по указанному рейтингу.
    // Если вы хотите использовать свои собственные границы цветов вместо стандартных,
    // раскомментируйте блок и замените "rating_name" на одно из следующих значений: "eff", "wn8", "wtr", "wgr".
    // "rating_name": [
    //  { "value": 500,   "color": ${"def.colorRating.very_bad" } }, //    0 - 500   - very bad
    //  { "value": 1000,  "color": ${"def.colorRating.bad"      } }, //  501 - 1000  - bad
    //  { "value": 2000,  "color": ${"def.colorRating.normal"   } }, // 1001 - 2000  - normal
    //  { "value": 3000,  "color": ${"def.colorRating.good"     } }, // 2001 - 3000  - good
    //  { "value": 5000,  "color": ${"def.colorRating.very_good"} }, // 3001 - 5000  - very good
    //  { "value": 99999, "color": ${"def.colorRating.unique"   } }  // 5001 - 99999 - unique
    // ],
    // Dynamic color by WN8 rating
    "wn8": [
      { "value": 1000, "color": ${"def.colorRating.1" } },
      { "value": 1250, "color": ${"def.colorRating.2" } },
      { "value": 1500, "color": ${"def.colorRating.3" } },
      { "value": 1600, "color": ${"def.colorRating.4" } },
      { "value": 1700, "color": ${"def.colorRating.5" } },
      { "value": 1800, "color": ${"def.colorRating.6" } },
      { "value": 1900, "color": ${"def.colorRating.7" } },
      { "value": 2000, "color": ${"def.colorRating.8" } },
      { "value": 2100, "color": ${"def.colorRating.9" } },
      { "value": 2200, "color": ${"def.colorRating.10"} },
      { "value": 2400, "color": ${"def.colorRating.11"} },
      { "value": 2600, "color": ${"def.colorRating.12"} },
      { "value": 2800, "color": ${"def.colorRating.13"} },
      { "value": 3000, "color": ${"def.colorRating.14"} },
      { "value": 9999, "color": ${"def.colorRating.15"} }
    ],
    // Dynamic color by win percent.
    // Динамический цвет по проценту побед.
    "winrate": [
      { "value": 40.49, "color": ${"def.colorRating.1" } },
      { "value": 42.49, "color": ${"def.colorRating.2" } },
      { "value": 44.49, "color": ${"def.colorRating.3" } },
      { "value": 46.49, "color": ${"def.colorRating.4" } },
      { "value": 48.49, "color": ${"def.colorRating.5" } },
      { "value": 50.49, "color": ${"def.colorRating.6" } },
      { "value": 52.49, "color": ${"def.colorRating.7" } },
      { "value": 54.49, "color": ${"def.colorRating.8" } },
      { "value": 57.49, "color": ${"def.colorRating.9" } },
      { "value": 60.49, "color": ${"def.colorRating.10"} },
      { "value": 63.49, "color": ${"def.colorRating.11"} },
      { "value": 66.49, "color": ${"def.colorRating.12"} },
      { "value": 69.49, "color": ${"def.colorRating.13"} },
      { "value": 72.49, "color": ${"def.colorRating.14"} },
      { "value": 100,   "color": ${"def.colorRating.15"} }
    ],
    // Dynamic color by kilo-battles.
    // Динамический цвет по количеству кило-боев.
    "kb": [
      { "value": 3,   "color": ${"def.colorRating.1" } },
      { "value": 6,   "color": ${"def.colorRating.2" } },
      { "value": 9,   "color": ${"def.colorRating.3" } },
      { "value": 12,  "color": ${"def.colorRating.4" } },
      { "value": 16,  "color": ${"def.colorRating.5" } },
      { "value": 20,  "color": ${"def.colorRating.6" } },
      { "value": 24,  "color": ${"def.colorRating.7" } },
      { "value": 28,  "color": ${"def.colorRating.8" } },
      { "value": 32,  "color": ${"def.colorRating.9" } },
      { "value": 36,  "color": ${"def.colorRating.10"} },
      { "value": 40,  "color": ${"def.colorRating.11"} },
      { "value": 45,  "color": ${"def.colorRating.12"} },
      { "value": 50,  "color": ${"def.colorRating.13"} },
      { "value": 60,  "color": ${"def.colorRating.14"} },
      { "value": 100, "color": ${"def.colorRating.15"} }
    ],
    // Dynamic color by average level of player tanks.
    // Динамический цвет по среднему уровню танков игрока.
    "avglvl": [
      { "value": 1,  "color": ${"def.colorRating.1" } },
      { "value": 2,  "color": ${"def.colorRating.2" } },
      { "value": 3,  "color": ${"def.colorRating.3" } },
      { "value": 4,  "color": ${"def.colorRating.4" } },
      { "value": 5,  "color": ${"def.colorRating.5" } },
      { "value": 6,  "color": ${"def.colorRating.6" } },
      { "value": 7,  "color": ${"def.colorRating.7" } },
      { "value": 8,  "color": ${"def.colorRating.8" } },
      { "value": 9,  "color": ${"def.colorRating.9" } },
      { "value": 10, "color": ${"def.colorRating.10"} },
      { "value": 11, "color": ${"def.colorRating.11"} },
      { "value": 12, "color": ${"def.colorRating.12"} },
      { "value": 13, "color": ${"def.colorRating.13"} },
      { "value": 14, "color": ${"def.colorRating.14"} },
      { "value": 15, "color": ${"def.colorRating.15"} }
    ],
    // Dynamic color by battles on current tank.
    // Динамический цвет по количеству боев на текущем танке.
    "t_battles": [
      { "value": 10,    "color": ${"def.colorRating.1" } },
      { "value": 25,    "color": ${"def.colorRating.2" } },
      { "value": 50,    "color": ${"def.colorRating.3" } },
      { "value": 75,    "color": ${"def.colorRating.4" } },
      { "value": 100,   "color": ${"def.colorRating.5" } },
      { "value": 200,   "color": ${"def.colorRating.6" } },
      { "value": 300,   "color": ${"def.colorRating.7" } },
      { "value": 400,   "color": ${"def.colorRating.8" } },
      { "value": 500,   "color": ${"def.colorRating.9" } },
      { "value": 600,   "color": ${"def.colorRating.10"} },
      { "value": 800,   "color": ${"def.colorRating.11"} },
      { "value": 1000,  "color": ${"def.colorRating.12"} },
      { "value": 1500,  "color": ${"def.colorRating.13"} },
      { "value": 2000,  "color": ${"def.colorRating.14"} },
      { "value": 99999, "color": ${"def.colorRating.15"} }
    ],
    // Dynamic color by average damage on current tank.
    // Динамический цвет по среднему урону за бой на текущем танке.
    "tdb": [
      { "value": 200,   "color": ${"def.colorRating.1" } },
      { "value": 400,   "color": ${"def.colorRating.2" } },
      { "value": 600,   "color": ${"def.colorRating.3" } },
      { "value": 800,   "color": ${"def.colorRating.4" } },
      { "value": 1000,  "color": ${"def.colorRating.5" } },
      { "value": 1200,  "color": ${"def.colorRating.6" } },
      { "value": 1400,  "color": ${"def.colorRating.7" } },
      { "value": 1600,  "color": ${"def.colorRating.8" } },
      { "value": 1800,  "color": ${"def.colorRating.9" } },
      { "value": 2100,  "color": ${"def.colorRating.10"} },
      { "value": 2400,  "color": ${"def.colorRating.11"} },
      { "value": 2700,  "color": ${"def.colorRating.12"} },
      { "value": 3000,  "color": ${"def.colorRating.13"} },
      { "value": 3500,  "color": ${"def.colorRating.14"} },
      { "value": 99999, "color": ${"def.colorRating.15"} }
    ],
    // Dynamic color by average damage efficiency on current tank.
    // Динамический цвет по эффективности урона за бой на текущем танке.
    "tdv": [
      { "value": 0.5, "color": ${"def.colorRating.1" } },
      { "value": 0.7, "color": ${"def.colorRating.2" } },
      { "value": 0.9, "color": ${"def.colorRating.3" } },
      { "value": 1.1, "color": ${"def.colorRating.4" } },
      { "value": 1.2, "color": ${"def.colorRating.5" } },
      { "value": 1.3, "color": ${"def.colorRating.6" } },
      { "value": 1.4, "color": ${"def.colorRating.7" } },
      { "value": 1.5, "color": ${"def.colorRating.8" } },
      { "value": 1.6, "color": ${"def.colorRating.9" } },
      { "value": 1.7, "color": ${"def.colorRating.10"} },
      { "value": 1.8, "color": ${"def.colorRating.11"} },
      { "value": 1.9, "color": ${"def.colorRating.12"} },
      { "value": 2.0, "color": ${"def.colorRating.13"} },
      { "value": 2.5, "color": ${"def.colorRating.14"} },
      { "value": 15,  "color": ${"def.colorRating.15"} }
    ],
    // Dynamic color by average frags per battle on current tank.
    // Динамический цвет по среднему количеству фрагов за бой на текущем танке.
    "tfb": [
      { "value": 0.5, "color": ${"def.colorRating.1" } },
      { "value": 0.7, "color": ${"def.colorRating.2" } },
      { "value": 0.9, "color": ${"def.colorRating.3" } },
      { "value": 1.1, "color": ${"def.colorRating.4" } },
      { "value": 1.2, "color": ${"def.colorRating.5" } },
      { "value": 1.3, "color": ${"def.colorRating.6" } },
      { "value": 1.4, "color": ${"def.colorRating.7" } },
      { "value": 1.5, "color": ${"def.colorRating.8" } },
      { "value": 1.6, "color": ${"def.colorRating.9" } },
      { "value": 1.7, "color": ${"def.colorRating.10"} },
      { "value": 1.8, "color": ${"def.colorRating.11"} },
      { "value": 1.9, "color": ${"def.colorRating.12"} },
      { "value": 2.0, "color": ${"def.colorRating.13"} },
      { "value": 2.5, "color": ${"def.colorRating.14"} },
      { "value": 15,  "color": ${"def.colorRating.15"} }
    ],
    // Dynamic color by average number of spotted enemies per battle on current tank.
    // Динамический цвет по среднему количеству засвеченных врагов за бой на текущем танке.
    "tsb": [
      { "value": 0.5, "color": ${"def.colorRating.1" } },
      { "value": 0.7, "color": ${"def.colorRating.2" } },
      { "value": 0.9, "color": ${"def.colorRating.3" } },
      { "value": 1.1, "color": ${"def.colorRating.4" } },
      { "value": 1.2, "color": ${"def.colorRating.5" } },
      { "value": 1.3, "color": ${"def.colorRating.6" } },
      { "value": 1.4, "color": ${"def.colorRating.7" } },
      { "value": 1.5, "color": ${"def.colorRating.8" } },
      { "value": 1.6, "color": ${"def.colorRating.9" } },
      { "value": 1.7, "color": ${"def.colorRating.10"} },
      { "value": 1.8, "color": ${"def.colorRating.11"} },
      { "value": 1.9, "color": ${"def.colorRating.12"} },
      { "value": 2.0, "color": ${"def.colorRating.13"} },
      { "value": 2.5, "color": ${"def.colorRating.14"} },
      { "value": 15,  "color": ${"def.colorRating.15"} }
    ],
    // Dynamic color by WN8 effective damage.
    // Динамический цвет по эффективному урону по WN8.
    "wn8effd": [
      { "value": 0.5, "color": ${"def.colorRating.1" } },
      { "value": 0.7, "color": ${"def.colorRating.2" } },
      { "value": 0.9, "color": ${"def.colorRating.3" } },
      { "value": 1.1, "color": ${"def.colorRating.4" } },
      { "value": 1.2, "color": ${"def.colorRating.5" } },
      { "value": 1.3, "color": ${"def.colorRating.6" } },
      { "value": 1.4, "color": ${"def.colorRating.7" } },
      { "value": 1.5, "color": ${"def.colorRating.8" } },
      { "value": 1.6, "color": ${"def.colorRating.9" } },
      { "value": 1.7, "color": ${"def.colorRating.10"} },
      { "value": 1.8, "color": ${"def.colorRating.11"} },
      { "value": 1.9, "color": ${"def.colorRating.12"} },
      { "value": 2.0, "color": ${"def.colorRating.13"} },
      { "value": 2.5, "color": ${"def.colorRating.14"} },
      { "value": 15,  "color": ${"def.colorRating.15"} }
    ],
    // Dynamic color by damage rating (percents for marks on gun).
    // Динамический цвет по рейтингу урона (процент для отметок на стволе).
    "damageRating": [
      { "value": 34.99, "color": ${"def.colorRating.1" } }, // 0 marks
      { "value": 39.99, "color": ${"def.colorRating.2" } },
      { "value": 44.99, "color": ${"def.colorRating.3" } },
      { "value": 49.99, "color": ${"def.colorRating.4" } },
      { "value": 64.99, "color": ${"def.colorRating.5" } },

      { "value": 67.49, "color": ${"def.colorRating.6" } }, // 1 mark
      { "value": 69.99, "color": ${"def.colorRating.7" } },
      { "value": 84.99, "color": ${"def.colorRating.8" } },

      { "value": 87.49, "color": ${"def.colorRating.10"} }, // 2 marks
      { "value": 89.99, "color": ${"def.colorRating.11"} },
      { "value": 94.99, "color": ${"def.colorRating.12"} },

      { "value": 95.99, "color": ${"def.colorRating.13"} }, // 3 marks
      { "value": 96.99, "color": ${"def.colorRating.14"} },
      { "value": 100,   "color": ${"def.colorRating.15"} }
    ],
    // Dynamic color by hit ratio (percents of hits).
    // Динамический цвет по проценту попаданий.
    "hitsRatio": [
      { "value": 50.5, "color": ${"def.colorRating.1" } },
      { "value": 55.5, "color": ${"def.colorRating.2" } },
      { "value": 58.5, "color": ${"def.colorRating.3" } },
      { "value": 61.5, "color": ${"def.colorRating.4" } },
      { "value": 64.5, "color": ${"def.colorRating.5" } },
      { "value": 66.5, "color": ${"def.colorRating.6" } },
      { "value": 68.5, "color": ${"def.colorRating.7" } },
      { "value": 70.5, "color": ${"def.colorRating.8" } },
      { "value": 72.5, "color": ${"def.colorRating.9" } },
      { "value": 74.5, "color": ${"def.colorRating.10"} },
      { "value": 77.5, "color": ${"def.colorRating.11"} },
      { "value": 80.5, "color": ${"def.colorRating.12"} },
      { "value": 85.5, "color": ${"def.colorRating.13"} },
      { "value": 90.5, "color": ${"def.colorRating.14"} },
      { "value": 100,  "color": ${"def.colorRating.15"} }
    ],
    // Dynamic color by percentage of damage caused.
    // Динамический цвет по проценту нанесенного урона цели.
    "dmg_ratio_player": [
      { "value": 19.5, "color": ${"def.colorRating.1" } },
      { "value": 24.5, "color": ${"def.colorRating.2" } },
      { "value": 29.5, "color": ${"def.colorRating.3" } },
      { "value": 34.5, "color": ${"def.colorRating.4" } },
      { "value": 39.5, "color": ${"def.colorRating.5" } },
      { "value": 44.5, "color": ${"def.colorRating.6" } },
      { "value": 49.5, "color": ${"def.colorRating.7" } },
      { "value": 54.5, "color": ${"def.colorRating.8" } },
      { "value": 54.5, "color": ${"def.colorRating.9" } },
      { "value": 59.5, "color": ${"def.colorRating.10"} },
      { "value": 64.5, "color": ${"def.colorRating.11"} },
      { "value": 69.5, "color": ${"def.colorRating.12"} },
      { "value": 79.5, "color": ${"def.colorRating.13"} },
      { "value": 89.5, "color": ${"def.colorRating.14"} },
      { "value": 999,   "color": ${"def.colorRating.15"} }
    ]
  }
}
