-- SomeThing
surface.CreateFont("pm_bg_test", {
  font = "Arial",
  size = 35,
  weight = 800,
  extended = true,
  antialias = true
})

local errorMat = Material("error")
local WebImageCache = {}
if !file.IsDir('dudework', 'DATA') then
    file.CreateDir('dudework')
end
function http.DownloadMaterial(url, path, callback)
    if WebImageCache[url] then return callback(WebImageCache[url]) end

    local data_path = "data/dudework/".. path
    if file.Exists('dudework/'..path, "DATA") then
        WebImageCache[url] = Material(data_path, "smooth", "noclamp")
        callback(WebImageCache[url])
    else
        http.Fetch(url, function(img)
            if img == nil or string.find(img, "<!DOCTYPE HTML>", 1, true) then return callback(errorMat) end
            
            file.Write('dudework/'..path, img)
            WebImageCache[url] = Material(data_path, "smooth", "noclamp")
            callback(WebImageCache[url])
        end, function()
            callback(errorMat)
        end)
    end
end
local scrw, scrh = ScrW(), ScrH()
http.DownloadMaterial("https://i.playground.ru/p/4FlDJ6M4UNHi-NJfLc4_kw.jpeg","phasmophobia_background2.png", function(t)
  phasmophobia_background = t
end)




hook.Add("HUDPaint", "PhasmophobiaGameChecker", function()
  if not Phasmophobia.GameStarted && LocalPlayer():EntIndex() ~= 1 then
    surface.SetMaterial(phasmophobia_background) 
    surface.SetDrawColor(255,255,255)
    surface.DrawTexturedRect(0,0,scrw+2,scrh+2)

    draw.SimpleText("Wait until the host starts the game...", "pm_bg_test", scrw/2,scrh*.6,color_white,TEXT_ALIGN_CENTER,TEXT_ALIGN_BOTTOM)
    draw.SimpleText("Player count: ".. player.GetCount(), "pm_bg_test", scrw/2,scrh*.717,color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM)
  end
end)

concommand.Add("StartGame", function()
  net.Start("StartGame")
  net.SendToServer()
end)

net.Receive("GameStarted", function()
  LocalPlayer():Notify("GameStarted received!")
  Phasmophobia.GameStarted = true
  GhostGetter()
end)