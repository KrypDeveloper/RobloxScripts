local load = loadstring or load
local ID = game.PlaceId

local Scripts = {
    ["Benverse Protector"] = "https://raw.githubusercontent.com/KrypDeveloper/Public-Files/refs/heads/main/Quasar%20Hub/Quasar%20Hub%20Benverse.lua",
    ["Magic RNG"] = "https://raw.githubusercontent.com/KrypDeveloper/Public-Files/refs/heads/main/Quasar%20Hub/Quasar%20Hub%20Magic%20RNG.lua",
    ["OMNI X"] = "https://raw.githubusercontent.com/KrypDeveloper/Public-Files/refs/heads/main/Quasar%20Hub/Quasar%20Hub%20OMNI%20X.lua"
}

local IDs = {
    [16389724472] = Scripts["Benverse Protector"],
    [17250334236] = Scripts["Magic RNG"],
    [5210095481] = Scripts["OMNI X"]
}

if load and IDs[ID] then
    load(game:HttpGet(IDs[ID]))()
else
    warn("Script not support and(or) not in supported game")
end
