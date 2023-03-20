
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
Part0 = Instance.new("Part")
Part0.Name = "ESPpart"
Part0.Parent = workspace
Part0.CFrame = CFrame.new(33.9500008, 3, -3.0539999, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part0.Position = Vector3.new(33.95000076293945, 3, -3.053999900817871)
Part0.Size = Vector3.new(1.2000000476837158, 1.2000000476837158, 1.2000000476837158)
Part0.Anchored = true
Part0.BottomSurface = Enum.SurfaceType.Smooth
Part0.CanCollide = false
Part0.TopSurface = Enum.SurfaceType.Smooth
local ESP = Instance.new("Highlight")
ESP.OutlineTransparency = 1
ESP.FillTransparency = 0
ESP.FillColor = Color3.fromRGB(136, 45, 45)
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end

local Ghost
for i,v in pairs(game.Workspace:GetDescendants()) do
	if string.match(v.Name, "Ghost") or string.match(v.Name, "ghost") then
		v.Name = "haha"
	end
end
wait(0.1)
Ghost = game.Workspace.haha
game["Run Service"].Heartbeat:Connect(function()
	Part0.Position = Ghost.HumanoidRootPart.Position
end)
