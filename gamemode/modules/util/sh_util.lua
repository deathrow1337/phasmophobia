local pmeta = FindMetaTable("Player")

function pmeta:Notify(...)
  local args = {...}
  local msg = ""

    for _, v in ipairs(args) do
        msg = msg .. " " .. v
    end

    msg = "[Phasmophobia] " .. msg

  self:ChatPrint(msg)
end

function Notify(...)
  local args = {...}
  local msg = ""

    for _, v in ipairs(args) do
        msg = msg .. " " .. v
    end

    msg = "[Phasmophobia] " .. msg

  print(msg)
end


if CLIENT then
  concommand.Add("view", function()
    PrintTable(LocalPlayer():GetEyeTrace())
  end)
end