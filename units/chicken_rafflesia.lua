return {
	chicken_rafflesia = {
		name                          = "Rafflesia",
		description                   = "Massive Chicken Shield (Static)",
		activateWhenBuilt             = true,
		builder                       = false,
		buildPic                      = "chicken_rafflesia.png",
		category                      = "SINK",

		customParams                  = {
			chicken = "uwu",
			chicken_uncapturable = ">w<",
			chicken_shield = "uwu",
			chicken_shield_invul = "uwu~",
			shield_emit_offset = -4,
			model_rescale = 2,
		},

		explodeAs                     = "NOWEAPON",
		footprintX                    = 3,
		footprintZ                    = 3,
		iconType                      = "defenseshield",
		idleAutoHeal                  = 50,
		idleTime                      = 600,
		levelGround                   = false,
		health                        = 32800,
		maxSlope                      = 36,
		speed                         = 0,
		maxWaterDepth                 = 20,
		buildTime                     = 10500,
		noAutoFire                    = false,
		noChaseCategory               = "FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER",
		objectName                    = "chicken_rafflesia.s3o",
		onoffable                     = true,
		power                         = 10500,
		reclaimable                   = false,
		selfDestructAs                = "NOWEAPON",

		sfxtypes                      = {
			explosiongenerators = {
				"custom:blood_spray",
				"custom:blood_explode",
				"custom:dirt",
			},
		},
		sightDistance                 = 512,
		script                        = "chicken_rafflesia.lua",
		upright                       = false,
		useBuildingGroundDecal        = false,
		workerTime                    = 0,
		yardMap                       = "ooooooooo",
		weapons                       = {
			{
				def = "SHIELD",
			},
			--{
			--	def                = "SPORES_TO_COUNTER_AZI",
			--	badTargetCategory  = "MOBILE",
			--	onlyTargetCategory = "SINK TURRET FLOAT",
			--},
		},
		weaponDefs                    = {
			SHIELD      = {
				name                    = "Shield",
				craterMult              = 0,
				customParams = {
					unlinked = true,
				},
				damage                  = {
					default = 10,
				},
				exteriorShield          = true,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				shieldAlpha             = 0.15,
				shieldBadColor          = "0.1 0.1 1 1.0",
				shieldGoodColor         = "0.1 0.1 1 1.0",
				shieldInterceptType     = 8,
				shieldPower             = 3280000,
				shieldPowerRegen        = 3280000,
				shieldPowerRegenEnergy  = 0,
				shieldRadius            = 1500,
				shieldRepulser          = false,
				smartShield             = true,
				visibleShield           = false,
				visibleShieldRepulse    = false,
				--texture1                = "wakelarge",
				--visibleShield           = true,
				--visibleShieldHitFrames  = 30,
				--visibleShieldRepulse    = false,
				weaponType              = "Shield",
			},
			SPORES_TO_COUNTER_AZI = {
				name                    = "Helioplasm Launcher",
				areaOfEffect            = 96,
				avoidGround             = false,
				avoidFeature            = false,
				avoidFriendly           = false,
				collideFriendly         = false,
				craterBoost             = 1,
				craterMult              = 2,
							
				customParams            = {
					light_radius = 0,
					armorpiercing = 0.2,
					light_radius = 550,
				},

				damage                  = {
					default = 750,
				},

				dance                   = 60,
				explosionGenerator      = "custom:bull_fade",
				fireStarter             = 0,
				flightTime              = 100,
				groundbounce            = 1,
				heightmod               = 0.5,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 2,
				model                   = "chickenegggreen_big.s3o",
				range                   = 1000000,
				reloadtime              = 4,
				smokeTrail              = true,
				startVelocity           = 271,
				texture1                = "none",
				texture2                = "sporetrail2",
				tolerance               = 10000,
				turnRate                = 30000,
				turret                  = true,
				trajectoryHeight        = 2.718,
				waterweapon             = true,
				weaponType              = "MissileLauncher",
				weaponVelocity          = 271,
			},
		},
	}
}
