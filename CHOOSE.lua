--This is Just to Choose a gui if u want copy something okay

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "CHOOSE",
   LoadingTitle = "OLD GUI NOT RECOMMENDED",
   LoadingSubtitle = "RESIDENCE",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = DELETE, -- Create a custom folder for your hub/game
      FileName = "DELETE"
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

local GUI = Window:CreateTab("GUI", 4483362458) -- Title, Image

local Button = GUI:CreateButton({
   Name = "OLD GUI",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/Residence%20Massacre%20Script(ESP)",true))()
   wait(0.1)
   Rayfield:Destroy()
   end,
})

local Button = GUI:CreateButton({
   Name = "NEW GUI",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/KrypDeveloper/RobloxScripts/main/Residence%20Massacre%20New%20Gui.lua",true))()
   end,
})