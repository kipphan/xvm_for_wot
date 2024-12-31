/**
 * Extra sounds settings.
 */
{
  "sounds": {
  
    "enabled": false,
	
    // List of extra banks to load from folder res_mods/X.Y.Z/audioww.
    // Use semicolon for multiple values: "bank1.bnk; bank2.bnk;..."
    "soundBanks": {
      "hangar": "xvm.bnk;",
      "battle": "xvm.bnk;"
    },
	
    // Enable sound events logging in the xvm.log
    "logSoundEvents": false,
	
    // Sound events remapping
    "soundMapping": {
	
      // Event mapping
      //"originalEventName": "newEventName"

      // To disable sound event use empty string for value
      //"originalEventName": ""

      // Disable original sixth sense light bulb sound event
      "lightbulb": "",
	 
      // Disable original enemy detection event      
      //"enemy_sighted_for_team": "",
   
      // Disable original fire sound event
      //"vo_fire_started": "",

      // Disable original ammo bay damaged event
      //"vo_ammo_bay_damaged": "",

      // Sound events added by XVM

      // Perk SixthSense
      "xvm_sixthSense": "sixthsense",

      // Perk SixthSense (On vehicle Т-34-85 Rudy)
      "xvm_sixthSenseRudy": "sixthSenseRudy",

      // Enemy detection (Use in together with disable original enemy detection event) 
      "xvm_enemySighted": "",  
      //"xvm_enemySighted": "enemySighted",  
	  
      // Fire alert
      "xvm_fireAlert": "fireAlert",

      // Damage ammoBay
      "xvm_ammoBay": "ammoBay"
    }
  }
}
