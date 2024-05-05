local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/MAXIMUS-LIBRARY/main/Fluent/Source.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({Title = "Quasar Hub | ".. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, SubTitle = "Quick Hacks por Frost Team", TabWidth = 160, Size = UDim2.fromOffset(580, 460), Acrylic = true, Theme = "Dark", MinimizeKey = Enum.KeyCode.LeftControl})

local Tabs = {Main=Window:AddTab({Title="Main",Icon="rbxassetid://16452461868"}), 
    Settings=Window:AddTab({ Title = "Settings", Icon = "settings" })}

    local Hacks = Tabs.Main:AddDropdown("Hacks", {
        Title = "Hacks",
        Values = {"Nenhum", "Speed Hack", "Jump Hack", "Noclip"},
        Multi = false,
        Default = "Nenhum",
    })

    Hacks:OnChanged(function(Value)
        local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
        if Value == "Speed Hack" then
            humanoid.WalkSpeed = 300
        elseif Value == "Jump Hack" then
            humanoid.JumpPower = 300
        elseif Value == "Noclip" then
            for _, obj in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                obj.CanCollide = false
            end
        end
    end)

local services = Tabs.Main:AddDropdown("Dropdown", {
    Title = "Ferramentas Uteis",
    Values = {"Nenhum","Infinite Yield", "Owl Hub", "Dex Explorer"},
    Multi = false,
    Default = "Nenhum",
})

services:OnChanged(function(Value)
    if Value == "Infinite Yield" then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    elseif Value == "Owl Hub" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
    elseif Value == "Dex Explorer" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/DarkDEX-V5/main/DarkDEX-V5"))()
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
