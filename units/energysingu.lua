return { 
	energysingu = {
		unitname                      = "energysingu",
		name                          = "Singularity Reactor",
		description                   = "Powerplant: +300e, increases over time",
		activateWhenBuilt             = true,
		buildCostMetal                = 4000,
		builder                       = false,
		buildingGroundDecalDecaySpeed = 30,
		buildingGroundDecalSizeX      = 9,
		buildingGroundDecalSizeY      = 9,
		buildingGroundDecalType       = "energysingu_aoplane.dds",
		buildPic                      = "energysingu.png",
		category                      = "FLOAT UNARMED",
		collisionVolumeOffsets        = "0 0 0",
		collisionVolumeScales         = "120 120 120",
		collisionVolumeType           = "ellipsoid",
		corpse                        = "DEAD",
		customParams                  = {
			pylonrange = 250,
			aimposoffset   = "0 12 0",
			midposoffset   = "0 12 0",
			modelradius    = "60",
			removewait     = 1,
			removestop     = 1,
			selectionscalemult = 1.15,
			decay_rate = -0.02,
			decay_time = 2,
			decay_maxoutput = 2.5,
			decay_initialrate = 1,
			outline_x = 200,
			outline_y = 200,
			outline_yoff = 55,
		},
		energyMake                    = 300,
		explodeAs                     = "SINGULARITY",
		floater                       = true,
		footprintX                    = 7,
		footprintZ                    = 7,
		iconType                      = "energysingu",
		idleAutoHeal                  = 5,
		idleTime                      = 1800,
		health                        = 6500,
		maxSlope                      = 18,
		minCloakDistance              = 150,
		noAutoFire                    = false,
		objectName                    = "fus.s3o",
		onoffable                     = false,
		script                        = "energysingu.lua",
		selfDestructAs                = "SINGULARITY",
		sightDistance                 = 375,
		useBuildingGroundDecal        = true,
		yardMap                       = "ooooooooooooooooooooooooooooooooooooooooooooooooo",
		featureDefs                   = {
			DEAD = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 7,
				footprintZ       = 7,
				object           = "fus_dead.s3o",
			},
			HEAP = {
				blocking         = false,
				footprintX       = 7,
				footprintZ       = 7,
				object           = "debris4x4a.s3o",
			},
		},
		weapons             = {
			{
				def                = "AI_HAX",
				onlyTargetCategory = "FIXEDWING LAND SINK TURRET SUB SHIP SWIM FLOAT GUNSHIP HOVER",
			},
		},
		weaponDefs = {
			AI_HAX = {
				name                    = "AI HAAAAAX",
				accuracy                = 0,
				areaOfEffect            = 32,
				avoidFriendly           = false,
				avoidFeature            = false,
				avoidGround             = true,
				craterBoost             = 0,
				craterMult              = 0,
				customParams            = {
					restrict_in_widgets = 1,
					bogus = 1,
				},
				damage                  = {
					default = 0.0,
				},
				fireTolerance           = 1820, -- 10 degrees
				impulseBoost            = 0,
				impulseFactor           = 0.2,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				myGravity				= 0.03,
				range                   = 1970,
				reloadtime              = 0.2,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 1600,
			},
			SINGULARITY = {
				areaOfEffect       = 1280,
				craterMult         = 1,
				edgeEffectiveness  = 0,
				customParams            = {
					singularity = "1",
					singu_radius = 1280,
					singu_lifespan = 300,
					singu_strength = 925,
					singu_finalstrength = 46250,
					singu_height = 200,
					singu_ceg = "black_hole_1280",
					singu_nodamageimmunity = "uwu~",
				},
				--explosionGenerator = "custom:grav_danger_spikes",
				impulseBoost       = 100,
				impulseFactor      = -10,
				name               = "Naked Singularity",
				soundHit           = "explosion/ex_ultra1",
				damage = {
					default = 2700,
				},
			},
		},
	} 
}
