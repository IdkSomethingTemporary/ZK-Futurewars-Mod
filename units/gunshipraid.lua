return { 
	gunshipraid = {
		unitname               = "gunshipraid",
		name                   = "Whirlwind",
		description            = "Medium Laser Raider Gunship",
		acceleration           = 0.4,
		brakeRate              = 0.8,
		buildCostMetal         = 250,
		builder                = false,
		buildPic               = "gunshipraid.png",
		canFly                 = true,
		canGuard               = true,
		canMove                = true,
		canPatrol              = true,
		canSubmerge            = false,
		category               = "GUNSHIP",
		selectionVolumeOffsets = "0 0 0",
		selectionVolumeScales  = "63 63 63",
		selectionVolumeType    = "ellipsoid",
		collide                = true,
		corpse                 = "DEAD",
		cruiseAlt              = 170,
		customParams           = {
			airstrafecontrol = "1",
			modelradius    = "18",
			specialreloadtime = 900,
		},

		explodeAs              = "GUNSHIPEX",
		floater                = true,
		footprintX             = 2,
		footprintZ             = 2,
		hoverAttack            = true,
		iconType               = "gunshipraider",
		idleAutoHeal           = 25,
		idleTime               = 150,
		health                 = 1100,
		speed                  = 6.5,
		noChaseCategory        = "TERRAFORM SUB",
		objectName             = "banshee.s3o",
		script                 = "gunshipraid.lua",
		selfDestructAs         = "GUNSHIPEX",
		sfxtypes               = {
			explosiongenerators = {
				"custom:VINDIBACK",
				"custom:SNIPERCOOLOFF"
			},
		},
		sightDistance          = 700,
		radarDistance		   = 1300,
		turnRate               = 740,
		weapons                = {
			{
				def                = "LASER",
				mainDir            = "0 0 1",
				maxAngleDif        = 180,
				onlyTargetCategory = "FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER",
			},
			{
				def                = "LASER_OVERDRIVE",
				mainDir            = "0 0 1",
				maxAngleDif        = 180,
				onlyTargetCategory = "FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER",
			},
		},
		weaponDefs             = {
			LASER = {
				name                    = "Light Modulated Laser System",
				areaOfEffect            = 8,
				avoidFeature            = false,
				beamTime                = 4/30,
				collideFriendly         = false,
				coreThickness           = 1.3,
				craterBoost             = 0,
				craterMult              = 0,
				cylinderTargeting       = 2.5,
				burst					= 7,
				burstrate				= 2/30,
				customparams = {
					light_color = "0.8941 0.7647 0.1255",
					light_radius = 175,
					underwaterdamagereduction = 0.2,
					combatrange = 250,
				},
				damage                  = {
					default = 37.1,
				},
				explosionGenerator      = "custom:heavybeamorangeimpactsmall",
				--heightMod             = 0.5,
				impactOnly              = true,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				largeBeamLaser          = true,
				laserFlareSize          = 2,
				minIntensity            = 1,
				noSelfDamage            = true,
				range                   = 341,
				reloadtime              = 2.3,
				rgbColor                = "0.8941 0.7647 0.1255",
				soundStart              = "weapon/laser/medium_phaser",
				soundHit				= "weapon/impacts/impact-light01",
				soundHitVolume			= 50,
				soundStartVolume		= 25,
				thickness               = 3.25,
				tolerance               = 2000,
				turret                  = true,
				weaponType              = "LaserCannon",
				waterWeapon				= true,
				weaponVelocity			= 730,
			},
			LASER_OVERDRIVE = {
				name                    = "Overloaded Modulated Laser System (Ability)",
				areaOfEffect            = 8,
				avoidFeature            = false,
				beamTime                = 4/30,
				collideFriendly         = false,
				coreThickness           = 1.8,
				craterBoost             = 0,
				craterMult              = 0,
				cylinderTargeting       = 0.7,
				customparams = {
					light_color = "0.0 0.9803 0.49804",
					light_radius = 105,
					combatrange = 250,
				},

				damage                  = {
					default = 345.1,
				},

				explosionGenerator      = "custom:heavybeamgreenimpact",
				--heightMod             = 0.5,
				impactOnly              = true,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 1,
				largeBeamLaser          = true,
				laserFlareSize          = 1.7,
				minIntensity            = 1,
				noSelfDamage            = true,
				range                   = 341,
				reloadtime              = 1.4,
				rgbColor                = "0.0 0.9803 0.49804",
				soundStart              = "weapon/laser/medium_phaser_overdriven",
				texture1                = "ecmnoise",
				texture2                = "flare",
				texture3                = "flare",
				texture4                = "smallflare",
				thickness               = 4.5,
				tolerance               = 4000,
				turret                  = true,
				weaponType              = "BeamLaser",
				waterWeapon				= true,
			},
		},

		featureDefs            = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 2,
				footprintZ       = 2,
				object           = "banshee_dead.s3o",
			},

			HEAP  = {
				blocking         = false,
				footprintX       = 2,
				footprintZ       = 2,
				object           = "debris2x2a.s3o",
			},
		},
	} 
}
