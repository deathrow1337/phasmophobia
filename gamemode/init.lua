AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

Phasmophobia = Phasmophobia or {}
Phasmophobia.CFG = Phasmophobia.CFG or {}
Phasmophobia.GameStarted = false

function GM:PlayerSpawn(ply)
  ply:SetGravity(1)
  ply:SetMaxHealth(100)

  --if Phasmophobia.GameStarted then

    if not ply:GetNWBool("isGhost") then
      ply:SetPos(table.Random(Phasmophobia.CFG.Maps[game.GetMap()].spawn_positions))
      ply:SetRunSpeed(160)
      ply:SetWalkSpeed(100)
      ply:SetModel(table.Random(Phasmophobia.CFG.Models.ghosthunters))
      ply:Give("weapon_physgun", false)
      ply:Give("weapon_physcannon", false)
    elseif ply:GetNWBool("isGhost") then
      ply:SetPos(table.Random(Phasmophobia.CFG.Maps[game.GetMap()].ghost_spawn_positions))
    end

    if ply:GetNWBool("isGhost") then -- if player is ghost then

      local ply_ghostType = ply:GetNWString("GhostType")
      ply:SetModel(table.Random(Phasmophobia.CFG.Models.ghosts))
      ply:SetRunSpeed(Phasmophobia.CFG.Ghosts[ply_ghostType].runspeed)
      ply:SetWalkSpeed(Phasmophobia.CFG.Ghosts[ply_ghostType].walkspeed)

    end
  --end

end