return { 
	staticheavyarty = {
		unitname                      = "staticheavyarty",
		name                          = "Liberator",
		description                   = "Canister Barrage Artillery",
		buildCostMetal                = 10500,
		builder                       = false,
		buildingGroundDecalDecaySpeed = 30,
		buildingGroundDecalSizeX      = 6,
		buildingGroundDecalSizeY      = 6,
		buildingGroundDecalType       = "staticheavyarty_aoplane.dds",
		buildPic                      = "staticheavyarty.png",
		category                      = "SINK",
		collisionVolumeOffsets        = "0 -20 0",
		collisionVolumeScales         = "90 80 90",
		collisionVolumeType           = "cylY",
		corpse                        = "DEAD",
		customParams                  = {
			aimposoffset = "0 20 0",
			midposoffset   = "0 20 -45",
			modelradius    = "35",
			selectionscalemult = 1,
    		superweapon    = 1,
    		superweaponbase = 1,
    		neededlink     = 250,
   			pylonrange     = 150,
			outline_x = 270,
			outline_y = 270,
			outline_yoff = 90,
			bait_level_default = 4,
			script_reload = "26",

			ammocount = 3,
			ammotexture_1 = "States/ammostates/divinity_torps.png", -- Steal some assets
			ammotexture_2 = "States/ammostates/menance_disarm.png",
			ammotexture_3 = "States/ammostates/menance_slowbomb.png",
			ammoname_1 = "Unstable Plasma Shell",
			ammoname_2 = "Electrostatic Barrage",
			ammoname_3 = "Guided Bunker-Disruptor",
			ammodesc_1 = "A devasating recursively clustering shell that carpets an area with high energy plasma.",
			ammodesc_2 = "A barrage of power disarming shells capable of disarming entire armies, though for a short time.",
			ammodesc_3 = "A guided disruptor bomb capable of bringing almost anything to a standstill.",
		},
		explodeAs                     = "ATOMIC_BLAST",
		footprintX                    = 4,
		footprintZ                    = 4,
		iconType                      = "lrpc",
		idleAutoHeal                  = 5,
		idleTime                      = 1800,
		levelGround                   = false,
		losEmitHeight                 = 90,
		maxDamage                     = 10500,
		maxSlope                      = 18,
		maxWaterDepth                 = 0,
		minCloakDistance              = 150,
		noChaseCategory               = "FIXEDWING LAND SHIP SWIM GUNSHIP SUB HOVER",
		objectName                    = "armbrtha.dae",
		script                        = "staticheavyarty.lua",
		selfDestructAs                = "ATOMIC_BLAST",
		sfxtypes                      = {
			explosiongenerators = {
				"custom:staticheavyarty_SHOCKWAVE",
				"custom:staticheavyarty_SMOKE",
				"custom:staticheavyarty_FLARE",
			},
		},
		sightDistance                 = 660,
		selectionVolumeScales  = "90 90 90",
		selectionVolumeType    = "ellipsoid",
		useBuildingGroundDecal        = true,
		yardMap                       = "oooo oooo oooo oooo",
		weapons                       = {
			{
				def                = "PLASMA",
				badTargetCategory  = "LAND SHIP HOVER SWIM",
				onlyTargetCategory = "SWIM LAND SINK TURRET FLOAT SHIP HOVER",
			},
			{
				def                = "DISARM",
				badTargetCategory  = "LAND SHIP HOVER SWIM",
				onlyTargetCategory = "SWIM LAND SINK TURRET FLOAT SHIP HOVER",
			},
			{
				def                = "BUNKERSLOW",
				badTargetCategory  = "LAND SHIP HOVER SWIM",
				onlyTargetCategory = "SWIM LAND SINK TURRET FLOAT SHIP HOVER",
			},
		},
		weaponDefs                    = {
			tritary = {
				name                    = "Anti-Armor Plasmalet",
				alphaDecay              = 0.7,
				areaOfEffect            = 360,
				craterBoost             = 0,
				craterMult              = 3.2,
				cegtag                  = "waketrail_small",
				--colorMap				= "0 0.1843 0.4235  0.7294 0.04705 0.1843  0 0.125 0.3568",
				customParams        = {
					lups_noshockwave = "1",
					light_camera_height = 1600,
					light_color = "0.8 0.76 0.38",
					light_radius = 110,
					armorpiercing = 0.4,
				},
				damage                  = {
					default = 200.01,
				},
				explosionScar           = false,
				edgeEffectiveness       = 0.6,
				explosionGenerator      = "custom:FLASHNUKE360", --"custom:artillery_explosion",
				explosionSpeed          = 330,
				firestarter             = 70,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				intensity               = 0.7,
				interceptedByShieldType = 1,
				mygravity				= 0.75,
				noSelfDamage            = true,
				range                   = 275,
				reloadtime              = 0.5,
				rgbColor                = "1 0.95 0.4",
				seperation				= 1,
				sizeDecay				= -1.4,
				soundHit                = "weapon/cannon/rhino4",
				soundStart              = "weapon/heavy_emg",
				stages                  = 15,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 550,
			},
			secondary = {
				name                    = "Anti-Armor Cluster Plasma",
				accuracy                = 350,
				alphaDecay              = 0.7,
				areaOfEffect            = 0,
				burnblow                = true,
				craterBoost             = 0.15,
				craterMult              = 0.3,
				cegtag                  = "waketrail_smallmixed",
				customParams        = {
					lups_noshockwave = "1",
					light_camera_height = 1600,
					light_color = "0.8 0.76 0.38",
					light_radius = 110,
					numprojectiles1 = 7,
					projectile1 = "staticheavyarty_tritary",
					spawndist = 1200,
					keepmomentum1 = true, 
					velspread1 = "10.19, 0, 10.19",
					useheight = 1,
					armorpiercing = 0.4,
				},
				damage                  = {
					default = 200*7,
				},
				edgeEffectiveness       = 0.6,
				explosionGenerator      = "custom:tremor",
				firestarter             = 70,
				impulseBoost            = 0,
				impulseFactor           = 4,
				intensity               = 0.7,
				interceptedByShieldType = 1,
				mygravity				= 0.75,
				noSelfDamage            = true,
				range                   = 275,
				reloadtime              = 0.5,
				rgbColor                = "1 0.95 0.4",
				separation              = 2.2,
				sizeDecay				= -3.4,
				soundHit                = "weapon/clusters/cluster_light",
				soundStart              = "weapon/heavy_emg",
				stages                  = 20,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 550,
			},
			PLASMA = {
				name                    = "Anti-Armor Recursive Cluster Plasma",
				highTrajectory          = 1,
				areaOfEffect            = 0,
				avoidFeature            = false,
				avoidGround             = false,
				cegTag                  = "liberation_plasmatrail",
				craterBoost             = 0,
				craterMult              = 0,
				customParams            = {
					restrict_in_widgets = 1,
					numprojectiles1 = 10,
					projectile1 = "staticheavyarty_secondary",
					spawndist = 2200,
					velspread1 = "7.64, 0, 7.64",
					useheight = 1,
					light_camera_height = 1500,
					light_radius = 120,
					script_reload = "26", -- NB: Superweapon field in CP makes this handled by FireControl.
					light_color = "2.4 1.5 0.6",
					reveal_unit = 36,
					armorpiercing = 0.4,
				},
				damage                  = {
					default = 200*7*10,
				},
				explosionGenerator      = "custom:MEDMISSILE_EXPLOSION",
				fireTolerance           = 1820, -- 10 degrees
				impulseBoost            = 0.5,
				impulseFactor           = 0.2,
				interceptedByShieldType = 1,
				mygravity               = 0.65,
				sprayAngle              = 120,
				noSelfDamage            = true,
				range                   = 6700,
				reloadtime              = 1, -- force render our reload progress?
				soundHit                = "weapon/clusters/cluster_heavy",
				soundStart              = "weapon/cannon/large_cannon_fire",
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 2000,
			},
			DISARM = {
				name                    = [["Shadow Storm" Disarming Shell]],
				highTrajectory		    = 1,
				areaOfEffect            = 900,
				avoidFeature            = false,
				avoidGround             = false,
				cegTag                  = "liberation_disarmtrail",
				craterBoost             = 0,
				craterMult              = 0,
				customParams            = {
					disarmDamageMult = 200,
					disarmTimer      = 10,
					restrict_in_widgets = 1,
					light_camera_height = 1500,
					light_radius = 120,
					script_reload = "26", -- NB: Superweapon field in CP makes this handled by FireControl.
					light_color = "2.4 1.5 0.6",
					reveal_unit = 36,
				},
				damage                  = {
					default = 500,
				},
				edgeEffectiveness       = 0.75,
				explosionGenerator      = "custom:liberation_disarmimpact",
				explosionSpeed          = 480,
				fireTolerance           = 1820, -- 10 degrees
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				mygravity			   = 0.65,
				sprayAngle			  = 120,
				noSelfDamage            = true,
				range                   = 6700,
				reloadtime              = 1, -- force render our reload progress?
				soundHit                = "weapon/clusters/cluster_heavy",
				soundStart              = "weapon/cannon/large_cannon_fire",
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 2000,
			},
			BUNKERSLOW = {
				name                    = "M142 Guided Artillery Disruptor",
				highTrajectory		    = 1,
				areaOfEffect            = 420,
				avoidFeature            = false,
				avoidGround             = false,
				cegTag                  = "liberation_slowtrail",
				craterBoost             = 0,
				craterMult              = 0,
				customParams            = {
					timeslow_damagefactor = 115,
					timeslow_overslow_frames = 30*20, --up to 20 seconds before slow decays
					nofriendlyfire = 1,
					restrict_in_widgets = 1,
					light_camera_height = 1500,
					light_radius = 120,
					script_reload = "26", -- NB: Superweapon field in CP makes this handled by FireControl.
					light_color = "2.4 1.5 0.6",
					reveal_unit = 36,
					ballistic_guidance = 75,
				},
				damage                  = {
					default = 600,
				},
				edgeEffectiveness       = 0,
				explosionGenerator      = "custom:liberation_slowimpact",
				fireTolerance           = 1820, -- 10 degrees
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				mygravity				= 0.65,
				sprayAngle				= 120,
				noSelfDamage            = true,
				range                   = 6700,
				reloadtime              = 1, -- force render our reload progress?
				soundHit                = "weapon/clusters/cluster_heavy",
				soundStart              = "weapon/cannon/large_cannon_fire",
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 2000,
			}
		},
		featureDefs                   = {
			DEAD  = {
				blocking         = true,
				collisionVolumeOffsets        = "0 0 -7",
				collisionVolumeScales         = "70 194 70",
				collisionVolumeType           = "cylY",
				featureDead      = "HEAP",
				footprintX       = 4,
				footprintZ       = 4,
				object           = "armbrtha_dead.s3o",
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 4,
				footprintZ       = 4,
				object           = "debris4x4c.s3o",
			},
		},
	}
}
