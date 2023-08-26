return { 
	gunshipheavytrans = {
		unitname               = "gunshipheavytrans",
		name                   = "Breacher",
		description            = "Armed Heavy Air Transport",
		acceleration           = 0.5,
		airStrafe              = 0,
		buildCostMetal         = 700,
		brakeRate              = 0.5,
		builder                = false,
		buildPic               = "gunshipheavytrans.png",
		canFly                 = true,
		canGuard               = true,
		canload                = "1",
		canMove                = true,
		canPatrol              = true,
		canSubmerge            = false,
		category               = "GUNSHIP",
		collide                = false,
		collisionVolumeOffsets = "0 0 0",
		collisionVolumeScales  = "60 25 100",
		collisionVolumeType    = "Box",
		selectionVolumeOffsets = "0 0 0",
		selectionVolumeScales  = "55 25 90",
		selectionVolumeType    = "Box",
		corpse                 = "DEAD",
		cruiseAlt              = 300,
		customParams           = {
			midposoffset   = "0 0 0",
			aimposoffset   = "0 10 0",
			modelradius    = "15",
			transport_speed_light   = "1",
			transport_speed_medium  = "1",
			transport_speed_heavy   = "0.66",
			outline_x = 145,
			outline_y = 145,
			outline_yoff = 17.5,
		},
		explodeAs              = "GUNSHIPEX",
		floater                = true,
		footprintX             = 4,
		footprintZ             = 4,
		hoverAttack            = true,
		iconType               = "heavygunshiptransport",
		maneuverleashlength    = "1280",
		maxDamage              = 3900,
		speed                  = 8,
		noChaseCategory        = "TERRAFORM FIXEDWING SATELLITE SUB",
		objectName             = "largeTransport.s3o",
		script                 = "gunshipheavytrans.lua",
		releaseHeld            = true,
		selfDestructAs         = "GUNSHIPEX",
		sfxtypes               = {
			explosiongenerators = {
				"custom:VINDIMUZZLE",
				"custom:VINDIBACK",
				"custom:HEAVY_CANNON_MUZZLE",
			},
		},
		sightDistance          = 750,
		sonarDistance          = 750,
		transportCapacity      = 1,
		transportSize          = 25,
		turninplace            = 0,
		turnRate               = 420,
		upright                = true,
		verticalSpeed          = 25,
		weapons                = {
			{
				def                = "LASER",
				badTargetCategory  = "FIXEDWING",
				onlyTargetCategory = "FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER",
				mainDir            = "-1 -1 1",
				maxAngleDif        = 140,
			},
			{
				def                = "LASER",
				badTargetCategory  = "FIXEDWING",
				onlyTargetCategory = "FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER",
				mainDir            = "1 -1 1",
				maxAngleDif        = 140,
			},
			{
				def                = "AALASER",
				onlyTargetCategory = "FIXEDWING GUNSHIP",
				mainDir            = "0 -1 1",
				maxAngleDif        = 180,
			},
			{
				def                = "SHIELD",
			},
		},
		weaponDefs             = {
			LASER = {
				name                    = "L-SAW",
				areaOfEffect            = 64,
				accuracy                = 900,
				avoidFeature            = false,
				collideFriendly         = false,
				coreThickness           = 0.5,
				craterBoost             = 0,
				craterMult              = 0,
				customParams        = {
					combatrange = 60,
					light_camera_height = 1200,
					light_radius = 160,
					disarmDamageMult = 3,
					disarmTimer      = 1,
				},
				damage                  = {
					default = 8.01,
				},
				duration                = 0.02,
				explosionGenerator      = "custom:WHITE_LIGHTNING_BOMB",
				fireStarter             = 50,
				impactOnly              = false,
				explosionScar           = false,
				heightMod               = 1,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				range                   = 430,
				reloadtime              = 2/30,
				rgbColor                = "0.7 0.7 0.7",
				soundHit                = "weapon/cannon/heavy_disrupter_hit",
				soundStart              = "weapon/laser/gunshipheavytrans_fire", -- I didn't have a creative name for this.
				soundStartVolume        = 0.4,
				soundTrigger            = true,
				thickness               = 2.4,
				tolerance               = 10000,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 680,
			},
			AALASER  = {
				name                    = "Light AA Pulsar",
				areaOfEffect            = 12,
				beamTime                = 2/30,
				canattackground         = false,
				coreThickness           = 0.7,
				craterBoost             = 0,
				craterMult              = 0,
				cylinderTargeting       = 1,
				burst					= 6,
				burstRate				= 2/30,
				predictBoost			= 1.1,
				customParams              = {
					isaa = "1",
					light_color = "0.2 1.2 1.2",
					light_radius = 120,
				},
				damage                  = {
					default = 35.1,
				},
				duration                = 0.075,
				beamDecay 				= 0.38,
				beamBurst				= true,
				beamTTL					= 1,
				leadLimit 				= 200,
				explosionGenerator      = "custom:flash_teal7",
				fireStarter             = 100,
				impactOnly              = true,
				impulseFactor           = 0,
				fallOffRate				= 0.67,
				interceptedByShieldType = 1,
				laserFlareSize          = 3.25,
				minIntensity            = 1,
				range                   = 660,
				reloadtime              = 3,
				rgbColor                = "0.6 0.2 0.2",
				rgbColor2				= "0.0 0.8 0.8",
				soundHit                = "weapon/impacts/impact-light02",
				soundStart              = "weapon/laser/gunshipheavytrans_fire2",
				soundStartVolume        = 25,
				soundHitVolume		    = 25,
				thickness               = 2.2,
				tolerance               = 8192,
				turret                  = true,
				weaponType              = "LaserCannon",
				weaponVelocity          = 2200,
			},
			SHIELD = {
				name                    = "Energy Shield",	
				damage                  = {	
					default = 10,	
				},
				customParams            = {
					unlinked                = true,
				},
				exteriorShield          = true,	
				shieldAlpha             = 0.2,	
				shieldBadColor          = "1 0.1 0.1 1",	
				shieldGoodColor         = "0.1 0.1 1 1",	
				shieldInterceptType     = 3,	
				shieldPower             = 4000,	
				shieldPowerRegen        = 35,	
				shieldPowerRegenEnergy  = 25,
				shieldRadius            = 300,
				shieldStartingPower     = 2000,
				shieldRepulser          = false,
				smartShield             = true,	
				visibleShield           = false,	
				visibleShieldRepulse    = false,	
				weaponType              = "Shield",	
			},
		},
		featureDefs            = {
			DEAD  = {
				blocking         = true,
				collisionVolumeScales  = "40 40 80",
				collisionVolumeType    = "CylZ",
				featureDead      = "HEAP",
				footprintX       = 2,
				footprintZ       = 2,
				object           = "heavytrans_d.dae",
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 2,
				footprintZ       = 2,
				object           = "debris3x3c.s3o",
			},
		},
	} 
}
