return { 
	athena = {
		unitname            = [[athena]],
		name                = [[Athena]],
		description         = [[Airborne SpecOps Engineer]],
		acceleration        = 0.1,
		airStrafe           = 0,
		brakeRate           = 0.2,
		buildCostMetal      = 750,
		buildDistance       = 400,
		builder             = true,

		buildoptions        = {
			[[staticmex]],
			[[turretaalaser]],
			[[turretlaser]],
			[[turretmissile]],
			[[staticcon]],
			[[staticradar]],
			[[staticjammer]],
			[[turretdecloak]],
			[[cloakcon]],
			[[jumpbomb]],
			[[cloakraid]],
			[[cloakheavyraid]],
			[[cloaksnipe]],
			[[spiderantiheavy]],
			[[shieldbomb]],
			[[cloakbomb]],
			[[cloakaa]],
			[[cloakjammer]],
			[[vehcapture]],
			[[amphtele]],
			[[striderantiheavy]],
			[[staticmissilesilo]],
			[[energypylon]],
			[[staticenergyrtg]],
			[[energywind]],
			[[energysolar]],
			[[staticrearm]],
			[[turretaaclose]],
			[[turretemp]],
			[[turretriot]],
			[[turrettorp]],
			[[turretimpulse]],
			[[staticantinuke]],
		},

		buildPic            = [[athena.png]],
		buildRange3D        = false,
		canFly              = true,
		canGuard            = true,
		canMove             = true,
		canPatrol           = true,
		canResurrect        = true,
		canSubmerge         = false,
		category            = [[GUNSHIP UNARMED]],
		cloakCost           = 4,
		cloakCostMoving     = 15,
		collide             = true,
		corpse              = [[DEAD]],
		collisionVolumeOffsets = [[0 0 0]],
		collisionVolumeScales  = [[30 20 60]],
		collisionVolumeType    = [[ellipsoid]],
		cruiseAlt           = 80,

		customParams        = {
			airstrafecontrol = [[1]],
			modelradius    = [[15]],
			isfakefactory = 1,
			notreallyafactory = 1,
			cloakregen	= 20,
			recloaktime 	   = 240,
		},

		energyUse           = 0,
		explodeAs           = [[GUNSHIPEX]],
		floater             = true,
		footprintX          = 2,
		footprintZ          = 2,
		hoverAttack         = true,
		iconType            = [[t3builder]],
		initCloaked         = false,
		maxDamage           = 2300,
		maxSlope            = 36,
		maxVelocity         = 7,
		minCloakDistance    = 100,
		noAutoFire          = false,
		noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
		objectName          = [[selene.s3o]],
		radarDistance       = 1400,
		radarDistanceJam    = 600,
		script              = [[athena.lua]],
		selfDestructAs      = [[GUNSHIPEX]],
		showNanoSpray       = false,
		sightDistance       = 600,
		sonarDistance       = 600,
		resurrectSpeed      = 7.5,
		turnRate            = 148,
		workerTime          = 30,
		featureDefs         = {
			DEAD  = {
				blocking         = true,
				featureDead      = [[HEAP]],
				footprintX       = 2,
				footprintZ       = 2,
				collisionVolumeOffsets = [[0 0 0]],
				collisionVolumeScales  = [[30 20 60]],
				collisionVolumeType    = [[ellipsoid]],
				object           = [[selene_dead.s3o]],
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 2,
				footprintZ       = 2,
				object           = [[debris2x2c.s3o]],
			},
		},
	} 
}
