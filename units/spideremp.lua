return { 
	spideremp = {
		unitname               = [[spideremp]],
		name                   = [[Huntsman]],
		description            = [[Lightning Riot Spider]],
		acceleration           = 0.78,
		brakeRate              = 4.68,
		buildCostMetal         = 200,
		buildPic               = [[spideremp.png]],
		canGuard               = true,
		canMove                = true,
		canPatrol              = true,
		category               = [[LAND]],
		collisionVolumeOffsets = [[0 0 0]],
		collisionVolumeScales  = [[38 38 38]],
		collisionVolumeType    = [[ellipsoid]],
		corpse                 = [[DEAD]],
		customParams           = {
			aimposoffset   = [[0 0 0]],
			midposoffset   = [[0 -6 0]],
			modelradius    = [[19]],
			aim_lookahead  = 100,
			set_target_range_buffer = 30,
			set_target_speed_buffer = 8,
		},
		explodeAs              = [[BIG_UNITEX]],
		footprintX             = 3,
		footprintZ             = 3,
		iconType               = [[spiderriotspecial]],
		leaveTracks            = true,
		maxDamage              = 940,
		maxSlope               = 72,
		maxVelocity            = 2.8,
		maxWaterDepth          = 22,
		movementClass          = [[TKBOT3]],
		noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
		objectName             = [[venom.s3o]],
		script                 = [[spideremp.lua]],
		selfDestructAs         = [[BIG_UNITEX]],
		sfxtypes               = {
			explosiongenerators = {
				[[custom:YELLOW_LIGHTNING_MUZZLE]],
				[[custom:YELLOW_LIGHTNING_GROUNDFLASH]],
			},
		},
		sightDistance          = 440,
		trackOffset            = 0,
		trackStrength          = 10,
		trackStretch           = 1,
		trackType              = [[ChickenTrackPointyShort]],
		trackWidth             = 54,
		turnRate               = 1920,
		weapons                = {
			{
				def                = [[spider]],
				onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER FIXEDWING GUNSHIP]],
			},
		},
		weaponDefs             = {
			spider = {
				name                    = [[Light Lightning Cannon]],
				accuracy                = 1000,
				areaOfEffect            = 64,
				burst                   = 10,
				burstrate               = 1/30,
				craterBoost             = 0,
				craterMult              = 0,
				customParams        = {
					light_camera_height = 1800,
					light_color = [[2 2 2]],
					light_radius = 20,
					disarmDamageMult = 3,
					disarmTimer      = 3,
				},
				damage                  = {
					default = 20.1,
				},
				duration                = 0.1,
				edgeEffectiveness       = 0.4,
				explosionGenerator      = [[custom:WHITE_LIGHTNING_BOMB]],
				explosionScar           = false,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				hardStop                = false,
				fallOffRate             = 0.5,
				largebeamlaser			= true,
				range                   = 400,
				reloadtime              = 1.4,
				targetborder            = 1,
				texture1                = [[lightning]],
				texture2                = [[lightning]],
				tileLength              = 50,
				thickness               = 20,
				rgbColor                = [[1 1 1]],
				soundHit                = [[weapon/lightning_fire]],
				soundHitVolume          = 0.7,
				soundStart              = [[weapon/emp/disarm_lightning]],
				soundStartVolume        = 10,
				soundTrigger            = true,
				sprayangle				= 1000,
				turret                  = true,
				weaponType              = [[LaserCannon]],
				weaponVelocity          = 1200,
			},
		},
		featureDefs            = {
			DEAD  = {
				blocking         = true,
				featureDead      = [[HEAP]],
				footprintX       = 2,
				footprintZ       = 2,
				collisionVolumeOffsets = [[0 0 0]],
				collisionVolumeScales  = [[40 30 50]],
				collisionVolumeType    = [[ellipsoid]],
				object           = [[venom_wreck.s3o]],
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 2,
				footprintZ       = 2,
				object           = [[debris2x2a.s3o]],
			},
		},
	} 
}