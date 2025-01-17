return {
	chicken_digger = {
		name                = "Digger",
		description         = "Burrowing Scout/Raider",
		acceleration        = 1.08,
		activateWhenBuilt   = true,
		brakeRate           = 1.23,
		builder             = false,
		buildPic            = "chicken_digger.png",
		canGuard            = true,
		canMove             = true,
		canPatrol           = true,
		category            = "LAND",

		customParams        = {
			chicken = "uwu",
		},

		explodeAs           = "SMALL_UNITEX",
		floater             = false,
		footprintX          = 2,
		footprintZ          = 2,
		health              = 180,
		iconType            = "chicken",
		idleAutoHeal        = 20,
		idleTime            = 300,
		leaveTracks         = true,
		maxSlope            = 36,
		maxWaterDepth       = 22,
		metalCost           = 0,
		energyCost          = 0,
		buildTime           = 40,
		movementClass       = "KBOT2",
		noAutoFire          = false,
		noChaseCategory     = "TERRAFORM FIXEDWING SATELLITE GUNSHIP",
		objectName          = "chicken_digger.s3o",
		onoffable           = true,
		power               = 40,
		reclaimable         = false,
		selfDestructAs      = "SMALL_UNITEX",

		sfxtypes            = {

			explosiongenerators = {
				"custom:blood_spray",
				"custom:blood_explode",
				"custom:dirt",
			},

		},
		sightDistance       = 256,
		--script              = "chicken_digger.lua",
		speed               = 99,
		trackOffset         = 1,
		trackStrength       = 6,
		trackStretch        = 1,
		trackType           = "ChickenTrack",
		trackWidth          = 10,
		turnRate            = 967,
		upright             = false,
		waterline           = 8,
		workerTime          = 0,

		weapons             = {

			{
				def                = "WEAPON",
				mainDir            = "0 0 1",
				maxAngleDif        = 120,
				onlyTargetCategory = "SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER",
			},

		},


		weaponDefs          = {

			WEAPON = {
				name                    = "Claws",
				areaOfEffect            = 8,
				craterBoost             = 0,
				craterMult              = 0,

				damage                  = {
					default = 40,
					planes  = 40,
				},

				explosionGenerator      = "custom:NONE",
				impactOnly              = true,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 0,
				noSelfDamage            = true,
				range                   = 60,
				reloadtime              = 1.2,
				size                    = 0,
				soundHit                = "weapon/missile/rocket_hit",
				soundStart              = "weapon/hiss",
				targetborder            = 1,
				tolerance               = 5000,
				turret                  = true,
				waterWeapon             = true,
				weaponType              = "Cannon",
				weaponVelocity          = 500,
			},

		},

	}
}
