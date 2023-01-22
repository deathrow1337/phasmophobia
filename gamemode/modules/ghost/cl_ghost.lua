PhasmClient = PhasmClient or {}

local distancePrefab = 388
local distanceTemperature = 20 -- The temperature on distance prefab
local TemperatureMultiplier = 1.2 -- Temperature multiplier for result

local function FreezingEvidence()     

  local delta = LocalPlayer():GetPos():Distance(PhasmClient.GhostEntity:GetPos())
  
  local freezingResult =  distanceTemperature + (delta - distancePrefab) / distancePrefab * (TemperatureMultiplier * distanceTemperature)
  
  freezingResult = math.Round(math.Clamp(freezingResult, -6, 21 - FrameTime()*2) - FrameTime()*2, 1)

  LocalPlayer():ChatPrint(freezingResult)

end

local function LowTemperature()
        
    local delta = LocalPlayer():GetPos():Distance(PhasmClient.GhostEntity:GetPos())
    
    local freezingResult =  24 + (delta - 300) / 300 * (24)
    
    freezingResult = math.Round(math.Clamp(freezingResult, -6, 21 - FrameTime()*2) - FrameTime()*2, 1)

    if freezingResult <= 0 then
      freezingResult = freezingResult+2
    end

    LocalPlayer():ChatPrint(freezingResult)

end


function GhostGetter()
  if Phasmophobia.GameStarted then
    for _, v in ipairs(player.GetAll()) do
      if v:GetNWBool("isGhost") then
        PhasmClient.GhostEntity = v
        PhasmClient.GhostEvidences = Phasmophobia.CFG.Ghosts[v:GetNWString("GhostType")].evidences
        PrintTable(PhasmClient)

        timer.Start("FreezingEvidence")
      end
    end
  end
end



timer.Create("FreezingEvidence", 2.2, 0, function()
  if Phasmophobia.GameStarted then
    if PhasmClient.GhostEntity then
      if PhasmClient.GhostEvidences then
        if PhasmClient.GhostEvidences.FREEZING then
          FreezingEvidence()
        else
          LowTemperature()
        end
      end
    end
  end
end)





