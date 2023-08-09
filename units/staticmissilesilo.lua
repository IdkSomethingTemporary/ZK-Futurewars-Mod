return { 
	staticmissilesilo = {
		unitname                      = "staticmissilesilo",
		name                          = "Missile Silo",
		description                   = "Produces Tactical Missiles",
		buildCostMetal                = 2200,
		builder                       = true,
		buildingGroundDecalDecaySpeed = 30,
		buildingGroundDecalSizeX      = 6,
		buildingGroundDecalSizeY      = 6,
		buildingGroundDecalType       = "staticmissilesilo_aoplane.dds",
		buildoptions                  = {
			"tacnuke",
			"seismic",
			"empmissile",
			"napalmmissile",
			"singularity",
			"missilenuke",
			"missilekinetic",
			"missileslow",
		},
		buildPic                      = "staticmissilesilo.png",
		canFight                      = false,
		canMove                       = false,
		canPatrol                     = false,
		category                      = "SINK UNARMED",
		corpse                        = "DEAD",
		collisionVolumeType           = "CylY",
		collisionVolumeScales         = "85 40 85",
		collisionVolumeOffsets        = "0 20 0",
		customParams                  = {
			nongroundfac = "1",
			missile_silo_capacity = 4,
		},
		energyUse                     = 0,
		explodeAs                     = "LARGE_BUILDINGEX",
		fireState                     = 0,
		footprintX                    = 6,
		footprintZ                    = 6,
		iconType                      = "missilesilo",
		maxDamage                     = 7500,
		maxSlope                      = 15,
		maxWaterDepth                 = 0,
		objectName                    = "missilesilo.s3o",
		script                        = "staticmissilesilo.lua",
		selfDestructAs                = "LARGE_BUILDINGEX",
		showNanoSpray                 = false,
		sightDistance                 = 273,
		useBuildingGroundDecal        = true,
		workerTime                    = 10,
		yardMap                       = "oooooo occcco occcco occcco occcco oooooo",
		featureDefs                   = {
			DEAD = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 6,
				footprintZ       = 6,
				object           = "missilesilo_dead.s3o",
			},
			HEAP = {
				blocking         = false,
				footprintX       = 6,
				footprintZ       = 6,
				object           = "debris4x4c.s3o",
			},
		},
	} 
}
