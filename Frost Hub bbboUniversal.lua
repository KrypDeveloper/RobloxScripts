local links = {
  BuildABoat = "https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/frost%20hub%20build%20a%20boat(BETA)",
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
  [189707] = "https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/Frost%20Hub%20%7C%20Natural%20Disaster.lua",
  [14437001043] = links.Residence,
  [16667550979] = links.Residence,
  [14896802601] = links.Residence,
  [14896802601] = links.Residence,
  [155382109] = links.area51,
  [3203685552] = links.bear,
  [5441515225] = links.bear,
  [4398834993] = links.bear,
  [4565048785] = links.bear,
  [13477040473] = links.bear,
  [15985826131] = links.HomeAlone,
  [6999691637] = links.BoxDown,
  [10129750406] = links.stairs
}

for id, script in pairs(utility) do
  if game.PlaceId == id then
    loadstring(game:HttpGet(utility[game.PlaceId]))()
    break
  else
    print("unsupported game detected")
  end
end
