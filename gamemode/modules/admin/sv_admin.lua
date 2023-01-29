--
hook.Add('PlayerSay', 'AdminTable', function(sender,text)
	cmd = string.lower(text)
	if ( cmd == '/'..'menu' or cmd == "!"..'menu' ) then
		sender:ConCommand('adm')
		return ''
	end
end)