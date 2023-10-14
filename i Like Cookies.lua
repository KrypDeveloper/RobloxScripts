local placeId = game.PlaceId
local expectedPlaceId1 = 14437001043
local expectedPlaceId2 = 14896802601

if placeId == expectedPlaceId1 then
    local character = game.Players.LocalPlayer.Character
    if character then
        character:MoveTo(Vector3.new(-94.03, 4.80, 56.05))
    end
elseif placeId == expectedPlaceId2 then
    local success, result = pcall(loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/CHOOSE.lua",true))()", true)))
    if success then
        print("Sucess")
    else
        warn("OOF:", result)
    end
else
    -- O PlaceId do jogo não corresponde a nenhum dos esperados, vamos dar kick no jogador
    local player = game.Players.LocalPlayer
    if player then
        player:Kick("Sorry, game not supported")
    end
end
