local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
local Window = Rayfield:CreateWindow({
    Name = "Galaxy Hub| Flight And more!",
    LoadingTitle = "Galaxy Hub",
    LoadingSubtitle = "by 7SputGaming",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"XvhdEct25oXqa","Pr3m1umFr33M0m3nT","QdVgXzP1vX"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    },
 })

 local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

 local Section = Tab:CreateSection("Section Example")

 local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
 local Window = Rayfield:CreateWindow({
     Name = "Galaxy Hub| Flight And more!",
     LoadingTitle = "Galaxy Hub",
     LoadingSubtitle = "by 7SputGaming",
     ConfigurationSaving = {
        Enabled = true,
        FolderName = nil, -- Create a custom folder for your hub/game
        FileName = "Big Hub"
     },
     Discord = {
        Enabled = false,
        Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
        RememberJoins = true -- Set this to false to make them join the discord every time they load it up
     },
     KeySystem = true, -- Set this to true to use our key system
    
    
    
     KeySettings = {
        Title = "Galaxy Hub",
        Subtitle = "Key System",
        Note = "Yes method. shalt not tell",
        FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
        SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = {"XvhdEct25oXqa","Pr3m1umFr33M0m3nT","QdVgXzP1vX"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
     },
  })
 
  local Tab = Window:CreateTab("Blatant", 4483362458) -- Title, Image
 
  local Section = Tab:CreateSection("Main")
  
  local Slider = Tab:CreateSlider({ -- creating a Slider
  Name = "Player Speed", -- naming the Slider
  Range = {1, 250}, -- adjusting its minimum to max rang
  Increment = 1,
  Suffix = "WalkSpeed",
  CurrentValue = 10, -- setting a default value to the Slider
  Flag = "Slider1",
  Callback = function(Value)
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end,
})
 
local Slider = Tab:CreateSlider({ -- creating a Slider
Name = "Player JumpHeight (first jump only)", -- naming the Slider
Range = {1, 2500}, -- adjusting its minimum to max rang
Increment = 1,
Suffix = "JumpPower",
CurrentValue = 10, -- setting a default value to the Slider
Flag = "Slider1",
Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end,
})



local Button = Tab:CreateButton({
   Name = "Infinite Jump",
   Callback = function()
   -- The function that takes place when the button is pressed

   local Player = game:GetService'Players'.LocalPlayer;
   local UIS = game:GetService'UserInputService';
    
   _G.JumpHeight = 50;
    
   function Action(Object, Function) if Object ~= nil then Function(Object); end end
    
   UIS.InputBegan:connect(function(UserInput)
       if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
           Action(Player.Character.Humanoid, function(self)
               if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                   Action(self.Parent.HumanoidRootPart, function(self)
                       self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                   end)
               end
           end)
       end
   end)

 end,
})
