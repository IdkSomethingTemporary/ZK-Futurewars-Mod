return { dronecon = {
  unitname            = [[dronecon]],
  name                = [[Responder]],
  description         = [[Assist Drone]],
  acceleration        = 0.3,
  airHoverFactor      = 4,
  brakeRate           = 0.24,
  buildCostMetal      = 50,
  builder             = true,
  canAssist           = false,
  buildPic            = [[dronecon.png]],
  canBeAssisted       = false,
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canReclaim          = false,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[GUNSHIP DRONE]],
  collide             = false,
  cruiseAlt           = 95,
  explodeAs           = [[TINY_BUILDINGEX]],
  floater             = true,
  footprintX          = 2,
  footprintZ          = 2,
  hoverAttack         = true,
  iconType            = [[gunship]],
  idleAutoHeal        = 10,
  idleTime            = 300,
  maxDamage           = 200,
  maxVelocity         = 5.5,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE SUB]],
  objectName          = [[condrone.dae]],
  reclaimable         = false,
  repairable          = false, -- mostly not to waste constructor attention on area-repair; has regen anyway
  script              = [[dronecon.lua]],
  selfDestructAs      = [[TINY_BUILDINGEX]],
  
  customParams        = {
    bait_level_target      = 2,
    is_drone = 1,
  },
  
  
  sfxtypes            = {

    explosiongenerators = {
    },

  },
  sightDistance       = 500,
  turnRate            = 792,
  workerTime          = 30,
  upright             = true,

  weapons             = {

    {
      def                = [[SHIELD]],
    },

  },


  weaponDefs          = {

    SHIELD      = {
      name                    = [[Energy Shield]],

      damage                  = {
        default = 10,
      },

      exteriorShield          = true,
      shieldAlpha             = 0.2,
      shieldBadColor          = [[1 0.1 0.1 1]],
      shieldGoodColor         = [[0.1 0.1 1 1]],
      shieldInterceptType     = 3,
      shieldPower             = 2000,
      shieldPowerRegen        = 20,
      shieldPowerRegenEnergy  = 0,
      shieldRadius            = 150,
      shieldRepulser          = false,
      shieldStartingPower     = 2000,
      smartShield             = true,
      visibleShield           = false,
      visibleShieldRepulse    = false,
      weaponType              = [[Shield]],
    },
  },

} }
