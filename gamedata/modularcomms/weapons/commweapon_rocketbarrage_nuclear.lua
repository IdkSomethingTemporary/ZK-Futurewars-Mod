local name = "commweapon_rocketbarrage_nuclear"
local weaponDef = {
	name                    = [[HLRM Barrage]],
	areaOfEffect            = 160,
	cegTag                  = [[rocket_trail_bar_flameboosted]],
	craterBoost             = 0,
	craterMult              = 0,
	burst					= 10,
	burstrate				= 0.1,
	customParams            = {
		is_unit_weapon = 1,
		slot = [[5]],
		muzzleEffectShot = [[custom:rocket_trail_bar_flameboosted]],

		light_camera_height = 2200,
		light_color = [[0.95 0.65 0.30]],
		light_radius = 280,
		reaim_time = 1,
		cruiserandomradius = 500,
		cruisealt = 350,
		airlaunched = 1,
		cruisedist = 280,
		cruisetracking = 1,
		cruise_nolock = 1,
		reveal_unit = 10,
	},

	damage                  = {
		default = 800.1,
	},

	edgeEffectiveness       = 0.1,
	explosionGenerator      = [[custom:slam]],
	fireStarter             = 180,
	flightTime              = 30,
	impulseBoost            = 0,
	impulseFactor           = 0,
	interceptedByShieldType = 2,
	model                   = [[wep_b_fabby.s3o]],
	range                   = 800,
	reloadtime              = 30,
	smokeTrail              = false,
	soundHit                = [[explosion/mini_nuke]],
	soundHitVolume          = 5,
	soundStart              = [[weapon/missile/heavy_missile_fire]],
	soundStartVolume        = 7,
	startVelocity           = 180,
	tracks                  = true,
	turnrate				= 38000,
	trajectoryHeight        = 1.5,
	turret                  = true,
	weaponAcceleration      = 200,
	dance					= 100,
	weaponType              = [[MissileLauncher]],
	weaponVelocity          = 950,
}

return name, weaponDef
