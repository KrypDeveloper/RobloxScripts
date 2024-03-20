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
  [537413528] = loadstring(game:HttpGet(links.BuildABoat)),
  [16365412402] = loadstring(game:HttpGet(links.omnix)),
  [16091658541] = loadstring(game:HttpGet(links.omnix)),
  [16129091908] = loadstring(game:HttpGet(links.omnix)),
  [521009548] = loadstring(game:HttpGet(links.omnix)),
  [189707] = loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/Frost%20Hub%20%7C%20Natural%20Disaster.lua"))(),
  [14437001043] = loadstring(game:HttpGet(links.Residence)),
  [16667550979] = loadstring(game:HttpGet(links.Residence)),
  [14896802601] = loadstring(game:HttpGet(links.Residence)),
  [14896802601] = loadstring(game:HttpGet(links.Residence)),
  [155382109] = loadstring(game:HttpGet(links.area51)),
  [3203685552] = loadstring(game:HttpGet(links.bear)),
  [5441515225] = loadstring(game:HttpGet(links.bear)),
  [4398834993] = loadstring(game:HttpGet(links.bear)),
  [4565048785] = loadstring(game:HttpGet(links.bear)),
  [13477040473] = loadstring(game:HttpGet(links.bear)),
  [15985826131] = loadstring(game:HttpGet(links.HomeAlone)),
  [6999691637] = loadstring(game:HttpGet(links.BoxDown)),
  [10129750406] = loadstring(game:HttpGet(links.stairs))
}

for id, script in pairs(utility) do
  if game.PlaceId == id then
    return script
    break
  else
    print("unsupported game detected")
  end
end
