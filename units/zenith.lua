return { 
	zenith = {
		unitname                      = [[zenith]],
		name                          = [[Zenith]],
		description                   = [[Meteor Controller]],
		acceleration                  = 0,
		activateWhenBuilt             = true,
		buildCostMetal                = 50000,
		builder                       = false,
		buildingGroundDecalDecaySpeed = 30,
		buildingGroundDecalSizeX      = 11,
		buildingGroundDecalSizeY      = 11,
		buildingGroundDecalType       = [[zenith_aoplane.dds]],
		buildPic                      = [[zenith.png]],
		category                      = [[SINK]],
		collisionVolumeOffsets        = [[0 0 0]],
		collisionVolumeScales         = [[90 194 90]],
		collisionVolumeType           = [[cylY]],
		corpse                        = [[DEAD]],
  
		customParams                  = {
			keeptooltip = [[any string I want]],
			neededlink  = 750,
			pylonrange  = 280,
			modelradius    = [[45]],
			bait_level_default = 0,
			superweapon = 1,
		},
		energyUse                     = 0,
		explodeAs                     = [[ATOMIC_BLAST]],
		fireState                     = 0,
		footprintX                    = 8,
		footprintZ                    = 8,
		iconType                      = [[mahlazer]],
		idleAutoHeal                  = 5,
		idleTime                      = 1800,
		maxDamage                     = 12000,
		maxSlope                      = 18,
		maxVelocity                   = 0,
		maxWaterDepth                 = 0,
		noChaseCategory               = [[FIXEDWING GUNSHIP SUB STUPIDTARGET]],
		objectName                    = [[zenith.s3o]],
		onoffable                     = true,
		script                        = [[zenith.lua]],
		selfDestructAs                = [[ATOMIC_BLAST]],
		sightDistance                 = 660,
		turnRate                      = 0,
		useBuildingGroundDecal        = true,
		workerTime                    = 0,
		yardMap                       = [[oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo]],

		weapons                       = {
			{
				def                = [[METEOR]],
				badTargetCateogory = [[MOBILE]],
				onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP]],
			},

			{
				def                = [[GRAVITY_NEG]],
				onlyTargetCategory = [[NONE]],
			},
		},
		weaponDefs                    = {
			GRAVITY_NEG = {
				name                    = [[Attractive Gravity (fake)]],
				alwaysVisible           = 1,
				avoidFriendly           = false,
				canAttackGround         = false,
				coreThickness           = 0.5,
				craterBoost             = 0,
				craterMult              = 0,
				customParams            = {
					light_radius = 0,
					script_reload = [[20]],
					reveal_unit = 20,
					singuimmune = 1,
				},

				damage                  = {
					default = 0.001,
					planes  = 0.001,
				},

				duration                = 0.9,
				explosionGenerator      = [[custom:NONE]],
				impactOnly              = true,
				impulseBoost            = 0,
				impulseFactor           = 0,
				intensity               = 0.7,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				range                   = 20000,
				reloadtime              = 0.2,
				rgbColor                = [[0 0 1]],
				rgbColor2               = [[1 0.5 1]],
				size                    = 32,
				soundStart              = [[weapon/gravity_fire]],
				soundStartVolume        = 0.15,
				thickness               = 32,
				tolerance               = 5000,
				turret                  = true,
				waterWeapon             = true,
				weaponType              = [[LaserCannon]],
				weaponVelocity          = 6000,
			},
			METEOR      = {
				name                    = [[Asteroid]],
				accuracy                = 700,
				alwaysVisible           = 1,
				areaOfEffect            = 720,
				avoidFriendly           = false,
				avoidFeature            = false,
				avoidGround             = false,
				cegTag                  = [[METEOR_TAG]],
				collideFriendly         = true,
				craterBoost             = 0,
				craterMult              = 20,

				customParams              = {
					light_color = [[2.4 1.5 0.6]],
					light_radius = 600,
					script_reload = [[20]],
					restrict_in_widgets = 1,
					light_camera_height = 3500,
					light_color = [[0.75 0.4 0.15]],
					light_radius = 220,
					numprojectiles1 = 20, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "zenith_fragment_dummy",
					--spreadradius = 8, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					keepmomentum1 = 0,
					timeoutspawn = 0,
					vradius1 = "-9,3,-9,9,12,9",
					noairburst = "March of progress", -- if true, this projectile will skip all airburst checks
					onexplode = "The unity prevails", -- if true, this projectile will cluster when it explodes
					spawndist = 69420, -- at what distance should we spawn the projectile(s)? REQUIRED.
					stats_damage = 3000,
					shield_damage = (100*10) + 3000,
					cruisealt = 2200,
					cruisedist = 820,
					airlaunched = 1,
					cruise_nolock = 1,
					cruiserandomradius = 1200,
				},

				damage                  = {
					default = 14000,
				},

				edgeEffectiveness       = 0.8,
				explosionGenerator      = [[custom:big_meteor_smash]],
				fireStarter             = 70,
				flightTime              = 30,
				impulseBoost            = 250,
				impulseFactor           = 0.5,
				interceptedByShieldType = 2,
				noSelfDamage            = false,
				model                   = [[asteroid.s3o]],
				range                   = 20000,
				reloadtime              = 1,
				smokeTrail              = true,
				soundHit                = [[weapon/cannon/supergun_bass_boost]],
				startVelocity           = 100,
				textures                = {
					[[null]],
					[[null]],
					[[null]],
				},
				size					= 80,
				turret                  = true,
				turnrate                = 19000,
				weaponAcceleration      = 50,
				weaponType              = [[MissileLauncher]],
				weaponVelocity          = 800,
			},
			FRAGMENT_DUMMY = {
				name                    = [[Asteroid Debris]],
				accuracy                = 400,
				alwaysVisible           = true,
				areaOfEffect            = 350,
				avoidFeature            = false,
				craterBoost             = 1,
				craterMult              = 2,
				cegTag                  = [[meteor_trail]],
				customParams              = {
					numprojectiles1 = 1, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "zenith_fragment",
					--spreadradius = 8, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "derpderpderpderpderpderpderpderpderpderp", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					keepmomentum1 = 1,
					timeoutspawn = 0,
					noairburst = "Perkeleen Perkele", -- if true, this projectile will skip all airburst checks
					onexplode = "whoops",
					spawndist = 69420, -- at what distance should we spawn the projectile(s)? REQUIRED.
					timeddeploy = 120,
					light_camera_height = 2500,
					light_color = [[0.25 0.13 0.05]],
					light_radius = 500,
					shield_damage = 2200,
					bogus = 1,
				},
				damage                  = {
					default = 0,
				},

				--explosionGenerator      = [[custom:smr_big]],
				model                   = [[asteroid.s3o]],
				firestarter             = 180,
				impulseBoost            = 0,
				impulseFactor           = 0.42,
				interceptedByShieldType = 1,
				myGravity               = 0.10,
				range                   = 900,
				reloadtime              = 12,
				rgbColor                = [[1 0.5 0.2]],
				size                    = 3,
				soundHit                = [[nosound]],
				soundStart              = [[nosound]],
				soundStartVolume        = 3.2,
				sprayangle              = 2500,
				turret                  = true,
				waterweapon             = true,
				weaponType              = [[Cannon]],
				weaponVelocity          = 320,
			},
			FRAGMENT = {
				name                    = [[Asteroid Fragment]],
				accuracy                = 400,
				alwaysVisible           = true,
				areaOfEffect            = 80,
				avoidFeature            = false,
				craterBoost             = 1,
				craterMult              = 2,
				cegTag                  = [[meteor_trail]],
				customParams              = {
					numprojectiles1 = 4, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "zenith_fragment_secondary_dummy",
					spreadradius1 = "10,10",
					clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					clusterpos1 = "randomy",
					keepmomentum1 = 0,
					timeoutspawn = 0,
					vradius1 = "-1.75,2,-1.5,1.75,5,1.75",
					noairburst = "Just fucking DIE already, you're boring me.", -- if true, this projectile will skip all airburst checks
					onexplode = "NO MERCY", -- if true, this projectile will cluster when it explodes
					spawndist = 69420, -- at what distance should we spawn the projectile(s)? REQUIRED.
					--lups_heat_fx = [[firewalker]],
					light_camera_height = 2500,
					light_color = [[0.25 0.13 0.05]],
					light_radius = 500,
				},
				damage                  = {
					default = 2200,
				},
				explosionGenerator      = [[custom:mineboom]],
				model                   = [[asteroid.s3o]],
				firestarter             = 180,
				impulseBoost            = 0,
				impulseFactor           = 0.42,
				interceptedByShieldType = 1,
				myGravity               = 0.10,
				range                   = 900,
				reloadtime              = 12,
				rgbColor                = [[1 0.5 0.2]],
				size                    = 3,
				soundHit                = [[weapon/cannon/supergun_bass_boost]], --it's effectively an asteroid, so why not use the asteroid sounds?
				soundStart              = [[nosound]],
				soundStartVolume        = 3.2,
				sprayangle              = 2500,
				turret                  = true,
				weaponType              = [[Cannon]],
				weaponVelocity          = 320,
			},
			FRAGMENT_SECONDARY_DUMMY = {
				name                    = [[merkityksetön räjähdys]], -- nobody should read this anyways?
				accuracy                = 400,
				areaOfEffect            = 162,
				avoidFeature            = false,
				craterBoost             = 1,
				craterMult              = 2,
				customParams              = {

					numprojectiles1 = 1, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "zenith_fragment_secondary_fragment",
					--spreadradius = 8, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "derpderpderpderpderpderpderpderpderpderp", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					keepmomentum1 = 1,
					timeoutspawn = 0,
					noairburst = "I belive I can fly...", -- if true, this projectile will skip all airburst checks
					spawndist = 69420, -- at what distance should we spawn the projectile(s)? REQUIRED.
					timeddeploy = 20,
					shield_damage = 560,
					bogus = 1
				},
				damage                  = {
					default = 0,
				},

				firestarter             = 180,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 1,
				myGravity               = 0.07,
				range                   = 900,
				reloadtime              = 12,
				rgbColor                = [[1 0.5 0.2]],
				size                    = 10,
				soundHit                = [[explosion/ex_med17]],
				soundStart              = [[nosound]],
				soundStartVolume        = 3.2,
				sprayangle              = 2500,
				turret                  = true,
				weaponType              = [[Cannon]],
				weaponVelocity          = 320,
				waterWeapon             = true,
			},
			FRAGMENT_SECONDARY_FRAGMENT = {
				name                    = [[Debris]],
				accuracy                = 400,
				alwaysVisible           = true,
				areaOfEffect            = 128,
				avoidFeature            = false,
				craterBoost             = 1,
				craterMult              = 2,
				cegTag                  = [[flamer]],
				customParams            = {

					--lups_heat_fx = [[firewalker]],
					light_camera_height = 2500,
					light_color = [[0.25 0.13 0.05]],
					light_radius = 500,
				},
				damage                  = {
					default = 560,
				},

				explosionGenerator      = [[custom:MEDMISSILE_EXPLOSION]],
				firestarter             = 180,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 1,
				myGravity               = 0.07,
				range                   = 900,
				reloadtime              = 12,
				rgbColor                = [[1 0.5 0.2]],
				size                    = 3,
				soundHit                = [[explosion/ex_med17]],
				soundStart              = [[nosound]],
				soundStartVolume        = 3.2,
				sprayangle              = 2500,
				turret                  = true,
				weaponType              = [[Cannon]],
				weaponVelocity          = 320,
			},

			METEOR_AIM      = {
				name                    = [[Meteor]],
				accuracy                = 700,
				alwaysVisible           = 1,
				areaOfEffect            = 240,
				avoidFriendly           = false,
				avoidFeature            = false,
				avoidGround             = false,
				cegTag                  = [[meteor_aim]],
				collideFriendly         = true,
				craterBoost             = 3,
				craterMult              = 6,

				customParams              = {
					light_radius = 0,
					--spawns_name = "asteroid_dead",
					--spawns_feature = 1,
				},

				damage                  = {
					default = 1600,
				},

				edgeEffectiveness       = 0.8,
				explosionGenerator      = [[custom:av_tess]],
				fireStarter             = 70,
				flightTime              = 300,
				impulseBoost            = 250,
				impulseFactor           = 0.5,
				interceptedByShieldType = 2,
				noSelfDamage            = false,
				model                   = [[asteroid.s3o]],
				range                   = 9000,
				reloadtime              = 1,
				smokeTrail              = true,
				soundHit                = [[weapon/cannon/supergun_bass_boost]],
				startVelocity           = 1500,
				textures                = {
					[[null]],
					[[null]],
					[[null]],
				},

				tracks                  = true,
				turret                  = true,
				turnRate                = 25000,
				weaponAcceleration      = 600,
				weaponType              = [[MissileLauncher]],
				weaponVelocity          = 1200,
				wobble                  = 0,
			},

			METEOR_FLOAT      = {
				name                    = [[Meteor]],
				accuracy                = 700,
				alwaysVisible           = 1,
				areaOfEffect            = 240,
				avoidFriendly           = false,
				avoidFeature            = false,
				avoidGround             = false,
				cegTag                  = [[meteor_hover]],
				collideFriendly         = true,
				craterBoost             = 3,
				craterMult              = 6,
				customParams              = {
					light_radius = 0,
					do_not_save = 1, -- Controlled meteors are regenerated on load.
					spawns_name = "asteroid_dead",
					spawns_feature = 1,
				},
				damage                  = {
					default = 1600,
				},

				edgeEffectiveness       = 0.8,
				explosionGenerator      = [[custom:av_tess]],
				fireStarter             = 70,
				flightTime              = 300,
				impulseBoost            = 250,
				impulseFactor           = 0.5,
				interceptedByShieldType = 2,
				noSelfDamage            = false,
				model                   = [[asteroid.s3o]],
				range                   = 9000,
				reloadtime              = 1,
				smokeTrail              = true,
				soundHit                = [[weapon/cannon/supergun_bass_boost]],
				startVelocity           = 1500,
				textures                = {
					[[null]],
					[[null]],
					[[null]],
				},

				tracks                  = true,
				trajectoryHeight        = 0,
				turret                  = true,
				turnRate                = 6000,
				weaponAcceleration      = 200,
				weaponType              = [[MissileLauncher]],
				weaponVelocity          = 200,
				wobble                  = 30000,
			},

			METEOR_UNCONTROLLED      = {
				name                    = [[Asteroid]],
				accuracy                = 700,
				alwaysVisible           = 1,
				areaOfEffect            = 720,
				avoidFriendly           = false,
				avoidFeature            = false,
				avoidGround             = false,
				cegTag                  = [[METEOR_TAG]],
				collideFriendly         = true,
				craterBoost             = 0,
				craterMult              = 0,

				customParams              = {
					light_color = [[2.4 1.5 0.6]],
					light_radius = 600,
					script_reload = [[7]],
					restrict_in_widgets = 1,
					light_camera_height = 3500,
					light_color = [[0.75 0.4 0.15]],
					light_radius = 220,
					numprojectiles1 = 20, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "zenith_fragment_dummy",
					--spreadradius = 8, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					keepmomentum1 = 0,
					timeoutspawn = 0,
					vradius1 = "-9,3,-9,9,12,9",
					noairburst = "March of progress", -- if true, this projectile will skip all airburst checks
					onexplode = "The unity prevails", -- if true, this projectile will cluster when it explodes
					spawndist = 69420, -- at what distance should we spawn the projectile(s)? REQUIRED.
					stats_damage = 3000,
					shield_damage = 8000,
				},

				damage                  = {
					default = 8000,
				},

				edgeEffectiveness       = 0.8,
				explosionGenerator      = [[custom:big_av_tess]],
				fireStarter             = 70,
				flightTime              = 30,
				impulseBoost            = 250,
				impulseFactor           = 0.5,
				interceptedByShieldType = 2,
				noSelfDamage            = false,
				model                   = [[asteroid.s3o]],
				range                   = 9000,
				reloadtime              = 1,
				smokeTrail              = true,
				soundHit                = [[weapon/cannon/supergun_bass_boost]],
				startVelocity           = 100,
				textures                = {
					[[null]],
					[[null]],
					[[null]],
				},
				size					= 40,
				turret                  = true,
				turnrate                = 2000,
				weaponAcceleration      = 50,
				weaponType              = [[MissileLauncher]],
				weaponVelocity          = 400,
			},
		},
		featureDefs                   = {
			DEAD  = {
				blocking         = true,
				featureDead      = [[HEAP]],
				footprintX       = 8,
				footprintZ       = 8,
				object           = [[zenith_dead.s3o]],
				collisionVolumeOffsets = [[0 0 0]],
				collisionVolumeScales  = [[90 194 90]],
				collisionVolumeType    = [[cylY]],
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 3,
				footprintZ       = 3,
				object           = [[debris4x4c.s3o]],
			},

		},
	} 
}