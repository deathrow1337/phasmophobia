Phasmophobia.CFG.Ghosts = {}

local lang_cfg = Phasmophobia.CFG.Lang

local curr_lang = "ru"

local lang_config = Phasmophobia.CFG.Lang[curr_lang]

Phasmophobia.CFG.Ghosts.Shade = {
  name = lang_config.shade,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    EMF_LVL_5 = true,
    GHOST_ORBS = false,
    GHOST_WRITING = true,
    FREEZING = false,
    SPIRIT_BOX = true,
    FINGER_PRINTS = false,
    PROJECTOR = false
  },
}

Phasmophobia.CFG.Ghosts.Phantom = {
  name = lang_config.phantom,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    EMF_LVL_5 = false,
    GHOST_ORBS = false,
    GHOST_WRITING = false,
    FREEZING = false,
    SPIRIT_BOX = true,
    FINGER_PRINTS = true,
    PROJECTOR = true
  },
}

Phasmophobia.CFG.Ghosts.Banshee = {
  name = lang_config.banshee,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = false,
    EMF_LVL_5 = false,
    GHOST_ORBS = true,
    SPIRIT_BOX = false,
    GHOST_WRITING = false,
    FINGER_PRINTS = true,
    PROJECTOR = true
  },
}

Phasmophobia.CFG.Ghosts.Mare = {
  name = lang_config.mare,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = false,
    EMF_LVL_5 = false,
    GHOST_ORBS = true,
    SPIRIT_BOX = true,
    GHOST_WRITING = true,
    FINGER_PRINTS = false,
    PROJECTOR = false
  },
}

Phasmophobia.CFG.Ghosts.Yurei = {
  name = lang_config.yurei,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = true,
    EMF_LVL_5 = false,
    GHOST_ORBS = true,
    SPIRIT_BOX = false,
    GHOST_WRITING = false,
    FINGER_PRINTS = false,
    PROJECTOR = true
  },
}

Phasmophobia.CFG.Ghosts.Demon = {
  name = lang_config.demon,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = true,
    EMF_LVL_5 = false,
    GHOST_ORBS = false,
    SPIRIT_BOX = false,
    GHOST_WRITING = true,
    FINGER_PRINTS = true,
    PROJECTOR = false
  },
}

Phasmophobia.CFG.Ghosts.Wraith = {
  name = lang_config.wraith,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = false,
    EMF_LVL_5 = true,
    GHOST_ORBS = false,
    SPIRIT_BOX = true,
    GHOST_WRITING = false,
    FINGER_PRINTS = false,
    PROJECTOR = true
  },
}

Phasmophobia.CFG.Ghosts.Jinn = {
  name = lang_config.jinn,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = true,
    EMF_LVL_5 = true,
    GHOST_ORBS = false,
    SPIRIT_BOX = false,
    GHOST_WRITING = false,
    FINGER_PRINTS = true,
    PROJECTOR = false
  },
}

Phasmophobia.CFG.Ghosts.Oni = {
  name = lang_config.oni,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = true,
    EMF_LVL_5 = true,
    GHOST_ORBS = false,
    SPIRIT_BOX = false,
    GHOST_WRITING = false,
    FINGER_PRINTS = false,
    PROJECTOR = true
  },
}

Phasmophobia.CFG.Ghosts.Revenant = {
  name = lang_config.revenant,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = true,
    EMF_LVL_5 = false,
    GHOST_ORBS = true,
    SPIRIT_BOX = false,
    GHOST_WRITING = true,
    FINGER_PRINTS = false,
    PROJECTOR = false
  },
}

Phasmophobia.CFG.Ghosts.Poltergeist = {
  name = lang_config.poltergeist,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = false,
    EMF_LVL_5 = false,
    GHOST_ORBS = false,
    SPIRIT_BOX = true,
    GHOST_WRITING = true,
    FINGER_PRINTS = true,
    PROJECTOR = false
  },
}

Phasmophobia.CFG.Ghosts.Spirit = {
  name = lang_config.spirit,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = false,
    EMF_LVL_5 = true,
    GHOST_ORBS = false,
    SPIRIT_BOX = true,
    GHOST_WRITING = true,
    FINGER_PRINTS = false,
    PROJECTOR = false
  },
}

Phasmophobia.CFG.Ghosts.Hantu = {
  name = lang_config.hantu,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = true,
    EMF_LVL_5 = false,
    GHOST_ORBS = true,
    SPIRIT_BOX = false,
    GHOST_WRITING = false,
    FINGER_PRINTS = true,
    PROJECTOR = false
  },
}

Phasmophobia.CFG.Ghosts.Yokai = {
  name = lang_config.yokai,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = false,
    EMF_LVL_5 = false,
    GHOST_ORBS = true,
    SPIRIT_BOX = true,
    GHOST_WRITING = false,
    FINGER_PRINTS = false,
    PROJECTOR = true
  },
}

Phasmophobia.CFG.Ghosts.Goryo = {
  name = lang_config.goryo,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = false,
    EMF_LVL_5 = true,
    GHOST_ORBS = false,
    SPIRIT_BOX = false,
    GHOST_WRITING = false,
    FINGER_PRINTS = true,
    PROJECTOR = true
  },
}

Phasmophobia.CFG.Ghosts.Myling = {
  name = lang_config.myling,
  activity_cooldown = {25, 60},
  hunt_time = {20, 60},
  runspeed = 350,
  walkspeed = 70,
  evidences = {
    FREEZING = false,
    EMF_LVL_5 = true,
    GHOST_ORBS = false,
    SPIRIT_BOX = false,
    GHOST_WRITING = true,
    FINGER_PRINTS = true,
    PROJECTOR = false
  },
}