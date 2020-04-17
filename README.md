# Synced Vehicle Locks

Version 1.0.1 - Patch 17/04/2020
Version 1.0.0 - Realeased 17/04/2020

Server synced lock system with lock all spawned vehicles

--[[ Features ]] --

	-- Lock and Unlock owned vehicles remotely
	-- Lock and Unlock any vehicle you are in ( Driver and Passenger seats )
	-- Double lock feature ( Lock twice while inside vehicle to lock occupants inside )
	-- Lock all NPC vehicles with a chance of being open or able to break into.
	-- Enable Emergency Vehicle locking by emergency job names
	-- Enable jobs to lock there vehicles based on No Plate
	-- Black List vehicles will always be locked
	-- Lights Flash horn sounds, and sets the default alarm when remote locking


-- [[ Config ]] --

	Config.Locale 	   = 'en' 	-- [[ Local Language en by Default 			  ]] --
	Config.notifca     = false    	-- [[ Show lock and unlock messages, false Default        ]] --
	Config.lockKey 	   = 182 	-- [[ Key to Lock / Unlock Vehicle L by Default           ]] --
	Config.lockNPC     = true 	-- [[ Lock all NPC cars True By Default 		  ]] --
	Config.defLock     = false    	-- [[ Default setting for Owned vehicles false by default ]] --
	Config.lChance	   = 10 	-- [[ Percent chance of vehicle being unlocked 	          ]] --
	Config.rDist 	   = 10	  	-- [[ Distance for vehicles in area default 10 	     	  ]] --

	Config.emergencyJob = {	-- [[ Names of emergency jobs for emergency vehicle locks  ]] --
		"police",
		"bcso",
		"ambulance"
	}

	Config.JobsandPlates = { -- [[ Job name and Number Plate NOTE: this removes any numbers E.G PDM 477 will read PDM ]] --
		[1] = {job = 'cardealer',           plate = 'PDM'},
		[2] = {job = 'mechanic',            plate = 'BENNY'}
	}

	Config.blacklist = {	  -- [[ Vehicles that will always be locked 		  ]] --
		"T20",
		"RHINO"
	}
    
-- [[ Job Vehicle Lock System ]] --
	
	Ensure plate has a Max of 7 Character and at least 1 number eg: PDM 678

	The script will store the plate as PDM 678 but will strip the numbers and spaces away to authorise use eg: PDM

	ensure you only put the Letters in your plate in the Config.    

-- [[ Use table update ]] -- 

	If you have a script for handing over keys to vehicle then you will need to update the stored table this is simple to do

	-- plate = Vehicle Plate ( GetVehicleNumberPlateText(vehicle) )
	-- Owner = new owners Server ID (GetPlayerServerId(closestPlayer))
		
		local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
		TriggerServerEvent('shorty_slocks:transferOwner', plate, owner)

-- [[ Requirements ]] --

	Requires ESX

-- [[ Install ]] --

	Copy svehiclelocks folder to server resources folder

	adjust config to your liking 

	add	start svehiclelocks to server.cfg

-- [[ Patch Notes ]] --
	1.0.1
	Fixed nil plate issue
	added SQL ready function to help with an SQL error
