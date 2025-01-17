return { 
	striderfunnelweb = {
		unitname               = "striderfunnelweb",
		name                   = "Funnelweb",
		description            = "Shielded Multipurpose Support Strider",
		acceleration           = 0.166,
		activateWhenBuilt      = true,
		brakeRate              = 0.825,
		buildCostMetal         = 6400,
		buildPic               = "striderfunnelweb.png",
		builder                = false,
		canGuard               = true,
		canMove                = true,
		canPatrol              = true,
		category               = "LAND",
		collisionVolumeOffsets        = "0 10 -10",
		collisionVolumeScales         = "60 50 80",
		collisionVolumeType           = "elipsoid",
		selectionVolumeOffsets        = "0 0 0",
		selectionVolumeScales         = "120 120 120",
		selectionVolumeType           = "Sphere",
		corpse                 = "DEAD",

		customParams           = {
			priority_misc  = 1, -- Medium
			shield_emit_height = 45,
			shield_power_gfx_override = 10000,
			bait_level_default = 1,
			outline_x = 160,
			outline_y = 160,
			outline_yoff = 25,
		},

		explodeAs              = "ESTOR_BUILDING",
		footprintX             = 4,
		footprintZ             = 4,
		iconType               = "t3spiderbuilder",
		idleAutoHeal           = 5,
		idleTime               = 1800,
		leaveTracks            = true,
		health                 = 15000,
		maxSlope               = 36,
		speed                  = 1.6,
		maxWaterDepth          = 22,
		minCloakDistance       = 150,
		movementClass          = "TKBOT4",
		noAutoFire             = false,
		noChaseCategory        = "TERRAFORM FIXEDWING GUNSHIP SATELLITE SUB",
		objectName             = "funnelweb.dae",
		radarDistance          = 2200,
		radarEmitHeight        = 32,
		onoffable              = true,
		selfDestructAs         = "ESTOR_BUILDING",
		highTrajectory         = 2,

		sfxtypes               = {
			explosiongenerators = {
				"custom:RAIDMUZZLE",
				"custom:RAIDDUST",
			},
		},
		script                 = "striderfunnelweb.lua",
		showNanoSpray          = false,
		sightDistance          = 650,
		trackOffset            = 0,
		trackStrength          = 8,
		trackStretch           = 1,
		trackType              = "ChickenTrackPointy",
		trackWidth             = 85,
		turnRate               = 230,

		weapons                = {
			{
				def                = "CANNON",
				badTargetCategory  = "FIXEDWING",
				mainDir            = "0 0 1",
				maxAngleDif		   = 45,
				onlyTargetCategory = "FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER",
			},
			{
				def                = "SHIELD",
			},
			{
				def                = "ARMORFIELD",
				mainDir            = "0 0 0",
				onlyTargetCategory = "LAND TURRET SHIP SWIM FLOAT HOVER",
			},
		},
		
		
		weaponDefs             = {
			SHIELD = {
				name                    = "Energy Shield",
				damage                  = {
					default = 10,
				},
				customParams            = {},

				exteriorShield          = true,
				shieldAlpha             = 0.2,
				shieldBadColor          = "1 0.1 0.1 1",
				shieldGoodColor         = "0.1 0.1 1 1",
				shieldInterceptType     = 3,
				shieldPower             = 32000,
				shieldPowerRegen        = 350,
				shieldPowerRegenEnergy  = 40,
				shieldRadius            = 550,
				shieldRepulser          = false,
				smartShield             = true,
				visibleShield           = false,
				visibleShieldRepulse    = false,
				weaponType              = "Shield",
			},
			
			FRAGMENT = {
				name                    = "Shield Buster Chaff",
				areaOfEffect            = 120,
				avoidFeature            = true,
				cegTag                  = "beamweapon_muzzle_purple",
				commandFire             = true,
				craterBoost             = 0,
				craterMult              = 0,
				customParams        = {
					timeslow_damagefactor = 2,
					timeslow_overslow_frames = 5*30, --5 seconds before slow decays
					nofriendlyfire = 1,
					light_camera_height = 3500,
					light_color = "0.5 0.0 0.5",
					light_radius = 220,
					shield_damage = 150,
				},

				damage                  = {
					default = 100,
				},
				fireStarter             = 70,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 2,
				explosionGenerator      = "custom:riotballplus2_purple_small",
				range                   = 1100,
				reloadtime              = 4.4,
				myGravity				= 0.09,
				rgbColor				= "0.5 0 0.5",
				soundHit				= "weapon/aoe_aura2",
				soundHitVolume          = 4,
				soundStart              = "weapon/cannon/funnel_fire",
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 450,
			},
			
			FRAGMENT_FAKE = {
				name                    = "Shield Buster Chaff",
				areaOfEffect            = 120,
				avoidFeature            = true,
				cegTag                  = "beamweapon_muzzle_purple",
				commandFire             = true,
				craterBoost             = 0,
				craterMult              = 0,
				customParams        = {
					light_camera_height = 3500,
					light_color = "0.5 0.0 0.5",
					light_radius = 220,
					projectile1 = "striderfunnelweb_fragment",
					noairburst = "I belive I can fly...",
					timeddeploy = 20,
					shield_damage = 185,
					bogus = 1
				},

				damage                  = {
					default = 0,
				},
				fireStarter             = 70,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 2,
				myGravity               = 0.1,
				noExplode               = true,
				explosionGenerator      = "custom:riotballplus2_purple_small",
				range                   = 700,
				reloadtime              = 3,
				rgbColor				= "0.5 0 0.5",
				soundHit                = "nosound",
				soundHitVolume          = 8,
				soundStart              = "weapon/cannon/funnel_fire",
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 350,
			},
			
			CANNON = {
				name                    = "SX-42 Shield Buster Cannon",
				areaOfEffect            = 550,
				avoidFeature            = true,
				cegTag                  = "beamweapon_muzzle_purple",
				craterBoost             = 0,
				craterMult              = 0,
				burst					= 2,
				burstRate				= 0.9,
				customParams        = {
					timeslow_damagefactor = 2,
					light_camera_height = 3500,
					light_color = "0.5 0.0 0.5",
					light_radius = 220,
					timeslow_overslow_frames = 5*30,
					nofriendlyfire = 1,
					numprojectiles1 = 15,
					projectile1 = "striderfunnelweb_fragment_fake",
					velspread1 = "3.82, 2, 3.82, _, 4, _",
					noairburst = "EI",
					onexplode = "RUOTSI",
					stats_damage = 1200,
				},

				damage                  = {
					default = 1200,
				},
				edgeeffectiveness       = 0.6,
				explosionGenerator      = "custom:RIOTBALL",
				explosionScar           = false,
				fireStarter             = 70,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 2,
				range                   = 1100,
				mygravity				= 0.10,
				reloadtime              = 5.5,
				rgbColor				= "0.5 0 0.5",
				smokeTrail              = true,
				size 					= 8,
				soundHit                = "weapon/cannon/heavy_disrupter_hit",
				soundHitVolume          = 8,
				soundStart              = "weapon/cannon/funnel_fire",
				highTrajectory          = 2,
				tolerance               = 8000,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 420,
			},
			ARMORFIELD    = {
				name                    = "Heavy Nanosheath Emitter",
				areaOfEffect            = 1200,
				craterBoost             = 0,
				craterMult              = 0,
				cameraShake				= 0,
				damage                  = {
					default = 100.0,
				},
				customParams           = {
					light_radius = 0,
					--lups_explodespeed = 0.5,
					--lups_explodelife = 2.0,
					stats_hide_damage = 1,
					lups_noshockwave = "1",
					armor_duration = 6,
					notimescaling = 1,
					grants_armor = 0.95,
					stats_hide_range = 1,
					stats_hide_dps = 1,
					norealdamage = 1,
				},
				edgeeffectiveness       = 0,
				explosionGenerator      = "custom:armor_ring600",
				explosionSpeed          = 800,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				myGravity               = 10,
				noSelfDamage            = true,
				range                   = 10,
				reloadtime              = 1.5,
				soundHitVolume          = 1,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 230,
			},
		},


		featureDefs            = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 4,
				footprintZ       = 4,
				object           = "funnelweb_dead.s3o",
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 4,
				footprintZ       = 4,
				object           = "debris4x4a.s3o",
			},
		},
	} 
}
