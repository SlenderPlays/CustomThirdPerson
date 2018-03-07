print( "CTP Initiated!", "Yay!" )

rotation = 0

concommand.Add( "ctp_increment", function(  ply, cmd, args, argsStr )
	
	rotation = rotation + tonumber(argsStr)
	RunConsoleCommand("simple_thirdperson_cam_yaw",rotation)
end )

concommand.Add( "ctp_reset", function(  ply, cmd, args, argsStr )
	rotation = 0
	RunConsoleCommand("simple_thirdperson_cam_yaw",0)
	--chat.AddText("no")
end )