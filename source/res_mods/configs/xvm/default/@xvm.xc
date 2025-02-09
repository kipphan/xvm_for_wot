/** 
 * Main configuration file (hereinafter - the configuration). 
 *
 * Attention! Use \n as newline character instead of <br> tag
 */
{
  // Version of the config. Do not remove or change it unnecessarily.
  "configVersion": "6.1.0",
  // Automatically reload config. Requires client restart.
  "autoReloadConfig": false,
  // Language used in mod:
  // "auto" - automatically detect language from game client,
  // or specify file name located in res_mods/mods/shared_resources/xvm/l10n/ (ex: "en").
  "language": "auto",
  // The path to the folder with custom localization files, is set relative to the user config folder.
  "userLanguageFolder": "lang",
  // Game Region:
  // "auto" - automatically detect game region from game client,
  // or specify one of: "RU", "EU", "NA", "ASIA", "KR", "CN"
  "region": "auto",
  // Common config options. All settings information in the mod not being used.
  "definition": {
    // Config author.
    "author": "Domenic Kipphan",
    // Config description.
    "description": "Personal settings for XVM",
    // Address to config updates.
    "url": "https://modxvm.com/"
  },
  // Parameters for login screen.
  "login": ${"login.xc":"login"},
  // Parameters for hangar.
  "hangar": ${"hangar.xc":"hangar"},
  // Parameters for userinfo window.
  "userInfo": ${"userInfo.xc":"userInfo"},
  // General parameters for the battle interface.
  "battle": ${"battle.xc":"battle"},
  // Frag counter panel.
  "fragCorrelation": ${"battle.xc":"fragCorrelation"},
  // Battle interface text fields
  "battleLabels": ${"battleLabels.xc":"labels"},
  // Log of the received hits.
  "damageLog": ${"damageLog.xc":"damageLog"},
  // Special XVM hotkeys.
  "hotkeys": ${"hotkeys.xc":"hotkeys"},
  // Parameters of the Battle Loading screen.
  "battleLoading": ${"battleLoading.xc":"battleLoading"},
  // Parameters for the alternative view of the Battle Loading screen.
  "battleLoadingTips": ${"battleLoadingTips.xc":"battleLoadingTips"},
  // Parameters of the Battle Statistics form.
  "statisticForm": ${"statisticForm.xc":"statisticForm"},
  // Parameters of the Players Panels ("ears").
  "playersPanel": ${"playersPanel.xc":"playersPanel"},
  // Parameters of the After Battle Screen.
  "battleResults": ${"battleResults.xc":"battleResults"},
  // Hit log (my hits calculator).
  "hitLog": ${"hitLog.xc":"hitLog"},
  // Capture bar.
  "captureBar": ${"captureBar.xc":"captureBar"},
  // Minimap.
  "minimap": ${"minimap.xc":"minimap"},
  // Minimap (alternative mode).
  "minimapAlt": ${"minimapAlt.xc":"minimap"},
  // Over-target markers.
  "markers": ${"markers.xc":"markers"},
  // Color settings.
  "colors": ${"colors.xc":"colors"},
  // Options for dynamic transparency.
  "alpha": ${"alpha.xc":"alpha"},
  // Text substitutions.
  "texts": ${"texts.xc":"texts"},
  // Icon sets.
  "iconset": ${"iconset.xc":"iconset"},
  // Vehicle names mapping.
  "vehicleNames": ${"vehicleNames.xc":"vehicleNames"},
  // Parameters for tooltips.
  "tooltips": ${"tooltips.xc":"tooltips"},
  // Extra sounds settings.
  "sounds": ${"sounds.xc":"sounds"},
  // XMQP services settings.
  "xmqp": ${"xmqp.xc":"xmqp"},
  // Various settings for advanced users.
  "tweaks": ${"tweaks.xc":"tweaks"}
}
