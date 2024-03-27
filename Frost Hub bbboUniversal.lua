local links = {
  BuildABoat = "https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/Build%20A%20Boat%20ogeidxforst",
  omnix = "https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/PT-BR%20FROST%20HUB.lua",
  Residence = "https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/Frost%20Hub%20Residence%20Massacre",
  area51 = "https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/FrostXOgeid%20Area51.lua",
  bear = "https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/FrostXOGEID%20BEAR",
  HomeAlone = "https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/FrostXOgeid%20Home%20Alone.lua",
  BoxDown = "https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/FrostXOgeid%20BoxDown",
  stairs = "https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/FrostXOgeid%202000%20stairs"
}

local utility = {
  [537413528] = links.BuildABoat,
  [16365412402] = links.omnix,
  [16091658541] = links.omnix,
  [16129091908] = links.omnix,
  [521009548] = links.omnix,
  [16029997375] = links.omnix,
  [16365412402] = links.omnix,
  [16091658541] = links.omnix,
  [16129091908] = links.omnix,
  [5210095481] = links.omnix,
  [189707] = "https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/Frost%20Hub%20%7C%20Natural%20Disaster.lua",
  [14437001043] = links.Residence,
  [16667550979] = links.Residence,
  [14896802601] = links.Residence,
  [14896802601] = links.Residence,
  [155382109] = links.area51,
  [2092166489] = links.area51,
  [5740483929] = links.area51,
  [3182083477] = links.area51,
  [3203685552] = links.bear,
  [5441515225] = links.bear,
  [4398834993] = links.bear,
  [4565048785] = links.bear,
  [13477040473] = links.bear,
  [15985826131] = links.HomeAlone,
  [15988754129] = links.HomeAlone,
  [6999691637] = links.BoxDown,
  [10129750406] = links.stairs
}

for id, script in pairs(utility) do
if _G.ativo = false theb
  if game.PlaceId == id then
    loadstring(game:HttpGet(script))()
    break
  else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/OgeidXFrost%20OUTROS.lua"))()
    _G.ativo = true
    print("Game sem suporte detectado, carregando universal")
    break
  end
end
end

