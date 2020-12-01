return { nebula = {
  unitname               = [[nebula]],
  name                   = [[Nebula]],
  description            = [[Atmospheric Mothership]],
  acceleration           = 0.04,
  activateWhenBuilt      = true,
  airStrafe              = 0,
  bankingAllowed         = false,
  brakeRate              = 0.48,
  buildCostMetal         = 10000,
  builder                = false,
  buildPic               = [[nebula.png]],
  canFly                 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canSubmerge            = false,
  category               = [[GUNSHIP]],
  collide                = true,
  collisionVolumeOffsets = [[0 00 0]],
  collisionVolumeScales  = [[40 50 220]],
  collisionVolumeType    = [[box]],

  corpse                 = [[DEAD]],
  cruiseAlt              = 440,

  customParams           = {
    cantuseairpads = 1,
    modelradius    = [[40]],
    shield_emit_height = 20,
  },

  explodeAs              = [[LARGE_BUILDINGEX]],
  floater                = true,
  footprintX             = 5,
  footprintZ             = 5,
  hoverAttack            = true,
  iconType               = [[nebula]],
  idleAutoHeal           = 440,
  idleTime               = 1800,
  maxDamage              = 44000,
  maxVelocity            = 1.1,
  minCloakDistance       = 150,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName             = [[nebula.s3o]],
  script                 = [[nebula.lua]],
  selfDestructAs         = [[LARGE_BUILDINGEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:brawlermuzzle]],
      [[custom:plasma_hit_96]],
      [[custom:EXP_MEDIUM_BUILDING_SMALL]],
    },

  },
  sightDistance          = 1200,
  turnRate               = 100,
  upright                = true,
  workerTime             = 0,
  
  weapons                = {

    {
      def                = [[MISSILETOP]],
      mainDir            = [[0 1 0]], -- top
      maxAngleDif        = 210,
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },
    {
      def                = [[MISSILEBOTTOM]],
      mainDir            = [[0 -1 0]], -- bottom
      maxAngleDif        = 210,
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },
    {
      def                = [[CANNON]],
      mainDir            = [[-1 0 0]], -- left
      maxAngleDif        = 210,
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },
    {
      def                = [[CANNON]],
      mainDir            = [[1 0 0]], -- right
      maxAngleDif        = 210,
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

    {
      def         = [[SHIELD]],
    },
  },


  weaponDefs             = {
	
	AG = {
		name                    = [[Plasma Submunition]],
		accuracy                = 180,
		areaOfEffect            = 96,
		avoidFeature            = false,
		avoidGround             = false,
		craterBoost             = 1,
		craterMult              = 2,

		customParams            = {
			burst = Shared.BURST_RELIABLE,
			isFlak = 3,
			flaktime = 8,
			reaim_time = 8, -- COB
			light_color = [[1.4 0.8 0.3]],
			isFlak = 3,
			flaktime = 1/30,
		},

		damage                  = {
			default = 30,
		},
		groundbounce = false,
		--bounceslip = 0.25,
		--bouncerebound = 0.1,
		--numbounce = 10,
		edgeEffectiveness       = 0.5,
		explosionGenerator      = [[custom:flakplosion]],
		impulseBoost            = 0,
		impulseFactor           = 0.4,
		interceptedByShieldType = 1,
		myGravity               = 0.1,
		noSelfDamage            = true,
		--range                   = 1180,
		reloadtime              = 7,
		soundHit                = [[weapon/cannon/plasma_hit]],
		turret                  = true,
		weaponType              = [[Cannon]],
		weaponVelocity          = 330,
	},
	
	MISSILETOP = {
		burst = 2,
		burstRate = 0.5,
		name                    = [[Typhoon Missile Barrage]],
		areaOfEffect            = 0,
		sprayAngle				= 800,
		accuracy				= 800,
		dance					= 200,
		burst					= 6,
		projectiles				= 2,
		burstRate				= 4/30,
		avoidFriendly           = true,
		canattackground         = true,
		cegTag                  = [[missiletrailblue]],
		collideFriendly         = false,
		craterBoost             = 1,
		craterMult              = 2,
		--cylinderTargeting       = 6,

		customParams        	  = {
			burst = Shared.BURST_RELIABLE,
			light_color = [[0.5 0.6 0.6]],
			reaim_time = 60, -- Fast update not required (maybe dangerous)
			--CAS--
			numprojectiles = 8, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
			projectile = "nebula_ag",
			clustervec = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
			use2ddist = 0, -- should we check 2d or 3d distance? OPTIONAL. Default: 0.
			spawndist = 160, -- at what distance should we spawn the projectile(s)? REQUIRED.
			timeoutspawn = 1, -- Can this missile spawn its subprojectiles when it times out? OPTIONAL. Default: 1.
			vradius = "-4,0,-4,4,1,4", -- velocity that is randomly added. covers range of +-vradius. OPTIONAL. Default: 4.2
			--spreadradius = 6, -- used in clusters. OPTIONAL. Default: 100.
			--useheight = 1,
			--groundimpact = 1, -- check the distance between ground and projectile? OPTIONAL.
			--proxy = 1, -- check for nearby units?
			--proxydist = 100, -- how far to check for units? Default: spawndist
		},

		damage                  = {
			default = 30*8,
		},

		edgeEffectiveness		= 0.2,
		explosionGenerator      = [[custom:WEAPEXP_PUFF]],
		fireStarter             = 70,
		flightTime              = 7,
		impulseBoost            = 0,
		impulseFactor           = 0.4,
		interceptedByShieldType = 2,
		model                   = [[wep_m_avalanche.s3o]],
		noSelfDamage            = true,
		range                   = 900,
		reloadtime              = 6,
		smokeTrail              = true,
		soundHit                = [[weapon/missile/sabot_fire]],
		soundStart              = [[weapon/missile/large_missile_fire]],
		startVelocity           = 100,
		texture2                = [[darksmoketrail]],
		tolerance               = 22000,
		tracks                  = true,
		turnRate                = 40000,
		weaponAcceleration      = 200,
      		trajectoryHeight        = 0.60,
		weaponType              = [[MissileLauncher]],
		weaponVelocity          = 650,
    },
	MISSILEBOTTOM = {
		burst = 2,
		burstRate = 0.5,
		name                    = [[Typhoon Missile Barrage]],
		areaOfEffect            = 0,
		sprayAngle				= 800,
		accuracy				= 800,
		dance					= 200,
		burst					= 6,
		projectiles				= 2,
		burstRate				= 4/30,
		avoidFriendly           = true,
		canattackground         = true,
		cegTag                  = [[missiletrailblue]],
		collideFriendly         = false,
		craterBoost             = 1,
		craterMult              = 2,
		--cylinderTargeting       = 6,

		customParams        	  = {
			burst = Shared.BURST_RELIABLE,
			light_color = [[0.5 0.6 0.6]],
			reaim_time = 60, -- Fast update not required (maybe dangerous)
			--CAS--
			numprojectiles = 8, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
			projectile = "nebula_ag",
			clustervec = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
			use2ddist = 0, -- should we check 2d or 3d distance? OPTIONAL. Default: 0.
			spawndist = 160, -- at what distance should we spawn the projectile(s)? REQUIRED.
			timeoutspawn = 1, -- Can this missile spawn its subprojectiles when it times out? OPTIONAL. Default: 1.
			vradius = "-4,0,-4,4,1,4", -- velocity that is randomly added. covers range of +-vradius. OPTIONAL. Default: 4.2
			--spreadradius = 6, -- used in clusters. OPTIONAL. Default: 100.
			--useheight = 1,
			--groundimpact = 1, -- check the distance between ground and projectile? OPTIONAL.
			--proxy = 1, -- check for nearby units?
			--proxydist = 100, -- how far to check for units? Default: spawndist
		},

		damage                  = {
			default = 30*8,
		},

		edgeEffectiveness		= 0.2,
		explosionGenerator      = [[custom:WEAPEXP_PUFF]],
		fireStarter             = 70,
		flightTime              = 7,
		impulseBoost            = 0,
		impulseFactor           = 0.4,
		interceptedByShieldType = 2,
		model                   = [[wep_m_avalanche.s3o]],
		noSelfDamage            = true,
		range                   = 900,
		reloadtime              = 6,
		smokeTrail              = true,
		soundHit                = [[weapon/missile/sabot_fire]],
		soundStart              = [[weapon/missile/large_missile_fire]],
		startVelocity           = 100,
		texture2                = [[darksmoketrail]],
		tolerance               = 22000,
		tracks                  = true,
		turnRate                = 40000,
		weaponAcceleration      = 200,
      		trajectoryHeight        = 0.15,
		weaponType              = [[MissileLauncher]],
		weaponVelocity          = 650,
    },
	
	fragment = {
      name                    = [[R-40 Canister Cannon Fragment]],
      areaOfEffect            = 144,
      avoidFeature            = true,
      avoidFriendly           = true,
      burnblow                = true,
      craterBoost             = 1,
      craterMult              = 0.5,

      customParams            = {
        gatherradius = [[120]],
        smoothradius = [[80]],
        smoothmult   = [[0.25]],
        force_ignore_ground = [[1]],
		isFlak = 3,
		flaktime = 1/30,
        light_camera_height = 1500,
      },
      
      damage                  = {
        default = 18.2,
      },

      edgeEffectiveness       = 0.75,
      explosionGenerator      = [[custom:FLASH64]],
      impulseBoost            = 30,
      impulseFactor           = 0.6,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      soundHit                = [[weapon/cannon/generic_cannon]],
      soundStart              = [[weapon/cannon/outlaw_gun]],
      soundStartVolume        = 3,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 750,
	},
	
    CANNON = {
      name                    = [[Heavy Canister Driver]],
      alphaDecay              = 0.1,
      areaOfEffect            = 0.1,
      colormap                = [[1 0.95 0.4 1   1 0.95 0.4 1    0 0 0 0.01    1 0.7 0.2 1]],
      craterBoost             = 0,
      craterMult              = 0,
      customParams = {
		numprojectiles = 12, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
		projectile = "nebula_fragment",
		--spreadradius = 4, -- used in clusters. OPTIONAL. Default: 100.
		clustervec = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
		use2ddist = 0, -- should we check 2d or 3d distance? OPTIONAL. Default: 0.
		spawndist = 185, -- at what distance should we spawn the projectile(s)? REQUIRED.
		timeoutspawn = 1, -- Can this missile spawn its subprojectiles when it times out? OPTIONAL. Default: 1.
		vradius = "-6,0,-6,6,1,6", -- velocity that is randomly added. covers range of +-vradius. OPTIONAL. Default: 4.2
		groundimpact = 1, -- check the distance between ground and projectile? OPTIONAL.
		proxy = 1, -- check for nearby units?
		
	  },
      damage                  = {
        default = 18.2 * 12,
      },

      explosionGenerator      = [[custom:plasma_hit_32]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.7,
      model                   = [[depthcharge.s3o]],
      interceptedByShieldType = 1,
      noGap                   = false,
      noSelfDamage            = true,
      range                   = 970,
      reloadtime              = 2/3,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 2,
      size                    = 2.5,
      sizeDecay               = 0,
      soundStart              = [[weapon/cannon/cannon_fire8]],
      soundHit                = [[explosion/ex_small14]],
      sprayAngle              = 360,
      stages                  = 12,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1200,
    },

    SHIELD = {
      name                    = [[Energy Shield]],

      damage                  = {
        default = 10,
      },
      customParams            = {
        unlinked                = true,
        shield_recharge_delay   = 60,
      },

      exteriorShield          = true,
      shieldAlpha             = 0.2,
      shieldBadColor          = [[1 0.1 0.1 1]],
      shieldGoodColor         = [[0.1 0.1 1 1]],
      shieldInterceptType     = 3,
      shieldPower             = 40400,
      shieldPowerRegen        = 4040,
      shieldPowerRegenEnergy  = 90,
      shieldRadius            = 800,
      shieldRepulser          = false,
      smartShield             = true,
      visibleShield           = true,
      visibleShieldRepulse    = false,
      weaponType              = [[Shield]],
    },
	INNERSHIELD = {
      name                    = [[Energy Shield]],

      damage                  = {
        default = 10,
      },
      customParams            = {
        unlinked                = true,
      },

      exteriorShield          = true,
      shieldAlpha             = 0.2,
      shieldBadColor          = [[1 0.1 0.1 1]],
      shieldGoodColor         = [[0.1 0.1 1 1]],
      shieldInterceptType     = 3,
      shieldPower             = 4500,
      shieldPowerRegen        = 120,
      shieldPowerRegenEnergy  = 30,
      shieldRadius            = 120,
      shieldRepulser          = false,
      smartShield             = true,
      visibleShield           = false,
      visibleShieldRepulse    = false,
      weaponType              = [[Shield]],
    },
  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      collisionVolumeOffsets = [[0 0 0]],
      collisionVolumeScales  = [[40 50 220]],
      collisionVolumeType    = [[box]],
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[nebula_dead.s3o]],
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4a.s3o]],
    },

  },

} }
