local function width(x)
  return x/1920*ScrW()
end
local function height(y)
  return y/1080*ScrH()
end

local function PlayerBox(frame)
  local childrens = frame:GetChildren()
  local position = {}
  local w, h

  if #childrens <= 0 then
    w = width(9)
    h = height(11)
  end
  if #childrens == 1 then
    w = width(9)
    h = height(277)
  end
  if #childrens == 2 then
    w = width(380)
    h = height(11)
  end
  if #childrens == 3 then
    w = width(380)
    h = height(277)
  end

  local playerBox = vgui.Create("DFrame", frame)
  playerBox:SetSize(width(267), height(171))
  playerBox:SetPos(w, h)

  local y = height(52)
  for i=1, 4 do
    local checkbox = vgui.Create("DCheckBox", playerBox)
    checkbox:SetPos(width(117), height(y))
    checkbox:SetSize(width(15), height(15))

    y = y + height(22)
  end
end

local function AdminMenu()
  local mainFrame = vgui.Create("DFrame")
  mainFrame:SetPos(width(610), height(140))
  mainFrame:SetSize(width(700), height(800))
  mainFrame:MakePopup()

  local mainBtn = vgui.Create("DButton", mainFrame)
  mainBtn:SetPos(width(150), height(603))
  mainBtn:SetSize(width(400), height(120))

  local plyrsBox = vgui.Create("DPanel", mainFrame)
  plyrsBox:SetPos(width(22), height(24))
  plyrsBox:SetSize(width(656), height(459))

  for i=1, 2 do
    PlayerBox(plyrsBox)
  end

end

concommand.Add("adminmenu", AdminMenu)