
--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Part0 = Instance.new("Part")
Part0.Name = "GhostESP"
Part0.Parent = mas
Part0.CFrame = CFrame.new(33.9500008, 3, -3.0539999, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part0.Position = Vector3.new(33.95000076293945, 3, -3.053999900817871)
Part0.Size = Vector3.new(1.2000000476837158, 1.2000000476837158, 1.2000000476837158)
Part0.Anchored = true
Part0.BottomSurface = Enum.SurfaceType.Smooth
Part0.CanCollide = false
Part0.TopSurface = Enum.SurfaceType.Smooth
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end

game["Run Service"].Heartbeat:Connect(function()
	local Ghost
	if game.Workspace:FindFirstChild("Ghost1") then
		Ghost = game.Workspace:FindFirstChild("Ghost1")
	else
		if game.Workspace:FindFirstChild("Ghost2") then
			Ghost = game.Workspace:FindFirstChild("Ghost2")
		else
			if game.Workspace:FindFirstChild("Ghost3") then
				Ghost = game.Workspace:FindFirstChild("Ghost3")
			else
				if game.Workspace:FindFirstChild("Ghost4") then
					Ghost = game.Workspace:FindFirstChild("Ghost4")
				else
					error("cannot find ghost! please use dex and look for Ghost,Number so like Ghost2 or Ghost1 and Rename it to Ghost1 And Press the Button again.")
				end
			end
		end
	end
	Part0.Position = Ghost.HumanoidRootPart.Position
end)
