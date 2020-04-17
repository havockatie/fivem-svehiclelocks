Config = {}

Config.Locale 	   = 'en' 	  -- [[ Local Language en by Default 				                 ]] --
Config.notifca     = false    -- [[ Show lock and unlock messages, false Default         ]] --
Config.lockKey 	   = 182 	    -- [[ Key to Lock / Unlock Vehicle L by Default            ]] --
Config.lockNPC     = true 	  -- [[ Lock all NPC cars True By Default 		               ]] --
Config.defLock     = false    -- [[ Default setting for Owned vehicles false by default  ]] --
Config.lChance	   = 10 	    -- [[ Percent chance of vehicle being unlocked 	           ]] --
Config.rDist 	     = 10	      -- [[ Distance for vehicles in area default 10 	           ]] --

Config.emergencyJob = {	-- [[ Names of emergency jobs for emergency vehicle locks  ]] --
	"police",
	"bcso",
	"ambulance"
}

Config.JobsandPlates = { -- [[ Job name and Number Plate NOTE: this removes any numbers E.G PDM 477 will read PDM ]] --
  [1] = {job = 'cardealer',           plate = 'PDM'},
  [2] = {job = 'disciples',           plate = 'DIS'},
  [3] = {job = 'mechanic',            plate = 'BENNY'},
  [4] = {job = 'jandm',               plate = 'JANDM'},
  [5] = {job = 'crips',               plate = 'CRIP'},
  [6] = {job = 'disciplesdealership', plate = 'DIS'},
  [7] = {job = 'lostmc',              plate = 'LOST'},
  [8] = {job = 'the_fianna',          plate = 'FINNA'},

}

Config.blacklist = {	  -- [[ Vehicles that will always be locked 		  ]] --
  "T20",
  "RHINO"
}