-- Função para verificar o PlaceID e executar ação correspondente
local function verificarPlaceID()
    local placeID = game.PlaceId

    if placeID == 14437001043 then
        -- Se o PlaceID for igual a 14437001043 (ID do primeiro jogo)
        local character = game.Players.LocalPlayer.Character
        if character then
            character:MoveTo(Vector3.new(-94.03, 4.80, 56.05))
        end

    elseif placeID == 14896802601 then
        -- Se o PlaceID for igual a 14896802601 (ID do segundo jogo)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/CHOOSE.lua", true))()

    else
        -- Ação padrão se o PlaceID não corresponder a nenhum jogo
        print("Nenhum jogo correspondente encontrado para este PlaceID.")
    end
end

-- Chama a função para verificar o PlaceID
verificarPlaceID()
