return { 
	staticjammer = {
		unitname                      = "staticjammer",
		name                          = "Cornea",
		description                   = "Area Cloaker/Jammer",
		activateWhenBuilt             = true,
		buildCostMetal                = 500,
		builder                       = false,
		buildingGroundDecalDecaySpeed = 30,
		buildingGroundDecalSizeX      = 4,
		buildingGroundDecalSizeY      = 4,
		buildingGroundDecalType       = "staticjammer_aoplane.dds",
		buildPic                      = "staticjammer.png",
		category                      = "SINK UNARMED",
		canMove                       = true,
		cloakCost                     = 1,
		collisionVolumeOffsets        = "0 0 0",
		collisionVolumeScales         = "32 70 32",
		collisionVolumeType           = "CylY",
		corpse                        = "DEAD",

		customParams                  = {
			removewait     = 1,
			morphto = "cloakjammer",
			morphtime = 5,
			area_cloak = 1,
			area_cloak_upkeep = 2.5,
			area_cloak_radius = 675,
			area_cloak_decloak_distance = 75,
			priority_misc  = 1,
			addfight       = 1,
			addpatrol      = 1,
			outline_x = 90,
			outline_y = 130,
			outline_yoff = 20,
		},
		energyUse                     = 2.5,
		explodeAs                     = "BIG_UNITEX",
		floater                       = true,
		footprintX                    = 2,
		footprintZ                    = 2,
		iconType                      = "staticjammer",
		idleAutoHeal                  = 5,
		idleTime                      = 1800,
		initCloaked                   = true,
		levelGround                   = false,
		maxDamage                     = 2000,
		maxSlope                      = 36,
		minCloakDistance              = 100,
		noAutoFire                    = false,
		objectName                    = "radarjammer.dae",
		onoffable                     = true,
		radarDistanceJam              = 675,
		script                        = "staticjammer.lua",
		selfDestructAs                = "BIG_UNITEX",
		sightDistance                 = 200,
		useBuildingGroundDecal        = true,
		yardMap                       = "oo oo",
		featureDefs                   = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 2,
				footprintZ       = 2,
				object           = "radarjammer_dead.dae",
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
