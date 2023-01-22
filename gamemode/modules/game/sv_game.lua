Phasmophobia = Phasmophobia or {}

Phasmophobia.Game = {}
Phasmophobia.Game.spawn_positions = {Vector(0,0,0)}

util.AddNetworkString("StartGame")
util.AddNetworkString("GameStarted")


if Phasmophobia.CFG.RestrictMovingUntilGameStarted then
  timer.Create("PhasmophobiaRestrictMovingUntilGameStart", 3, 0, function()
    if not Phasmophobia.GameStarted then
      for _, ply in ipairs(player.GetAll()) do
        if ply:EntIndex() ~= 1 then
          ply:SetMoveType(MOVETYPE_NONE)
        end
      end
    else
      timer.Remove("PhasmophobiaRestrictMovingUntilGameStart")
    end
  end)

  timer.Start("PhasmophobiaRestrictMovingUntilGameStart")
end


function StartGame()
  --if Phasmophobia.GameStarted then return end

  Phasmophobia.GameStarted = true

  
  
  for _, v in ipairs(player.GetAll()) do
    v:SetNWBool("isGhost", false)
    v:Spawn()
  end


  local ghost_player = table.Random(player.GetAll())

  print("Player that choosen to be a ghost: ", ghost_player)
  
  ghost_player:SetNWBool("isGhost", true)
  ghost_player:SetNWString("GhostType", table.Random(Phasmophobia.CFG.Lang.en))

  ghost_player:Spawn()

  timer.Simple(1, function()
  net.Start("GameStarted")
  net.Broadcast()
  end)
end

function EndGame()
  Phasmophobia.GameStarted = false

  for _, v in ipairs(player.GetAll()) do
    v:SetNWBool("isGhost", false)
    v:Spawn()
  end

end




net.Receive("StartGame", StartGame)