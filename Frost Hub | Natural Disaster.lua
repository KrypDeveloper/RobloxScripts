local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Frost Hub | Natural Disaster", IntroEnabled = true, IntroText = "Hello World", HidePremium = true, SaveConfig = true, ConfigFolder = "Frost"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://7733960981",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Auto Farm"
})

OrionLib:MakeNotification({ 	Name = "Frost Hub", 	Content = "Frost Hub is ready for work\n hello ".. game.Players.LocalPlayer.Name, 	Image = "rbxassetid://4483345998", 	Time = 5 })

Tab:AddToggle({
	Name = "Auto Farm Win",
	Default = false,
	Save = true,
	Flag = "auto_farm_natural",
	Callback = function(Valoro)
		while Valoro == true do
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-303, 194, 369))
end
wait(1)
	end    
})

Tab:AddToggle({
	Name = "Auto Rejoin(afk kick bypass)",
	Default = true,
	Callback = function(afkcount)
		while afkcount == true do
		wait(300)
		if afkcount == true then
		game:GetService("TeleportService"):Teleport(game.PlaceId)
		end
		end
	end    
})

local Tab = Window:MakeTab({ 	Name = "Misc", 	Icon = "rbxassetid://7743876754", 	PremiumOnly = false })

Tab:AddButton({
	Name = "Discord",
	Callback = function()
      		setclipboard("https://discord.com/invite/adfEfaqPrp")
      OrionLib:MakeNotification({ 	Name = "Frost Hub", 	Content = "Check you Clipboard", 	Image = "rbxassetid://4483345998", 	Time = 5 })
  	end    
})

Tab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
  	end    
})

Tab:AddButton({
	Name = "Close Gui",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})

OrionLib:Init()
