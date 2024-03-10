local supportedGames = {
    [537413528] = "frost hub build a boat (BETA)",
    [16365412402] = "PT-BR FROST HUB",
    [16091658541] = "PT-BR FROST HUB",
    [16129091908] = "PT-BR FROST HUB",
    [5210095481] = "PT-BR FROST HUB",
    [189707] = "Frost Hub | Natural Disaster",
    [14437001043] = "Frost Hub Residence Massacre",
    [16667550979] = "Frost Hub Residence Massacre",
    [14896802601] = "Frost Hub Residence Massacre",
    [14896802601] = "Frost Hub Residence Massacre",
}

local gameId = game.PlaceId

if supportedGames[gameId] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/" .. supportedGames[gameId] .. ".lua"))()
else
    print("Você não está em um jogo suportado.\nYou are in a unsuported game.")
end
