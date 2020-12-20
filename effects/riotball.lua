return {
	["riotball"] = {
		usedefaultexplosions = false,
		groundflash = {
			alwaysvisible      = false,
			circlealpha        = 0.2,
			circlegrowth       = 13.2,
			flashalpha         = 0.2,
			flashsize          = 500,
			ttl                = 24,
			color = {
				[1]  = 0.3,
				[2]  = 0,
				[3]  = 0.4,
			},
		},
		sphere = {
			air                = true,
			class              = [[CSpherePartSpawner]],
			count              = 1,
			ground             = true,
			water              = true,
			underwater         = true,
			properties = {
				alpha              = 0.6,
				color              = [[0.3,0,0.4]],
				expansionspeed     = 13.2,
				ttl                = 20,
			},
		},
		muzzleflash = {
			air                = true,
			class              = [[CSimpleParticleSystem]],
			count              = 1,
			ground             = true,
			water              = true,
			underwater         = true,
			properties = {
				colormap           = [[1 0.7 0.2 0.01    1 0.7 0.2 0.01    0 0 0 0.01]],
				directional        = true,
				emitrot            = 0,
				emitrotspread      = 0,
				emitvector         = [[dir]],
				gravity            = [[0, 0, 0]],
				numparticles       = 1,
				particlelife       = 90,
				particlelifespread = 0,
				particlesize       = 0,
				particlespeed      = 0,
				particlespeedspread = 0,
				pos                = [[0, 0, 0]],
				sizegrowth         = 0,
				sizemod            = 0,
				texture            = [[plasma]],
			},
		},
	},
	["riotball_small"] = {
		usedefaultexplosions = false,
		groundflash = {
			alwaysvisible      = true,
			circlealpha        = 0.4,
			circlegrowth       = 7,
			flashalpha         = 0.5,
			flashsize          = 60,
			ttl                = 12,
			color = {
				[1]  = 1,
				[2]  = 0,
				[3]  = 1,
			},
		},
		sphere = {
			air                = true,
			class              = [[CSpherePartSpawner]],
			count              = 1,
			ground             = true,
			water              = true,
			underwater         = true,
			properties = {
				alpha              = 0.5,
				color              = [[1,0,1]],
				expansionspeed     = 6,
				ttl                = 8,
			},
		},
	},
	["riotball_dark"] = {
		usedefaultexplosions = false,
		groundflash = {
			alwaysvisible      = true,
			circlealpha        = 0.4,
			circlegrowth       = 7,
			flashalpha         = 0.2,
			flashsize          = 300,
			ttl                = 45,
			color = {
				[1]  = 0.15,
				[2]  = 0,
				[3]  = 0.2,
			},
		},
		sphere = {
			air                = true,
			class              = [[CSpherePartSpawner]],
			count              = 1,
			ground             = true,
			water              = true,
			underwater         = true,
			properties = {
				alpha              = 0.6,
				color              = [[0.15,0,0.2]],
				expansionspeed     = 3,
				ttl                = 150,
			},
		},
		ring1 = {
			air                = true,
			class              = [[CBitmapMuzzleFlame]],
			ground             = true,
			water              = true,
			underwater         = true,
			properties = {
				colormap           = [[0.3 0 0.4 .1   .15 0 0.2 .1   0 0 0 0]],
				dir                = [[-1 r1, 1, -1 r1]],
				frontoffset        = 0,
				fronttexture       = [[shockwave]],
				length             = 1,
				pos                = [[0, 0, 0]],
				sidetexture        = [[null]],
				size               = 1,
				sizegrowth         = 175,
				ttl                = 18,
			},
		},
	},
	["riotballplus"] = {
		usedefaultexplosions = false,
		groundflash = {
		alwaysvisible      = true,
		circlealpha        = 0.4,
		circlegrowth       = 7,
		flashalpha         = 0.5,
		flashsize          = 256,
		ttl                = 45,
		color = {
			[1]  = 0,
			[2]  = 1,
			[3]  = 1,
		},
		},
		sphere = {
			air                = true,
			class              = [[CSpherePartSpawner]],
			count              = 1,
			ground             = true,
			water              = true,
			underwater         = true,
			properties = {
				alpha              = 0.5,
				color              = [[0,1,1]],
				expansionspeed     = 6,
				ttl                = 32,
			},
		},
	},
	["riotballplus2_purple"] = {
		usedefaultexplosions = false,
		groundflash = {
			alwaysvisible      = true,
			circlealpha        = 0.4,
			circlegrowth       = 7,
			flashalpha         = 0.5,
			flashsize          = 320,
			ttl                = 64,
			color = {
				[1]  = 1,
				[2]  = 0,
				[3]  = 1,
			},
		},
		sphere = {
			air                = true,
			class              = [[CSpherePartSpawner]],
			count              = 1,
			ground             = true,
			water              = true,
			underwater         = true,
			properties = {
				alpha              = 0.5,
				color              = [[1,0,1]],
				expansionspeed     = 6,
				ttl                = 45,
			},
		},
	},
	["riotballplus2_purple_limpet"] = {
		usedefaultexplosions = false,
		groundflash = {
			circlealpha        = 1,
			circlegrowth       = 12,
			flashalpha         = 2.15,
			flashsize          = 68,
			ttl                = 6,
			color = {
				[1]  = 1,
				[2]  = 0.89999997615814,
				[3]  = 0.60000002384186,
			},
		},
		sphere = {
			air                = true,
			class              = [[CSpherePartSpawner]],
			count              = 1,
			ground             = true,
			water              = true,
			underwater 		 = true,
			properties = {
				alpha              = 0.5,
				color              = [[1,0,1]],
				expansionspeed     = 12,
				ttl                = 22,
			},
		},
	},
	["riotballplus2_purple_small"] = {
		usedefaultexplosions = false,
		groundflash = {
			alwaysvisible      = true,
			circlealpha        = 0.4,
			circlegrowth       = 7,
			flashalpha         = 0.5,
			flashsize          = 60,
			ttl                = 64,
			color = {
				[1]  = 1,
				[2]  = 0,
				[3]  = 1,
			},
		},
		sphere = {
			air                = true,
			class              = [[CSpherePartSpawner]],
			count              = 1,
			ground             = true,
			water              = true,
			underwater 		 = true,
			properties = {
				alpha              = 0.5,
				color              = [[1,0,1]],
				expansionspeed     = 12,
				ttl                = 22,
			},
		},
	},
	["riotballgrav"] = {
		usedefaultexplosions = false,
		groundflash = {
			  air = true,
			  ground = true,
			  water = true,
			  underwater = true,
			  unit = true,
			  alwaysvisible      = true,
			  circlealpha        = 0.4,
			  circlegrowth       = 7,
			  flashalpha         = 0.5,
			  flashsize          = 320,
			  ttl                = 64,
			  color = {
				[1]  = 0.2,
				[2]  = 0.3,
				[3]  = 0.8,
			},
		},
		ring1 = {
			air                = true,
			class              = [[CBitmapMuzzleFlame]],
			ground             = true,
			water              = true,
			underwater         = true,
			count              = 5,
			properties = {
				colormap           = [[0.1 0.15 0.4 .1   .05 0.075 0.2 .1   0 0 0 0]],
				dir                = [[-1 r2, 1, -1 r2]],
				frontoffset        = 0,
				fronttexture       = [[shockwave]],
				length             = 1,
				pos                = [[0, 0, 0]],
				sidetexture        = [[null]],
				size               = 1,
				sizegrowth         = 260,
				ttl                = 60,
			},
		},
	},
}

