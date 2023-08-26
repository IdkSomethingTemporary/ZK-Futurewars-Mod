return { 
	staticrearm = {
		unitname            = "staticrearm",
		name                = "Airpad",
		description         = "Repairs and Rearms Aircraft at 20bp.",
		activateWhenBuilt   = true,
		buildCostMetal      = 350,
		buildDistance       = 6,
		builder             = true, --[[ This makes the airpad a factory from the engine's technical PoV.
										 The purpose is to let airpads have a rally queue that units leaving
										 the pad can inherit, without the airpad itself trying to act on it. ]]
		buildingGroundDecalDecaySpeed = 30,
		buildingGroundDecalSizeX      = 12,
		buildingGroundDecalSizeY      = 12,
		buildingGroundDecalType       = "staticrearm_aoplane.dds",
		buildPic            = "staticrearm.png",
		canAttack           = true,
		canMove             = true,
		canPatrol           = true,
		category            = "UNARMED FLOAT",
		collisionVolumeOffsets = "0 0 0",
		collisionVolumeScales  = "130 40 130",
		collisionVolumeType    = "box",
		selectionVolumeOffsets = "0 0 0",
		selectionVolumeScales  = "130 40 130",
		selectionVolumeType    = "box",
		corpse              = "DEAD",
		customParams        = {
			pad_count = 4,
			nobuildpower   = 1,
			pad_bp = 20,
			notreallyafactory = 1,
			selection_rank  = "1",
			selectionscalemult = 1,
			ispad         = 1,
			outline_x = 250,
			outline_y = 250,
			outline_yoff = 5,
		},
		explodeAs           = "LARGE_BUILDINGEX",
		footprintX          = 9,
		footprintZ          = 9,
		iconType            = "building",
		maxDamage           = 1860,
		maxSlope            = 18,
		speed               = 0,
		objectName          = "staticrearm.dae",
		script              = "staticrearm.lua",
		selfDestructAs      = "LARGE_BUILDINGEX",
		showNanoSpray       = false,
		sightDistance       = 500,
		radarDistance		= 1000,
		sonarDistance		= 500,
		useBuildingGroundDecal        = true,
		waterline           = 8,
		workerTime          = 20,
		yardMap             = "ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo",
		featureDefs         = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 9,
				footprintZ       = 9,
				object           = "airpad_dead.s3o",
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 1,
				footprintZ       = 1,
				object           = "debris4x4a.s3o",
			},
		},
	} 
}
