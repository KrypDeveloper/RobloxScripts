---40.89, 23.80, -76.23
--[[
	Patched by: shiwase10
]]
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("PATCHED BY shiawase10", "RJTheme3")
local Tab = Window:NewTab("SafeScript")
local Section = Tab:NewSection("Safe")

Section:NewButton("Safe", "Tp To safe place", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-79.71, 21.27, -124.94)
end
end)

Section:NewButton("Safe 2", "Tp To safe place 2", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.41, 25.29, -53.18)
end
end)

Section:NewButton("Safe 3", "Tp To safe place 3", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.27, 18.60, -87.79)
end
end)

Section:NewButton("Noclip", "Noclip", function()
local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()
end)


local Tab = Window:NewTab("FastTp")
local Section = Tab:NewSection("Teleport")

Section:NewButton("Home", "Teleport to Home", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-34.18, 9.54, -47.09)
end
end)

Section:NewButton("Oxygen Generator", "Teleport to Oxygen Generator", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-79.69, 6.29, -127.54)
end
end)

Section:NewButton("Electrical Generator", "Teleport to Electrical Generator", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.48, 6.19, -95.05)
end
end)

Section:NewButton("Floor 2", "Teleport to Floor 2", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3.90, 25.29, -71.19)
end
end)

Section:NewButton("Ghost", "Teleport to Ghost", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18.40, 4.20, 31.50)
end
end)


local Tab = Window:NewTab("Essential")
local Section = Tab:NewSection("Essential Locals")

Section:NewButton("Radio", "Teleport to Radio", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-33.31, 7.80, -58.15)
end
end)

Section:NewButton("Bed", "Cameras And Skip Day", function()
local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-42.47, 23.80, -74)
end
end)
