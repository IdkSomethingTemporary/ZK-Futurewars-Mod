return { 
	jumpskirm = {
		unitname            = "jumpskirm",
		name                = "Mediator",
		description         = "Disruptor Skirmisher Walker",
		acceleration        = 0.6,
		activateWhenBuilt   = true,
		brakeRate           = 3.6,
		buildCostMetal      = 240,
		builder             = false,
		buildPic            = "jumpskirm.png",
		canGuard            = true,
		canMove             = true,
		canPatrol           = true,
		category            = "LAND",
		-- A box collision volume, while better matching the model, seems to increase friendly fire
		collisionVolumeOffsets        = "0 0 0",
		collisionVolumeScales         = "30 30 20",
		collisionVolumeType           = "box",
		selectionVolumeOffsets = "0 0 0",
		selectionVolumeScales  = "63 63 63",
		selectionVolumeType    = "ellipsoid",
		corpse              = "DEAD",

		customParams        = {
			canjump            = 1,
			jump_range         = 700,
			jump_speed         = 5,
			jump_reload        = 15,
			jump_from_midair   = 0,
			bait_level_default = 1,
			dontfireatradarcommand = '1',
			selection_scale   = 0.85,
			outline_x = 80,
			outline_y = 80,
			outline_yoff = 15.5,
			fireproof = 1,
		},

		explodeAs           = "BIG_UNITEX",
		footprintX          = 3,
		footprintZ          = 3,
		iconType            = "fatbotsupport",
		idleAutoHeal        = 5,
		idleTime            = 1800,
		leaveTracks         = true,
		health              = 660,
		maxSlope            = 36,
		speed               = 2.1,
		maxWaterDepth       = 22,
		movementClass       = "KBOT3",
		noAutoFire          = false,
		noChaseCategory     = "TERRAFORM FIXEDWING SUB UNARMED DRONE",
		objectName          = "CORMORT.s3o",
		script              = "jumpskirm.lua",
		selfDestructAs      = "BIG_UNITEX",
		sfxtypes            = {
			explosiongenerators = {
				"custom:NONE",
			},
		},
		sightDistance       = 600,
		trackOffset         = 0,
		trackStrength       = 8,
		trackStretch        = 0.8,
		trackType           = "ComTrack",
		trackWidth          = 14,
		turnRate            = 2880,
		upright             = true,
		weapons             = {
			{
				def                = "DISRUPTOR_BEAM",
				badTargetCategory  = "FIXEDWING UNARMED",
				onlyTargetCategory = "FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER",
			},
		},
		weaponDefs          = {
			DISRUPTOR_BEAM = {
				name                    = "Disruptor Cannon",
				areaOfEffect            = 60,
				craterBoost             = 0,
				craterMult              = 0,
				cegtag					= "beamweapon_muzzle_purple",
				customparams = {
					burst = Shared.BURST_RELIABLE,
					timeslow_damagefactor = 4,
					timeslow_overslow_frames = 2*30,
					light_color = "1.88 0.63 2.5",
					light_radius = 320,
					mass = 150,
				},
				damage                  = {
					default = 650.1,
				},
				explosionGenerator      = "custom:riotballplus2_purple_small60",
				fireStarter             = 30,
				edgeeffectiveness		= 0.2,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				minIntensity            = 1,
				noSelfDamage            = true,
				mygravity				= 0.4,
				range                   = 570,
				reloadtime              = 7.2,
				rgbColor                = "0.3 0 0.4",
				soundstart              = "weapon/laser/heavydisruptor",
				soundhit				= "weapon/cannon/heavy_disrupter_hit",
				soundStartVolume        = 4.8,
				thickness               = 12,
				tolerance               = 18000,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 400,
			},
		},
		featureDefs         = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 2,
				footprintZ       = 2,
				collisionVolumeOffsets        = "0 -5 -15",
				collisionVolumeScales         = "20 20 30",
				collisionVolumeType           = "box",
				object           = "cormort_dead_no_gun.s3o",
			},
			HEAP  = {
				blocking    = false,
				footprintX  = 2,
				footprintZ  = 2,
				object      = "debris2x2a.s3o",
			},
		},
	} 
}
