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

local PANEL = {}

function PaintButton( self, w, h )
  if(self.Hovered) then
    draw.RoundedBox( 3, 0, 0, w, h, Color(70, 54, 102, 255) )
  else
    draw.RoundedBox( 3, 0, 0, w, h, Color(45, 45, 45, 255) )
  end
end

function CloseButton( self, w, h )
  if(self.Hovered) then
    self:SetTextColor(Color(255,30,0))
    draw.RoundedBox( 3, 0, 0, w, h, Color(200, 200, 200, 0) )
  else
    self:SetTextColor(Color(255, 255, 255))
    draw.RoundedBox( 3, 0, 0, w, h, Color(45, 45, 45, 0) )
  end
end

function PanelPaint( self, w, h )
  draw.RoundedBoxEx( 10, 0, 0, w, h, Color(30, 30, 30, 200), true, false, true, false )
end

function PANEL:Init()
  self:SetSize(0,0)
  local isAnimating = true
  self:SizeTo(700, 800, 1.5, 0, .1, function()
    isAnimating = false
  end)
  self.Think = function()
    if isAnimating then
      self:Center()
    end
  end

  self:Center()
  self:MakePopup()
  self:SetTitle('')
  self:ShowCloseButton(false)
  self:SetDraggable(false)
  input.SetCursorPos( ScrW() * 0.51, ScrH() * 0.23 )

  self.Button = self:Add('DButton')
  self.Button:SetSize(15,15)
  self.Button:SetPos(width(680), height(5))
  self.Button:SetText('X')
  self.Button:SetFont('Default')
  self.Button:SetTextColor(Color(255, 255, 255))
  self.Button.Paint = CloseButton
  self.Button.DoClick = function()
    local isAnimating = true
    self:SizeTo(0, 0, 1.5, 0, .1, function()
        isAnimating = false
    end)
    self.Think = function()
      if isAnimating then
        self:Center()
      end
    end
    timer.Simple( 0.9, function()
    self:Close()
    end)
  end

  self.Panel = self:Add('DPanel')
  self.Panel:SetPos(0,0)
  self.Panel:SetSize(200,800)
  self.Panel.Paint = PanelPaint

  self.scrol = self.Panel:Add('DScrollPanel')
  self.scrol:Dock(FILL)

  self.DButton = self.scrol:Add('DButton')
  self.DButton:Dock(TOP)
  self.DButton:DockMargin( 0, 5, 0, 5 )
  self.DButton.Paint = PaintButton
end

function PANEL:Paint( w, h )
  draw.RoundedBox( 10, 0, 0, w, h, Color(50, 50, 50, 255) )
end

vgui.Register( "AdmTable", PANEL, "DFrame" )

concommand.Add("adm", function(ply, cmd, args)
  pnl = vgui.Create('AdmTable')
end)