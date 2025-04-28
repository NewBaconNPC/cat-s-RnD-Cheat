local notificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/xaxas-notification/src.lua"))();

local function notifytext(text,rgb,dur)
local notifications = notificationLibrary.new({            
    NotificationLifetime = dur, 
    NotificationPosition = "Middle",
    
    TextFont = Enum.Font.Jura,
    TextColor = rgb,
    TextSize = 15,
    
    TextStrokeTransparency = 0, 
    TextStrokeColor = Color3.fromRGB(0, 0, 0)
});

notifications:BuildNotificationUI();
notifications:Notify(text);
end

if game.PlaceId == 5865058321 then
	local function errornotif()
	local notif = Instance.new("Sound",game.Players.LocalPlayer.PlayerGui)
    notif.Name = "notif_error"
	notif.SoundId = "rbxassetid://2390695935"
	notif.Volume = 0.1
	notif:Play()
	game.Debris:AddItem(notif, 3)
	end

errornotif()

notifytext("ERROR: You are at the menu this in-game only!",Color3.fromRGB(186, 0, 0),5)

elseif game.PlaceId == 12208518151 then

local function errornotif()
	local notif = Instance.new("Sound",game.Players.LocalPlayer.PlayerGui)
    notif.Name = "notif_error"
	notif.SoundId = "rbxassetid://2390695935"
	notif.Volume = 0.1
	notif:Play()
	game.Debris:AddItem(notif, 3)
end

local function normalnotif()
	local notif = Instance.new("Sound",game.Players.LocalPlayer.PlayerGui)
    notif.Name = "notif_normal"
	notif.SoundId = "rbxassetid://4590662766"
	notif.Volume = 0.1
	notif:Play()
	game.Debris:AddItem(notif, 3)
end

local function alertnotif()
	local notif = Instance.new("Sound",game.Players.LocalPlayer.PlayerGui)
    notif.Name = "notif_alert"
	notif.SoundId = "rbxassetid://6176997734"
	notif.Volume = 0.1
	notif:Play()
	game.Debris:AddItem(notif, 3)
end


local function pnevnotif()
	local notif = Instance.new("Sound",game.Players.LocalPlayer.PlayerGui)
    notif.Name = "notif_alert"
	notif.SoundId = "rbxassetid://8509804480"
	notif.Volume = 0.1
	notif:Play()
	game.Debris:AddItem(notif, 3)
end

local function highlight(child,rgbcolor)
	local hl = Instance.new("Highlight",child)
    hl.Name = "highlight"
	hl.OutlineTransparency = 1
	hl.FillTransparency = 0.35
	hl.FillColor = rgbcolor
end

normalnotif()

notifytext("Welcome "..game.Players.LocalPlayer.DisplayName.."! Thanks for executing the script!",Color3.fromRGB(196, 69, 0),3)

wait(4)

normalnotif()

notifytext("Executor you are using: "..identifyexecutor(),Color3.fromRGB(64, 63, 63),1.5)

wait(2)

normalnotif()

notifytext("Hold on a second: Assets are loading...",Color3.fromRGB(196, 69, 0),3)

wait(2)

normalnotif()

notifytext("Loaded: Monster's names [1/3]",Color3.fromRGB(57, 181, 0),1.25)

wait(1.75)


normalnotif()

notifytext("Loaded: Sounds [2/3]",Color3.fromRGB(57, 181, 0),1)

wait(1.15)

normalnotif()

notifytext("Loaded: Script Assets [3/3]",Color3.fromRGB(57, 181, 0),1)

wait(1.1)

notifytext("Loading Completed: Fell free to use.",Color3.fromRGB(57, 181, 0),1)

local light = Instance.new("PointLight",game.Players.LocalPlayer.Character.HumanoidRootPart)
light.Name = "FakeLight"
light.Range = 60
light.Brightness = 1.5


workspace.ChildAdded:Connect(function(child)
	if child:IsA("Part") and child.Name == "monster" then
	alertnotif()
notifytext("Monster: A-60 is spawned, hide on Locker!",Color3.fromRGB(122, 0, 0),2)
	end
end)

workspace.ChildAdded:Connect(function(child)
	if child:IsA("Part") and child.Name == "monster2" then
	alertnotif()
notifytext("Monster: A-120/A-200 have been spawned hide to locker wait until dissapears... ",Color3.fromRGB(122, 0, 0),2)

	end
end)

workspace.rooms.DescendantAdded:Connect(function(child)
	if child:IsA("Model") and child.Name == "jack" then
	alertnotif()
notifytext("Monster: A-40 have been detect on locker highlighted the locker and make sure dont enter! ",Color3.fromRGB(143, 137, 137),2)
	local hl = Instance.new("Highlight",child)
    hl.Name = "highlight"
	hl.OutlineTransparency = 1
	hl.FillTransparency = 0.35
	hl.FillColor = Color3.fromRGB(138, 138, 138)
	child.Destroying:Wait()
	hl:Destroy()
	end
end)

workspace.ChildRemoved:Connect(function(child)
	if child:IsA("Part") and child.Name == "monster2" then
	normalnotif()
notifytext("Monster Gone: A-120/A-200 has been gone you can leave from locker.",Color3.fromRGB(122, 0, 0),2)
	end
end)
workspace.rooms.DescendantAdded:Connect(function(child)
	wait(0.75)
notifytext("Room: Battery has been spawned make sure get it!",Color3.fromRGB(196, 62, 0),2)
highlight(child,Color3.fromRGB(255, 143, 74))
normalnotif()
elseif not child:IsA("Model") and child.battery then
end
end)



workspace.ChildAdded:Connect(function(child)
	if child:IsA("Model") and child.Name == "Spirit" then
notifytext("Monster: A-100 is spawned dont make any noise!",Color3.fromRGB(66, 49, 49),2)
pnevnotif()
highlight(child.torso,Color3.fromRGB(128, 13, 0))
	end
end)

workspace.ChildAdded:Connect(function(child)
	if child.Name == "handdebris" then
notifytext("Monster: A-250 is shak",Color3.fromRGB(66, 49, 49),2)
alertnotif()
	end
end)



local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(Input, IsTyping)
	if IsTyping then return end
	if Input.KeyCode == Enum.KeyCode.H then
	game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "cat's RnD Cheat: Health", -- Required
    Text = "Your Health is on: "..game.Players.LocalPlayer.Character.Humanoid.Health, -- Required
    Icon = "http://www.roblox.com/asset/?id=12219657382" -- Optional
	})
	end
end)

game["Run Service"].Heartbeat:Connect(function()
	for i, part in ipairs(game.Players:GetPlayers().Character:GetDescendants()) do
  if (part:IsA("BasePart") or part:IsA("Decal")) and part.Name ~= "HumanoidRootPart" then
   part.Transparency = 0
  end
 end
end)

else
		local function errornotif()
	local notif = Instance.new("Sound",game.Players.LocalPlayer.PlayerGui)
    notif.Name = "notif_error"
	notif.SoundId = "rbxassetid://2390695935"
	notif.Volume = 0.1
	notif:Play()
	game.Debris:AddItem(notif, 3)
	end

errornotif()

game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "cat's RnD Cheat: Not Working!", -- Required
Text = "Hey man youre on wrong game is on works on 'Rooms and Doors'! (link clipboarded)", -- Required
Icon = "http://www.roblox.com/asset/?id=9010768361" -- Optional
})
setclipboard("https://www.roblox.com/games/5865058321/Rooms-Doors")
end
