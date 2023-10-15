local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "[🎃]Residence Massacre",
   LoadingTitle = "KillerxHub",
   LoadingSubtitle = "by shiwase10",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = KillerxHub, -- Create a custom folder for your hub/game
      FileName = "KH"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local SAFE = Window:CreateTab("SAFE", 4483362458) -- Title, Image

local Button = SAFE:CreateButton({
   Name = "SAFE 1",
   Callback = function()
   local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
if Character then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-79.71, 21.27, -124.94)
end
   end,
})

local Button2 = SAFE:CreateButton({
    Name = "SAFE 2",
    Callback = function()
        local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        if Character then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.41, 25.29, -53.18)
        end
    end,
})

local Button3 = SAFE:CreateButton({
    Name = "SAFE 3",
    Callback = function()
        local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        if Character then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.27, 18.60, -87.79)
        end
    end,
})

local Button4 = SAFE:CreateButton({
    Name = "CAR",
    Callback = function()
        local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        if Character then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-65.42, 7.82, -65.88)
        end
    end,
})

local FastTPTab = Window:CreateTab("FAST TP", 4483362458)

local HomeButton = FastTPTab:CreateButton({
    Name = "Home",
    Callback = function()
        local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        if Character then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-34.18, 9.54, -47.09)
        end
    end,
})

local OxygenGeneratorButton = FastTPTab:CreateButton({
    Name = "Oxygen Generator",
    Callback = function()
        local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        if Character then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-79.69, 6.29, -127.54)
        end
    end,
})

local ElectricalGeneratorButton = FastTPTab:CreateButton({
    Name = "Electrical Generator",
    Callback = function()
        local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        if Character then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.48, 6.19, -95.05)
        end
    end,
})

local Floor2Button = FastTPTab:CreateButton({
    Name = "Floor 2",
    Callback = function()
        local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        if Character then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3.90, 25.29, -71.19)
        end
    end,
})

local ExtrasTab = Window:CreateTab("Extras", 4483362458) -- Substitua 1234567890 pelo ID da imagem desejada

local SpinButton = ExtrasTab:CreateButton({
    Name = "Noclip",
    Callback = function()
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

noclip()
    end,
})

local ESPButton = ExtrasTab:CreateButton({
    Name = "ESP",
    Callback = function()
        _G.FriendColor = Color3.fromRGB(0, 0, 255)
    _G.EnemyColor = Color3.fromRGB(255, 0, 0)
    _G.UseTeamColor = true

    --------------------------------------------------------------------
    local Holder = Instance.new("Folder", game.CoreGui)
    Holder.Name = "ESP"

    local Box = Instance.new("BoxHandleAdornment")
    Box.Name = "nilBox"
    Box.Size = Vector3.new(1, 2, 1)
    Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
    Box.Transparency = 0.7
    Box.ZIndex = 0
    Box.AlwaysOnTop = false
    Box.Visible = false

    local NameTag = Instance.new("BillboardGui")
    NameTag.Name = "nilNameTag"
    NameTag.Enabled = false
    NameTag.Size = UDim2.new(0, 200, 0, 50)
    NameTag.AlwaysOnTop = true
    NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
    local Tag = Instance.new("TextLabel", NameTag)
    Tag.Name = "Tag"
    Tag.BackgroundTransparency = 1
    Tag.Position = UDim2.new(0, -50, 0, 0)
    Tag.Size = UDim2.new(0, 300, 0, 20)
    Tag.TextSize = 15
    Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
    Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
    Tag.TextStrokeTransparency = 0.4
    Tag.Text = "nil"
    Tag.Font = Enum.Font.SourceSansBold
    Tag.TextScaled = false

    local LoadCharacter = function(v)
        repeat wait() until v.Character ~= nil
        v.Character:WaitForChild("Humanoid")
        local vHolder = Holder:FindFirstChild(v.Name)
        vHolder:ClearAllChildren()
        local b = Box:Clone()
        b.Name = v.Name .. "Box"
        b.Adornee = v.Character
        b.Parent = vHolder
        local t = NameTag:Clone()
        t.Name = v.Name .. "NameTag"
        t.Enabled = true
        t.Parent = vHolder
        t.Adornee = v.Character:WaitForChild("Head", 5)
        if not t.Adornee then
            return UnloadCharacter(v)
        end
        t.Tag.Text = v.Name
        b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
        t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
        local Update
        local UpdateNameTag = function()
            if not pcall(function()
                v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                local maxh = math.floor(v.Character.Humanoid.MaxHealth)
                local h = math.floor(v.Character.Humanoid.Health)
            end) then
                Update:Disconnect()
            end
        end
        UpdateNameTag()
        Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
    end

    local UnloadCharacter = function(v)
        local vHolder = Holder:FindFirstChild(v.Name)
        if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
            vHolder:ClearAllChildren()
        end
    end

    local LoadPlayer = function(v)
        local vHolder = Instance.new("Folder", Holder)
        vHolder.Name = v.Name
        v.CharacterAdded:Connect(function()
            pcall(LoadCharacter, v)
        end)
        v.CharacterRemoving:Connect(function()
            pcall(UnloadCharacter, v)
        end)
        v.Changed:Connect(function(prop)
            if prop == "TeamColor" then
                UnloadCharacter(v)
                wait()
                LoadCharacter(v)
            end
        end)
        LoadCharacter(v)
    end

    local UnloadPlayer = function(v)
        UnloadCharacter(v)
        local vHolder = Holder:FindFirstChild(v.Name)
        if vHolder then
            vHolder:Destroy()
        end
    end

    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        spawn(function() pcall(LoadPlayer, v) end)
    end

    game:GetService("Players").PlayerAdded:Connect(function(v)
        pcall(LoadPlayer, v)
    end)

    game:GetService("Players").PlayerRemoving:Connect(function(v)
        pcall(UnloadPlayer, v)
    end)

    game:GetService("Players").LocalPlayer.NameDisplayDistance = 0

    if _G.Reantheajfdfjdgs then
        return
    end

    _G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"

    local players = game:GetService("Players")
    local plr = players.LocalPlayer

    function esp(target, color)
        if target.Character then
            if not target.Character:FindFirstChild("GetReal") then
                local highlight = Instance.new("Highlight")
                highlight.RobloxLocked = true
                highlight.Name = "GetReal"
                highlight.Adornee = target.Character
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = color
                highlight.Parent = target.Character
            else
                target.Character.GetReal.FillColor = color
            end
        end
    end

    while task.wait() do
        for i, v in pairs(players:GetPlayers()) do
            if v ~= plr then
                esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
            end
        end
    end
    end,
})

local GhostButton = ExtrasTab:CreateButton({
    Name = "Ghost",
    Callback = function()
        local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        if Character then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18.40, 4.20, 31.50)
        end
    end,
})

local DestroyButton = ExtrasTab:CreateButton({
   Name = "Destroy GUI",
   Callback = function()
   Rayfield:Destroy()
			print("sucess")
   end,
})

local KickButton = ExtrasTab:CreateButton({
   Name = "Kick YourSelf",
   Callback = function()
   -- Capture o jogador que está executando o script
local jogadorAlvo = game.Players.LocalPlayer

-- Verifique se o jogador alvo existe
if jogadorAlvo then
    -- Expulse o jogador
    jogadorAlvo:Kick("LOL")
else
    -- Se o jogador não for encontrado, exiba uma mensagem de erro
    print("Jogador não encontrado.")
end

   end,
})

local Button = ExtrasTab:CreateButton({
   Name = "Teleport To Monster",
   Callback = function()
   local player = game.Players.LocalPlayer
local workspace = game:GetService("Workspace")
local mutant = workspace:FindFirstChild("Mutant")

if mutant and player.Character then
    local humanoid = player.Character:FindFirstChild("Humanoid")

    if humanoid then
        humanoid.Parent = mutant -- Define o Humanoid do jogador como filho do modelo "Mutant"
    end
end
   end,
})

