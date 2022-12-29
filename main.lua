local functionPassed, workspace = xpcall(
	function() 
		Instance.new("Frame"):TweenPosition(UDim2.fromOffset())
	end, 
	function(whereIsWorkspace:string) 
		return table.pack(next(getfenv()))[2]:FindFirstAncestorOfClass("DataModel")[whereIsWorkspace:split("\32")[tostring(game:GetService("Players")):len()]]
	end)

warn(workspace)
