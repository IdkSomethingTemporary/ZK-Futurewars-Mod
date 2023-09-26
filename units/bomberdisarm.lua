return { 
	bomberdisarm = {
		unitname            = "bomberdisarm",
		name                = "Menace",
		description         = "Tactical Support Bomber",
		brakerate           = 0.4,
		buildCostMetal      = 550,
		buildPic            = "bomberdisarm.png",
		canFly              = true,
		canMove             = true,
		canSubmerge         = false,
		category            = "FIXEDWING",
		collide             = false,
		collisionVolumeOffsets = "0 0 0",
		collisionVolumeScales  = "48 20 60",
		collisionVolumeType    = "ellipsoid",
		selectionVolumeOffsets = "0 0 0",
		selectionVolumeScales  = "95 34 95",
		selectionVolumeType    = "cylY",
		corpse              = "DEAD",
		cruiseAlt           = 240,
		customParams        = {
			modelradius    = "10",
			requireammo    = "1",
			refuelturnradius = "170",
			reammoseconds    = "20",
			ammocount = 3,
			ammotexture_1 = "States/ammostates/menance_slowbomb.png",
			ammotexture_2 = "States/ammostates/menance_mines.png",
			ammotexture_3 = "States/ammostates/menance_disarm.png",
			ammoname_1 = "Slow bomb",
			ammoname_2 = "Mine laying",
			ammoname_3 = "X-17 Microburst",
			ammodesc_1 = "Bombards an area with a slow pulse.",
			ammodesc_2 = "Drops a barrage of mines in an area.",
			ammodesc_3 = "Drops a heavy bomb that penetrates armor, but has little area of effect.",
		},
		explodeAs           = "GUNSHIPEX",
		floater             = true,
		footprintX          = 3,
		footprintZ          = 3,
		iconType            = "bombersupport",
		maxAcc              = 0.77,
		health              = 1700,
		maxFuel             = 1000000,
		maxRudder           = 0.012,
		speed               = 10.2,
		noChaseCategory     = "TERRAFORM FIXEDWING LAND SHIP SWIM GUNSHIP SUB HOVER",
		objectName          = "stiletto.s3o",
		script              = "bomberdisarm.lua",
		selfDestructAs      = "GUNSHIPEX",
		sightDistance       = 900,
		turnRadius          = 540,
		weapons             = {
			{
				def                = "SLOW_BOMB",
				mainDir            = "0 -1 0",
				maxAngleDif        = 0,
				onlyTargetCategory = "SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP",
			},
			{
				def                = "MINE",
				mainDir            = "0 -1 0",
				maxAngleDif        = 0,
				onlyTargetCategory = "SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP",
			},
			{
				def                = "ARMBOMBLIGHTNING",
				mainDir            = "0 -1 0",
				maxAngleDif        = 0,
				onlyTargetCategory = "SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP",
			},
		},
		weaponDefs          = {
			ARMBOMBLIGHTNING = {
				name                    = "X-17 Microburst",
				areaOfEffect            = 160,
				avoidFeature            = false,
				avoidFriendly           = false,
				cameraShake             = 150,
				craterBoost             = 0,
				craterMult              = 0,
				cegTag                  = "disarmtrail",
				customParams        = {
					disarmDamageMult = 1,
					disarmDamageOnly = 1,
					disarmTimer      = 16, -- seconds
					light_radius = 350,
					light_color = "2 2 2",
					blastwave_speed = 7.5,
					blastwave_life = 40,
					blastwave_lossfactor = 0.91,
					blastwave_damage = 0,
					blastwave_disarm = 6500,
					blastwave_diarm_time = 10,
					blastwave_slowdmg = 0,
					blastwave_size = 1,
					blastwave_impulse = 0,
				},
				damage                  = {
					default        = 100.1,
				},
				edgeEffectiveness       = 0.4,
				explosionGenerator      = "custom:disarm_explosion_600",
				fireStarter             = 90,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				mygravity               = 0.95,
				model                   = "wep_merl.s3o",
				soundHit                = "weapon/missile/emp_missile_hit",
				soundHitVolume			= 100,
				SoundStart				= "weapon/cannon/light_launcher",
				reloadtime              = 1,
				rgbColor                = "1 1 1",
				size					= 0.01,
				sprayAngle              = 5000,
				thickness               = 10,
				tileLength              = 50,
				tolerance               = 32767,
				turret                  = true,
				weaponType              = "AircraftBomb",
			},
			MINE = {
				name                    = "Minefield dispenser",
				areaOfEffect            = 256,
				avoidFeature            = true,
				--cegTag                  = "RAVENTRAIL_Light",
				craterBoost             = 0,
				craterMult              = 0,
				burst					= 3,
				burstRate				= 4/30,
				customParams        = {
					slot = "3",
					numprojectiles1 = 10,
					projectile1 = "0_commweapon_minefield_dummy",
					timeoutspawn = 0,
					velspread1 = "19.1, -2, 19.1, _, -4, _",
					spawndist = 220,
					useheight = 1,
					nofriendlyfire = "needs hax",
					shield_damage = 3370,
					antibaitbypass = "ärsytät minua",
				},
				damage                  = {
					default = 800,
				},
				explosionGenerator      = "custom:MEDMISSILE_EXPLOSION",
				fireStarter             = 70,
				mygravity               = 0.95,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 2,
				model                   = "depthcharge.s3o", --TODO: replace with SharkGameDev's better model. delete this once it's done.
				range                   = 520,
				reloadtime              = 5,
				smokeTrail              = true,
				soundHit                = "weapon/clusters/cluster_grenade_hit",
				soundHitVolume          = 8,
				SoundStart				= "weapon/cannon/light_launcher",
				texture2                = "lightsmoketrail",
				tolerance               = 8000,
				turret                  = true,
				weaponType              = "AircraftBomb",
				weaponVelocity          = 400,
			},
			SLOW_BOMB = {
				name               = "Slow wave",
				areaOfEffect       = 500,
				burst          = 6,
				burstrate		= 8/30,
				cegTag			= "slowbomb_trail",
				craterBoost        = 1,
				craterMult         = 3.5,
				customparams = {
					lups_explodespeed = 1.04,
					lups_explodelife = 0.88,
					nofriendlyfire = 1,
					light_color = "1.88 0.63 2.5",
					light_radius = 320,
					blastwave_size = 61,
					blastwave_impulse = 0,
					blastwave_speed = 7,
					blastwave_life = 27,
					blastwave_lossfactor = 0.9,
					blastwave_damage = 10,
					blastwave_slowdmg = 4550,
					blastwave_overslow = 10,
					blastwave_nofriendly = "superhot",
				},
				damage = {
					default          = 0,
				},
				edgeEffectiveness  = 0.4,
				explosionGenerator = "custom:riotballplus2_purple_limpet",
				explosionSpeed     = 10,
				mygravity		   = 0.95,
				impulseBoost       = 0,
				impulseFactor      = 0,
				soundHit           = "weapon/aoe_aura2",
				soundHitVolume     = 4,
				SoundStart				= "weapon/cannon/light_launcher",
				soundStartVolume        = 12,
				sprayAngle              = 22000,
				weaponType              = "AircraftBomb",
			},
		},
		featureDefs         = {
			DEAD = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 3,
				footprintZ       = 3,
				object           = "Stiletto_dead.s3o",
			},
			HEAP = {
				blocking         = false,
				footprintX       = 3,
				footprintZ       = 3,
				object           = "debris2x2c.s3o",
			},
		},
	} 
}
