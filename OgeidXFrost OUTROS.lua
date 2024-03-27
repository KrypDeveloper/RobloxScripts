local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/MAXIMUS-LIBRARY/main/Fluent/Source.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "FrostXOgeid | ".. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    SubTitle = "Quick Hacks por Frost Team",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({Title="Main",Icon="rbxassetid://16452461868"}),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Hacks=Tabs.Main:AddDropdown("MultiDropdown", {
    Title = "Hacks",
    Description = "Varias Hacks uteis",
    Values = {"Nenhum", "Speed Hack", "Jump Hack", "Invisible Hack", "Noclip"},
    Multi = false,
    Default = {"Nenhum"},
})

local default = {
    Speed=game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed,
    Jump=game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower
}

Hacks:OnChanged(function(Value)
    local char=game.Players.LocalPlayer.Character;humanoid=char:FindFirstChildOfClass("Humanoid") or char:FindFirstChild("Humanoid")
  if Value == "Speed Hack" then
    if humanoid.WalkSpeed==150 then
        humanoid.WalkSpeed=default.Speed
    else
        humanoid.WalkSpeed=150
    end
  

elseif Value == "Jump Hack" then
    if humanoid.JumpPower == 300 then
        humanoid.JumpPower = default.Jump
    else
        humanoid.JumpPower = 300
    end

elseif Value == "Invisible Hack" then
    for _,obj in pairs(character:GetDescendants()) do
       if obj:IsA("Part") or obj:IsA("MeshPart") then
        obj.Transparency = 1
        print("O Objeto: ".. obj.. " Ficou invisivel Visualmente")
       end
    end
elseif Value == "Noclip" then
    for _,obj in pairs(character:GetDescendants()) do
        if obj:IsA("Part") or obj:IsA("MeshPart") then
        
    if obj.CanCollide == false then
        obj.CanCollide = true
    else
        obj.CanCollide = false
    end
    end
end
end
end)

function import(ferramenta)
  if ferramenta == "IY" then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  elseif ferramenta == "Owl" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
  elseif ferramenta == "Dex" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/DarkDEX-V5/main/DarkDEX-V5"))()
  else
    loadstring(game:HttpGet(ferramenta))
  end
end

local ferramentas = {
    IY = function()
        import("IY")
    end, 
    
    Owl= function()
    import("Owl")
    end,

    Dex=function()
    import("Dex")
    end,

    others=function()
        return nil
    end
}

local services = Tabs.Main:AddDropdown("Dropdown", {
    Title = "Ferramentas Uteis",
    Values = {"Nenhum","Infinite Yield", "Owl Hub", "Dex Explorer"},
    Multi = false,
    Default = "Nenhum",
})

services:OnChanged(function(Value)
    if Value == "Infinite Yield" then
        ferramentas.IY()
    elseif Value == "Owl Hub" then
        ferramentas.Owl()
    elseif Value == "Dex Explorer" then
        ferramentas.Dex()
    else
        ferramentas.others()
    end
end)

Tabs.Main:AddButton({
    Title = "Destruir Mapa(VISUAL)",
    Description = "Esse Botão ira DESTRUIR o mapa Completamente",
    Callback = function()
        Window:Dialog({
            Title = "Confirmar",
            Content = "",
            Buttons = {
                {
                    Title = "Confirmar",
                    Callback = function()


                        Fluent:Notify({
                            Title = "OgeidXFrost",
                            Content = "Aquarde",
                            SubContent = "", -- Optional
                            Duration = 5 -- Set to nil to make the notification not disappear
                        }) 
                        for _, obj in pairs(game.Workspace:GetDescendants()) do
                        obj:Destroy()
                        wait(1)
                        end
                    end
                },
                {
                    Title = "Cancelar",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})

Tabs.Settings:AddButton({
    Title = "Reentrar",
    Description = "Isso Ira Fazer você re-entrar",
    Callback = function()
        Window:Dialog({
            Title = "OgeidXFrost",
            Content = "Confirme para reentrar",
            Buttons = {
                {
                    Title = "Confirmar",
                    Callback = function()
                        game:GetService("TeleportService"):Teleport(game.PlaceId)
                    end
                },
                {
                    Title = "Cancelar",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})

Tabs.Settings:AddButton({
    Title = "Suicidio",
    Description = "Matara o Jogador",
    Callback = function()
        Window:Dialog({
            Title = "OgeidXFrost",
            Content = "This is a dialog",
            Buttons = {
                {
                    Title = "Confirmar",
                    Callback = function()
                        game.Players.LocalPlayer:FindFirstChildOfClass("Humanoid").Health = 0
                    end
                },
                {
                    Title = "Cancelar",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})

Fluent:Notify({
    Title = "OgeidXFrost",
    Content = "Carregado",
    Duration = 8
})





SaveManager:LoadAutoloadConfig()
