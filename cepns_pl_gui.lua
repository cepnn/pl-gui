-- Gui to Lua
-- Version: 3.2

local function getGuns()
    
     if (game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")) then
            game.Players.LocalPlayer.Backpack.Taser:Destroy()
    end
    if (game.Players.LocalPlayer.Backpack:FindFirstChild("Handcuffs")) then
            game.Players.LocalPlayer.Backpack.Handcuffs:Destroy()
    end
    if (game.Players.LocalPlayer.Backpack:FindFirstChild("M9")) then
            game.Players.LocalPlayer.Backpack.M9:Destroy()
    end
    

	if (game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 96651)) then
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
	else
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP) 
		require(game.Players.LocalPlayer.Backpack:FindFirstChild("AK-47"):FindFirstChild("GunStates"))["FireRate"] = 0.09
	end

	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)


	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)



	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	if game.Players.LocalPlayer:FindFirstChild("M9") then
		game.Players.LocalPlayer:FindFirstChild("M9").Parent = game.Players.LocalPlayer.Backpack
	end
end


-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local refresh = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local trim2 = Instance.new("ImageLabel")
local gradientbottom = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local gradient = Instance.new("ImageLabel")
local trim1 = Instance.new("ImageLabel")
local title = Instance.new("TextLabel")
local respawn = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local trim3 = Instance.new("ImageLabel")
local trim4 = Instance.new("ImageLabel")
local yardtp = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local nexustp = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local armorytp = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local cafetp = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local cellstp = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local backtp = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local trim5 = Instance.new("ImageLabel")
local trim6 = Instance.new("ImageLabel")
local lock = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local obguns = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local trim7 = Instance.new("ImageLabel")
local trim8 = Instance.new("ImageLabel")
local beinmate = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local beguardf = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local beneutral = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local becriminal = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local beguard = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local trim9 = Instance.new("ImageLabel")
local trim10 = Instance.new("ImageLabel")
local minimize = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local helpbutton = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local re = Instance.new("TextLabel")
local tp = Instance.new("TextLabel")
local misc = Instance.new("TextLabel")
local teams = Instance.new("TextLabel")
local help = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local UICorner_20 = Instance.new("UICorner")
local changelog = Instance.new("Frame")
local UICorner_21 = Instance.new("UICorner")
local gradient_2 = Instance.new("ImageLabel")
local UICorner_22 = Instance.new("UICorner")
local gradientbottom_2 = Instance.new("ImageLabel")
local UICorner_23 = Instance.new("UICorner")
local closechange = Instance.new("TextButton")
local UICorner_24 = Instance.new("UICorner")
local changetitle = Instance.new("TextLabel")
local changedesc = Instance.new("TextLabel")
local info = Instance.new("Frame")
local UICorner_25 = Instance.new("UICorner")
local gradient_3 = Instance.new("ImageLabel")
local UICorner_26 = Instance.new("UICorner")
local gradientbottom_3 = Instance.new("ImageLabel")
local UICorner_27 = Instance.new("UICorner")
local closeinfo = Instance.new("TextButton")
local UICorner_28 = Instance.new("UICorner")
local infotitle = Instance.new("TextLabel")
local infodesc = Instance.new("TextLabel")
local help_2 = Instance.new("Frame")
local UICorner_29 = Instance.new("UICorner")
local gradient_4 = Instance.new("ImageLabel")
local UICorner_30 = Instance.new("UICorner")
local gradientbottom_4 = Instance.new("ImageLabel")
local UICorner_31 = Instance.new("UICorner")
local helpdesc = Instance.new("TextLabel")
local helptitle = Instance.new("TextLabel")
local closehelp = Instance.new("TextButton")
local UICorner_32 = Instance.new("UICorner")
local changelogbutton = Instance.new("TextButton")
local UICorner_33 = Instance.new("UICorner")
local infobutton = Instance.new("TextButton")
local UICorner_34 = Instance.new("UICorner")
local open = Instance.new("TextButton")
local UICorner_35 = Instance.new("UICorner")
local ChatEnabled = true
local BubblesEnabled = true

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
main.Position = UDim2.new(0.8, 0, 0.0500000007, 0)
main.Size = UDim2.new(0, 260, 0, 424)
main.Active = true
main.Draggable = false

UICorner.Parent = main

refresh.Name = "refresh"
refresh.Parent = main
refresh.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
refresh.Position = UDim2.new(0.0359999985, 0, 0.208000004, 0)
refresh.Size = UDim2.new(0, 100, 0, 30)
refresh.Font = Enum.Font.Nunito
refresh.Text = "Refresh"
refresh.TextColor3 = Color3.fromRGB(255, 255, 255)
refresh.TextSize = 20.000
refresh.MouseButton1Click:connect(function()
	if (game.Players.LocalPlayer.Team.Name ~= "Criminals") then
		local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
		local plr = game.Players.LocalPlayer.Name
		local gayevent = game:GetService("Workspace").Remote.loadchar
		gayevent:InvokeServer(plr)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
	else
		local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
		Workspace.Remote.TeamEvent:FireServer("Bright orange")
		wait()
		local plr = game.Players.LocalPlayer.Name
		local gayevent = game:GetService("Workspace").Remote.loadchar
		gayevent:InvokeServer(plr)
		LCS = game.Workspace["Criminals Spawn"].SpawnLocation
		LCS.CanCollide = false
		LCS.Size = Vector3.new(51.05, 24.12, 54.76)
		LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		LCS.Transparency = 1
		wait(0.5)
		LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		LCS.Size = Vector3.new(6, 0.2, 6)
		LCS.Transparency = 0
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
	end
end)


UICorner_2.Parent = refresh

trim2.Name = "trim2"
trim2.Parent = main
trim2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trim2.BackgroundTransparency = 1.000
trim2.BorderSizePixel = 0
trim2.Position = UDim2.new(-0.0238461532, 0, 0.170150951, 0)
trim2.Size = UDim2.new(0, 115, 0, 15)
trim2.ZIndex = 2
trim2.Image = "rbxassetid://7102855594"
trim2.ScaleType = Enum.ScaleType.Slice
trim2.SliceCenter = Rect.new(10, 0, 469, 0)

gradientbottom.Name = "gradientbottom"
gradientbottom.Parent = main
gradientbottom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gradientbottom.BackgroundTransparency = 1.000
gradientbottom.BorderSizePixel = 0
gradientbottom.Position = UDim2.new(0, 0, 0.88699919, 0)
gradientbottom.Size = UDim2.new(0, 260, 0, 50)
gradientbottom.Image = "rbxassetid://7093259193"

UICorner_3.Parent = gradientbottom

gradient.Name = "gradient"
gradient.Parent = main
gradient.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gradient.BackgroundTransparency = 1.000
gradient.Position = UDim2.new(0, 0, 0.117924526, 0)
gradient.Size = UDim2.new(0, 260, 0, 50)
gradient.Image = "rbxassetid://7093258509"

trim1.Name = "trim1"
trim1.Parent = main
trim1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trim1.BackgroundTransparency = 1.000
trim1.BorderSizePixel = 0
trim1.Position = UDim2.new(0.572000146, 0, 0.170150965, 0)
trim1.Size = UDim2.new(0, 116, 0, 15)
trim1.Image = "rbxassetid://7102855594"
trim1.ScaleType = Enum.ScaleType.Slice
trim1.SliceCenter = Rect.new(10, 0, 469, 0)

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
title.BackgroundTransparency = 1.000
title.BorderSizePixel = 0
title.Position = UDim2.new(0.032330472, 0, 0, 0)
title.Size = UDim2.new(0, 169, 0, 50)
title.Font = Enum.Font.Nunito
title.Text = "Cepn's PL GUI <font size='15'>v1.0.0</font>"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 22.000
title.TextXAlignment = Enum.TextXAlignment.Left
title.RichText = true

respawn.Name = "respawn"
respawn.Parent = main
respawn.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
respawn.Position = UDim2.new(0.574000001, 0, 0.206, 0)
respawn.Size = UDim2.new(0, 100, 0, 30)
respawn.Font = Enum.Font.Nunito
respawn.Text = "Respawn"
respawn.TextColor3 = Color3.fromRGB(255, 255, 255)
respawn.TextSize = 20.000
respawn.MouseButton1Click:connect(function()
	local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
	local plr = game.Players.LocalPlayer.Name
	local gayevent = game:GetService("Workspace").Remote.loadchar
	gayevent:InvokeServer(plr)
end)

UICorner_4.Parent = respawn

trim3.Name = "trim3"
trim3.Parent = main
trim3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trim3.BackgroundTransparency = 1.000
trim3.BorderSizePixel = 0
trim3.Position = UDim2.new(0.572000027, 0, 0.277358502, 0)
trim3.Size = UDim2.new(0, 116, 0, 15)
trim3.Image = "rbxassetid://7102855594"
trim3.ScaleType = Enum.ScaleType.Slice
trim3.SliceCenter = Rect.new(10, 0, 469, 0)

trim4.Name = "trim4"
trim4.Parent = main
trim4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trim4.BackgroundTransparency = 1.000
trim4.BorderSizePixel = 0
trim4.Position = UDim2.new(-0.0241538286, 0, 0.277358502, 0)
trim4.Size = UDim2.new(0, 116, 0, 15)
trim4.Image = "rbxassetid://7102855594"
trim4.ScaleType = Enum.ScaleType.Slice
trim4.SliceCenter = Rect.new(10, 0, 469, 0)

yardtp.Name = "yardtp"
yardtp.Parent = main
yardtp.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
yardtp.Position = UDim2.new(0.574000001, 0, 0.312000006, 0)
yardtp.Size = UDim2.new(0, 100, 0, 30)
yardtp.Font = Enum.Font.Nunito
yardtp.Text = "Yard"
yardtp.TextColor3 = Color3.fromRGB(255, 255, 255)
yardtp.TextSize = 20.000
yardtp.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779,99,2477)
end)

UICorner_5.Parent = yardtp

nexustp.Name = "nexustp"
nexustp.Parent = main
nexustp.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
nexustp.Position = UDim2.new(0.0356923342, 0, 0.312132061, 0)
nexustp.Size = UDim2.new(0, 100, 0, 30)
nexustp.Font = Enum.Font.Nunito
nexustp.Text = "Nexus"
nexustp.TextColor3 = Color3.fromRGB(255, 255, 255)
nexustp.TextSize = 20.000
nexustp.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879,99,2377)
end)

UICorner_6.Parent = nexustp

armorytp.Name = "armorytp"
armorytp.Parent = main
armorytp.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
armorytp.Position = UDim2.new(0.0356923342, 0, 0.401754677, 0)
armorytp.Size = UDim2.new(0, 100, 0, 30)
armorytp.Font = Enum.Font.Nunito
armorytp.Text = "Armory"
armorytp.TextColor3 = Color3.fromRGB(255, 255, 255)
armorytp.TextSize = 20.000
armorytp.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(798,99,2260)
end)

UICorner_7.Parent = armorytp

cafetp.Name = "cafetp"
cafetp.Parent = main
cafetp.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
cafetp.Position = UDim2.new(0.5741539, 0, 0.401754677, 0)
cafetp.Size = UDim2.new(0, 100, 0, 30)
cafetp.Font = Enum.Font.Nunito
cafetp.Text = "Cafeteria"
cafetp.TextColor3 = Color3.fromRGB(255, 255, 255)
cafetp.TextSize = 20.000
cafetp.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879,99,2247)
end)

UICorner_8.Parent = cafetp

cellstp.Name = "cellstp"
cellstp.Parent = main
cellstp.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
cellstp.Position = UDim2.new(0.574000001, 0, 0.492000014, 0)
cellstp.Size = UDim2.new(0, 100, 0, 30)
cellstp.Font = Enum.Font.Nunito
cellstp.Text = "Cells"
cellstp.TextColor3 = Color3.fromRGB(255, 255, 255)
cellstp.TextSize = 20.000
cellstp.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(910,99,2477)
end)

UICorner_9.Parent = cellstp

backtp.Name = "backtp"
backtp.Parent = main
backtp.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
backtp.Position = UDim2.new(0.0359999985, 0, 0.492000014, 0)
backtp.Size = UDim2.new(0, 100, 0, 30)
backtp.Font = Enum.Font.Nunito
backtp.Text = "Back Hall"
backtp.TextColor3 = Color3.fromRGB(255, 255, 255)
backtp.TextSize = 20.000
backtp.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(980, 101, 2327)
end)

UICorner_10.Parent = backtp

trim5.Name = "trim5"
trim5.Parent = main
trim5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trim5.BackgroundTransparency = 1.000
trim5.BorderSizePixel = 0
trim5.Position = UDim2.new(-0.0240000002, 0, 0.561999977, 0)
trim5.Size = UDim2.new(0, 116, 0, 15)
trim5.Image = "rbxassetid://7102855594"
trim5.ScaleType = Enum.ScaleType.Slice
trim5.SliceCenter = Rect.new(10, 0, 469, 0)

trim6.Name = "trim6"
trim6.Parent = main
trim6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trim6.BackgroundTransparency = 1.000
trim6.BorderSizePixel = 0
trim6.Position = UDim2.new(0.572000027, 0, 0.561999977, 0)
trim6.Size = UDim2.new(0, 116, 0, 15)
trim6.Image = "rbxassetid://7102855594"
trim6.ScaleType = Enum.ScaleType.Slice
trim6.SliceCenter = Rect.new(10, 0, 469, 0)

lock.Name = "lock"
lock.Parent = main
lock.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
lock.Position = UDim2.new(0.574000001, 0, 0.595773578, 0)
lock.Size = UDim2.new(0, 100, 0, 30)
lock.Font = Enum.Font.Nunito
lock.Text = "Lock"
lock.TextColor3 = Color3.fromRGB(255, 255, 255)
lock.TextSize = 20.000
lock.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
	game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	game.Players.LocalPlayer.CharacterAdded:connect(function()
		game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
		game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	end)
end)

UICorner_11.Parent = lock

obguns.Name = "obguns"
obguns.Parent = main
obguns.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
obguns.Position = UDim2.new(0.035538435, 0, 0.595773578, 0)
obguns.Size = UDim2.new(0, 100, 0, 30)
obguns.Font = Enum.Font.Nunito
obguns.Text = "Get Guns"
obguns.TextColor3 = Color3.fromRGB(255, 255, 255)
obguns.TextSize = 20.000
obguns.MouseButton1Down:connect(function()  
	getGuns()
end)

UICorner_12.Parent = obguns

trim7.Name = "trim7"
trim7.Parent = main
trim7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trim7.BackgroundTransparency = 1.000
trim7.BorderSizePixel = 0
trim7.Position = UDim2.new(0.572000027, 0, 0.665773571, 0)
trim7.Size = UDim2.new(0, 116, 0, 15)
trim7.Image = "rbxassetid://7102855594"
trim7.ScaleType = Enum.ScaleType.Slice
trim7.SliceCenter = Rect.new(10, 0, 469, 0)

trim8.Name = "trim8"
trim8.Parent = main
trim8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trim8.BackgroundTransparency = 1.000
trim8.BorderSizePixel = 0
trim8.Position = UDim2.new(-0.0240000002, 0, 0.666000009, 0)
trim8.Size = UDim2.new(0, 116, 0, 15)
trim8.Image = "rbxassetid://7102855594"
trim8.ScaleType = Enum.ScaleType.Slice
trim8.SliceCenter = Rect.new(10, 0, 469, 0)

beinmate.Name = "beinmate"
beinmate.Parent = main
beinmate.BackgroundColor3 = Color3.fromRGB(170, 85, 0)
beinmate.Position = UDim2.new(0.0359999426, 0, 0.699547172, 0)
beinmate.Size = UDim2.new(0, 50, 0, 30)
beinmate.Font = Enum.Font.Nunito
beinmate.Text = "I"
beinmate.TextColor3 = Color3.fromRGB(255, 255, 255)
beinmate.TextSize = 20.000
beinmate.MouseButton1Down:connect(function()
	Workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

UICorner_13.Parent = beinmate

beguardf.Name = "beguardf"
beguardf.Parent = main
beguardf.BackgroundColor3 = Color3.fromRGB(0, 54, 79)
beguardf.Position = UDim2.new(0.228307635, 0, 0.6801377392, 0)
beguardf.Size = UDim2.new(0, 25, 0, 29)
beguardf.Font = Enum.Font.Nunito
beguardf.Text = "G"
beguardf.TextColor3 = Color3.fromRGB(255, 255, 255)
beguardf.TextSize = 20.000
beguardf.MouseButton1Down:connect(function()
	local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
	workspace.Remote.loadchar:InvokeServer("", "Bright blue")
	wait()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
end)

UICorner_14.Parent = beguardf

beneutral.Name = "beneutral"
beneutral.Parent = main
beneutral.BackgroundColor3 = Color3.fromRGB(145, 137, 142)
beneutral.Position = UDim2.new(0.574000001, 0, 0.699999988, 0)
beneutral.Size = UDim2.new(0, 50, 0, 30)
beneutral.Font = Enum.Font.Nunito
beneutral.Text = "N"
beneutral.TextColor3 = Color3.fromRGB(255, 255, 255)
beneutral.TextSize = 20.000
beneutral.MouseButton1Down:connect(function()
	Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)


UICorner_15.Parent = beneutral

becriminal.Name = "becriminal"
becriminal.Parent = main
becriminal.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
becriminal.Position = UDim2.new(0.762923002, 0, 0.699547172, 0)
becriminal.Size = UDim2.new(0, 50, 0, 30)
becriminal.Font = Enum.Font.Nunito
becriminal.Text = "C"
becriminal.TextColor3 = Color3.fromRGB(255, 255, 255)
becriminal.TextSize = 20.000
becriminal.MouseButton1Down:connect(function()
	local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
	LCS = game.Workspace["Criminals Spawn"].SpawnLocation
	LCS.CanCollide = false
	LCS.Size = Vector3.new(51.05, 24.12, 54.76)
	LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	LCS.Transparency = 1
	wait(0.5)
	LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
	LCS.Size = Vector3.new(6, 0.2, 6)
	LCS.Transparency = 0
	wait()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
end)

UICorner_16.Parent = becriminal

beguard.Name = "beguard"
beguard.Parent = main
beguard.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
beguard.Position = UDim2.new(0.320615321, 0, 0.699547172, 0)
beguard.Size = UDim2.new(0, 25, 0, 29)
beguard.Font = Enum.Font.Nunito
beguard.Text = "G"
beguard.TextColor3 = Color3.fromRGB(255, 255, 255)
beguard.TextSize = 20.000
beguard.MouseButton1Down:connect(function()
	Workspace.Remote.TeamEvent:FireServer("Bright blue")
end)

UICorner_17.Parent = beguard

trim9.Name = "trim9"
trim9.Parent = main
trim9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trim9.BackgroundTransparency = 1.000
trim9.BorderSizePixel = 0
trim9.Position = UDim2.new(-0.0240000002, 0, 0.769773602, 0)
trim9.Size = UDim2.new(0, 116, 0, 15)
trim9.Image = "rbxassetid://7102855594"
trim9.ScaleType = Enum.ScaleType.Slice
trim9.SliceCenter = Rect.new(10, 0, 469, 0)

trim10.Name = "trim10"
trim10.Parent = main
trim10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trim10.BackgroundTransparency = 1.000
trim10.BorderSizePixel = 0
trim10.Position = UDim2.new(0.572000027, 0, 0.769999981, 0)
trim10.Size = UDim2.new(0, 116, 0, 15)
trim10.Image = "rbxassetid://7102855594"
trim10.ScaleType = Enum.ScaleType.Slice
trim10.SliceCenter = Rect.new(10, 0, 469, 0)

minimize.Name = "minimize"
minimize.Parent = main
minimize.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
minimize.Position = UDim2.new(0.74323076, 0, 0.0291132014, 0)
minimize.Size = UDim2.new(0, 25, 0, 25)
minimize.Font = Enum.Font.Nunito
minimize.Text = "-"
minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
minimize.TextSize = 25.000
minimize.MouseButton1Click:connect(function()
	local function Tween(object, dest, timing, direction, style)
		timing = timing or 60
		direction = direction or Enum.EasingDirection.Out
		style = style or Enum.EasingStyle.Exponential

		game.TweenService:Create(object, TweenInfo.new(timing, style, direction), dest):Play()
	end
	main.Position = UDim2.new(0.8, 0, 0.05, 0)
	Tween(main, {Position = UDim2.new(0.8, 0, 0.945, 0)}, 0.75, Enum.EasingDirection.Out)
	wait(0.65)
	open.Visible = true
	minimize.Visible = false
end)

UICorner_18.Parent = minimize

open.Name = "open"
open.Visible = false
open.Parent = main
open.BackgroundColor3 = Color3.fromRGB(50, 80, 57)
open.Position = UDim2.new(0.74323076, 0, 0.0291132014, 0)
open.Size = UDim2.new(0, 25, 0, 25)
open.Font = Enum.Font.Nunito
open.Text = "+"
open.TextColor3 = Color3.fromRGB(255, 255, 255)
open.TextSize = 25.000
open.MouseButton1Click:connect(function()
	local function Tween(object, dest, timing, direction, style)
		timing = timing or 60
		direction = direction or Enum.EasingDirection.Out
		style = style or Enum.EasingStyle.Exponential

		game.TweenService:Create(object, TweenInfo.new(timing, style, direction), dest):Play()
	end
	main.Position = UDim2.new(0.8, 0, 0.945, 0)
	Tween(main, {Position = UDim2.new(0.8, 0, 0.05, 0)}, 0.75, Enum.EasingDirection.Out)
	wait(0.65)
	open.Visible = false
	minimize.Visible = true
end)

UICorner_35.Parent = open

helpbutton.Name = "helpbutton"
helpbutton.Parent = main
helpbutton.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
helpbutton.Position = UDim2.new(0.0355384238, 0, 0.803320706, 0)
helpbutton.Size = UDim2.new(0, 100, 0, 30)
helpbutton.Font = Enum.Font.Nunito
helpbutton.Text = "Help"
helpbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
helpbutton.TextSize = 20.000
helpbutton.MouseButton1Click:connect(function()
	local function Tween(object, dest, timing, direction, style)
		timing = timing or 10
		direction = direction or Enum.EasingDirection.Out
		style = style or Enum.EasingStyle.Exponential

		game.TweenService:Create(object, TweenInfo.new(timing, style, direction), dest):Play()
	end
	help_2.Position = UDim2.new(0.5, 0, 5, 0)
	Tween(help_2, {Position = UDim2.new(0.5, 0, 0.5, 0)}, 0.75, Enum.EasingDirection.Out)
end)

UICorner_19.Parent = helpbutton

re.Name = "re"
re.Parent = main
re.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
re.BackgroundTransparency = 1.000
re.BorderSizePixel = 0
re.Position = UDim2.new(0.398000002, 0, 0.170000002, 0)
re.Size = UDim2.new(0, 49, 0, 15)
re.Font = Enum.Font.Nunito
re.Text = "<b>Re</b>"
re.TextColor3 = Color3.fromRGB(255, 255, 255)
re.TextSize = 20.000
re.RichText = true

tp.Name = "tp"
tp.Parent = main
tp.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
tp.BackgroundTransparency = 1.000
tp.BorderSizePixel = 0
tp.Position = UDim2.new(0.398000002, 0, 0.27700001, 0)
tp.Size = UDim2.new(0, 49, 0, 15)
tp.Font = Enum.Font.Nunito
tp.Text = "<b>TPs</b>"
tp.TextColor3 = Color3.fromRGB(255, 255, 255)
tp.TextSize = 20.000
tp.RichText = true

misc.Name = "misc"
misc.Parent = main
misc.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
misc.BackgroundTransparency = 1.000
misc.BorderSizePixel = 0
misc.Position = UDim2.new(0.398000002, 0, 0.561999977, 0)
misc.Size = UDim2.new(0, 49, 0, 15)
misc.Font = Enum.Font.Nunito
misc.Text = "<b>Misc</b>"
misc.TextColor3 = Color3.fromRGB(255, 255, 255)
misc.TextSize = 20.000
misc.RichText = true

teams.Name = "teams"
teams.Parent = main
teams.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
teams.BackgroundTransparency = 1.000
teams.BorderSizePixel = 0
teams.Position = UDim2.new(0.398000002, 0, 0.666000009, 0)
teams.Size = UDim2.new(0, 49, 0, 15)
teams.Font = Enum.Font.Nunito
teams.Text = "<b>Teams</b>"
teams.TextColor3 = Color3.fromRGB(255, 255, 255)
teams.TextSize = 20.000
teams.RichText = true

help.Name = "help"
help.Parent = main
help.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
help.BackgroundTransparency = 1.000
help.BorderSizePixel = 0
help.Position = UDim2.new(0.398000002, 0, 0.769999981, 0)
help.Size = UDim2.new(0, 49, 0, 15)
help.Font = Enum.Font.Nunito
help.Text = "<b>Help</b>"
help.TextColor3 = Color3.fromRGB(255, 255, 255)
help.TextSize = 20.000
help.RichText = true

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
close.Position = UDim2.new(0.858615398, 0, 0.0291132014, 0)
close.Size = UDim2.new(0, 25, 0, 25)
close.Font = Enum.Font.Nunito
close.Text = "x"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextSize = 25.000
close.MouseButton1Click:connect(function()
	local function Tween(object, dest, timing, direction, style)
		timing = timing or 60
		direction = direction or Enum.EasingDirection.Out
		style = style or Enum.EasingStyle.Exponential

		game.TweenService:Create(object, TweenInfo.new(timing, style, direction), dest):Play()
	end
	main.Position = main.Position
	Tween(main, {Position = UDim2.new(0.8, 0, -2.0, 0)}, 0.75, Enum.EasingDirection.Out)
end)

UICorner_20.Parent = close

changelog.Name = "changelog"
changelog.Parent = ScreenGui
changelog.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
changelog.Position = UDim2.new(-1.16119587, 0, 5, 0)
changelog.Size = UDim2.new(0, 442, 0, 295)
changelog.Active = true
changelog.Draggable = false

UICorner_21.Parent = changelog

gradient_2.Name = "gradient"
gradient_2.Parent = changelog
gradient_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gradient_2.BackgroundTransparency = 1.000
gradient_2.Position = UDim2.new(0, 0, -0.00071954244, 0)
gradient_2.Size = UDim2.new(0, 442, 0, 50)
gradient_2.Image = "rbxassetid://7093258509"

UICorner_22.Parent = gradient_2

gradientbottom_2.Name = "gradientbottom"
gradientbottom_2.Parent = changelog
gradientbottom_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gradientbottom_2.BackgroundTransparency = 1.000
gradientbottom_2.BorderSizePixel = 0
gradientbottom_2.Position = UDim2.new(-0.00226244354, 0, 0.829372048, 0)
gradientbottom_2.Size = UDim2.new(0, 442, 0, 50)
gradientbottom_2.Image = "rbxassetid://7093259193"

UICorner_23.Parent = gradientbottom_2

closechange.Name = "closechange"
closechange.Parent = changelog
closechange.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
closechange.Position = UDim2.new(0.908389151, 0, 0.110469133, 0)
closechange.Size = UDim2.new(0, 25, 0, 25)
closechange.Font = Enum.Font.Nunito
closechange.Text = "x"
closechange.TextColor3 = Color3.fromRGB(255, 255, 255)
closechange.TextSize = 25.000
closechange.MouseButton1Click:connect(function()
	local function Tween(object, dest, timing, direction, style)
		timing = timing or 60
		direction = direction or Enum.EasingDirection.Out
		style = style or Enum.EasingStyle.Exponential

		game.TweenService:Create(object, TweenInfo.new(timing, style, direction), dest):Play()
	end
	changelog.Position = UDim2.new(-1.16119587, 0, 0.5, 0)
	Tween(changelog, {Position = UDim2.new(-1.6611954, 0, 5.77465111, 0)}, 0.75, Enum.EasingDirection.Out)
end)

UICorner_24.Parent = closechange

changetitle.Name = "changetitle"
changetitle.Parent = changelog
changetitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
changetitle.BackgroundTransparency = 1.000
changetitle.Position = UDim2.new(0.0203619916, 0, 0.0711864382, 0)
changetitle.Size = UDim2.new(0, 424, 0, 50)
changetitle.Font = Enum.Font.Nunito
changetitle.Text = "Changelog"
changetitle.TextColor3 = Color3.fromRGB(255, 255, 255)
changetitle.TextSize = 25.000

changedesc.Name = "changedesc"
changedesc.Parent = changelog
changedesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
changedesc.BackgroundTransparency = 1.000
changedesc.Position = UDim2.new(0.0199999996, 0, 0.237779617, 0)
changedesc.Size = UDim2.new(0, 424, 0, 201)
changedesc.Font = Enum.Font.Nunito
changedesc.Text = "This is the first version, so there are no new features."
changedesc.TextColor3 = Color3.fromRGB(255, 255, 255)
changedesc.TextSize = 17.000
changedesc.TextWrapped = true
changedesc.TextXAlignment = Enum.TextXAlignment.Left
changedesc.TextYAlignment = Enum.TextYAlignment.Top
changedesc.RichText = true

info.Name = "info"
info.Parent = ScreenGui
info.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
info.Position = UDim2.new(-1.16119587, 0, 5, 0)
info.Size = UDim2.new(0, 442, 0, 295)
info.Active = true
info.Draggable = false

UICorner_25.Parent = info

gradient_3.Name = "gradient"
gradient_3.Parent = info
gradient_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gradient_3.BackgroundTransparency = 1.000
gradient_3.Position = UDim2.new(0, 0, -0.000719490694, 0)
gradient_3.Size = UDim2.new(0, 442, 0, 50)
gradient_3.Image = "rbxassetid://7093258509"

UICorner_26.Parent = gradient_3

gradientbottom_3.Name = "gradientbottom"
gradientbottom_3.Parent = info
gradientbottom_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gradientbottom_3.BackgroundTransparency = 1.000
gradientbottom_3.BorderSizePixel = 0
gradientbottom_3.Position = UDim2.new(0, 0, 0.829372108, 0)
gradientbottom_3.Size = UDim2.new(0, 442, 0, 50)
gradientbottom_3.Image = "rbxassetid://7093259193"

UICorner_27.Parent = gradientbottom_3

closeinfo.Name = "closeinfo"
closeinfo.Parent = info
closeinfo.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
closeinfo.Position = UDim2.new(0.908389151, 0, 0.110469133, 0)
closeinfo.Size = UDim2.new(0, 25, 0, 25)
closeinfo.Font = Enum.Font.Nunito
closeinfo.Text = "x"
closeinfo.TextColor3 = Color3.fromRGB(255, 255, 255)
closeinfo.TextSize = 25.000
closeinfo.MouseButton1Click:connect(function()
	local function Tween(object, dest, timing, direction, style)
		timing = timing or 60
		direction = direction or Enum.EasingDirection.Out
		style = style or Enum.EasingStyle.Exponential

		game.TweenService:Create(object, TweenInfo.new(timing, style, direction), dest):Play()
	end
	info.Position = UDim2.new(0.5, 0, 0.5, 0)
	Tween(info, {Position = UDim2.new(0.5, 0, 5, 0)}, 0.75, Enum.EasingDirection.Out)
end)

UICorner_28.Parent = closeinfo

infotitle.Name = "infotitle"
infotitle.Parent = info
infotitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infotitle.BackgroundTransparency = 1.000
infotitle.Position = UDim2.new(0.0203619916, 0, 0.0711864382, 0)
infotitle.Size = UDim2.new(0, 424, 0, 50)
infotitle.Font = Enum.Font.Nunito
infotitle.Text = "Information"
infotitle.TextColor3 = Color3.fromRGB(255, 255, 255)
infotitle.TextSize = 25.000

infodesc.Name = "infodesc"
infodesc.Parent = info
infodesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infodesc.BackgroundTransparency = 1.000
infodesc.Position = UDim2.new(0.0203619916, 0, 0.240677968, 0)
infodesc.Size = UDim2.new(0, 424, 0, 201)
infodesc.Font = Enum.Font.Nunito
infodesc.Text = "This GUI is meant to be a non-abusive GUI that can just keep you gunfighting with the rest of the server. An abusive GUI will be released soon.<br/><br/>Credits:<br/><br/>topit#2083: UI Design<br/>cepn#2938: Scripting<br/>This script is a modified version of Nihilize H4X.<br/>Original Script: Nihilize"
infodesc.TextColor3 = Color3.fromRGB(255, 255, 255)
infodesc.TextSize = 17.000
infodesc.TextWrapped = true
infodesc.TextXAlignment = Enum.TextXAlignment.Left
infodesc.TextYAlignment = Enum.TextYAlignment.Top
infodesc.RichText = true

help_2.Name = "help"
help_2.Parent = ScreenGui
help_2.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
help_2.Position = UDim2.new(-1.16119587, 0, 5, 0)
help_2.Size = UDim2.new(0, 442, 0, 295)
help_2.Active = true
help_2.Draggable = false

UICorner_29.Parent = help_2

gradient_4.Name = "gradient"
gradient_4.Parent = help_2
gradient_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gradient_4.BackgroundTransparency = 1.000
gradient_4.Position = UDim2.new(0, 0, -0.00071954244, 0)
gradient_4.Size = UDim2.new(0, 442, 0, 50)
gradient_4.Image = "rbxassetid://7093258509"

UICorner_30.Parent = gradient_4

gradientbottom_4.Name = "gradientbottom"
gradientbottom_4.Parent = help_2
gradientbottom_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gradientbottom_4.BackgroundTransparency = 1.000
gradientbottom_4.BorderSizePixel = 0
gradientbottom_4.Position = UDim2.new(0, 0, 0.829372108, 0)
gradientbottom_4.Size = UDim2.new(0, 442, 0, 50)
gradientbottom_4.Image = "rbxassetid://7093259193"

UICorner_31.Parent = gradientbottom_4

helpdesc.Name = "helpdesc"
helpdesc.Parent = help_2
helpdesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
helpdesc.BackgroundTransparency = 1.000
helpdesc.Position = UDim2.new(0.0203619916, 0, 0.240677968, 0)
helpdesc.Size = UDim2.new(0, 424, 0, 204)
helpdesc.Font = Enum.Font.Nunito
helpdesc.Text = "The function of each button will be listed here:<br/>Refresh: Respawns you and teleports you back to your last position.<br/>Respawn: Respawns your character.<br/>All teleport buttons will teleport you to the specified place.<br/>Lock: Auto-run, anti-tase, and infinite stamina. You cannot crouch while using this and you can refresh to disable the mode.<br/>Get Guns is self explanatory. If you do not own the M4A1 gamepass, you will recieve a converted AK-47.<br/>The team buttons are all self explanatory, except for the darker blue button. The darker blue button under the teams section will team you to guards regardless if it is full. The lighter blue button will just team you to guards, and it will not work if it is full.<br/>The buttons under the help section will open the corresponding section."
helpdesc.TextColor3 = Color3.fromRGB(255, 255, 255)
helpdesc.TextSize = 16.000
helpdesc.TextWrapped = true
helpdesc.TextXAlignment = Enum.TextXAlignment.Left
helpdesc.TextYAlignment = Enum.TextYAlignment.Top
helpdesc.RichText = true

helptitle.Name = "helptitle"
helptitle.Parent = help_2
helptitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
helptitle.BackgroundTransparency = 1.000
helptitle.Position = UDim2.new(0.0203619916, 0, 0.0711864382, 0)
helptitle.Size = UDim2.new(0, 424, 0, 50)
helptitle.Font = Enum.Font.Nunito
helptitle.Text = "Help"
helptitle.TextColor3 = Color3.fromRGB(255, 255, 255)
helptitle.TextSize = 25.000

closehelp.Name = "closehelp"
closehelp.Parent = help_2
closehelp.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
closehelp.Position = UDim2.new(0.908389151, 0, 0.110469133, 0)
closehelp.Size = UDim2.new(0, 25, 0, 25)
closehelp.Font = Enum.Font.Nunito
closehelp.Text = "x"
closehelp.TextColor3 = Color3.fromRGB(255, 255, 255)
closehelp.TextSize = 25.000
closehelp.MouseButton1Click:connect(function()
	local function Tween(object, dest, timing, direction, style)
		timing = timing or 60
		direction = direction or Enum.EasingDirection.Out
		style = style or Enum.EasingStyle.Exponential

		game.TweenService:Create(object, TweenInfo.new(timing, style, direction), dest):Play()
	end
	help_2.Position = UDim2.new(-1.16119587, 0, 0.5, 0)
	Tween(help_2, {Position = UDim2.new(-1.16119587, 0, 5, 0)}, 0.75, Enum.EasingDirection.Out)
end)

UICorner_32.Parent = closehelp

changelogbutton.Name = "changelogbutton"
changelogbutton.Parent = main
changelogbutton.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
changelogbutton.Position = UDim2.new(0.585538447, 0, 0.803320706, 0)
changelogbutton.Size = UDim2.new(0, 100, 0, 30)
changelogbutton.Font = Enum.Font.Nunito
changelogbutton.Text = "Changelog"
changelogbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
changelogbutton.TextSize = 20.000
changelogbutton.MouseButton1Click:connect(function()
	local function Tween(object, dest, timing, direction, style)
		timing = timing or 10
		direction = direction or Enum.EasingDirection.Out
		style = style or Enum.EasingStyle.Exponential

		game.TweenService:Create(object, TweenInfo.new(timing, style, direction), dest):Play()
	end
	changelog.Position = UDim2.new(0.5, 0, 5, 0)
	Tween(changelog, {Position = UDim2.new(0.5, 0, 0.5, 0)}, 0.75, Enum.EasingDirection.Out)
end)

UICorner_33.Parent = changelogbutton

infobutton.Name = "infobutton"
infobutton.Parent = main
infobutton.BackgroundColor3 = Color3.fromRGB(50, 50, 57)
infobutton.Position = UDim2.new(0.0355384238, 0, 0.885867953, 0)
infobutton.Size = UDim2.new(0, 243, 0, 30)
infobutton.Font = Enum.Font.Nunito
infobutton.Text = "Information"
infobutton.TextColor3 = Color3.fromRGB(255, 255, 255)
infobutton.TextSize = 20.000
infobutton.MouseButton1Click:connect(function()
	local function Tween(object, dest, timing, direction, style)
		timing = timing or 10
		direction = direction or Enum.EasingDirection.Out
		style = style or Enum.EasingStyle.Exponential

		game.TweenService:Create(object, TweenInfo.new(timing, style, direction), dest):Play()
	end
	info.Position = UDim2.new(0.5, 0, 5, 0)
	Tween(info, {Position = UDim2.new(0.5, 0, 0.5, 0)}, 0.75, Enum.EasingDirection.Out)
end)

UICorner_34.Parent = infobutton

local function Tween(object, dest, timing, direction, style)
	timing = timing or 0.25
	direction = direction or Enum.EasingDirection.Out
	style = style or Enum.EasingStyle.Exponential

	game.TweenService:Create(object, TweenInfo.new(timing, style, direction), dest):Play()
end
main.Position = UDim2.new(0.8, 0, 5, 0)
Tween(main, {Position = UDim2.new(0.8, 0, 0.0500000007, 0)}, 0.75, Enum.EasingDirection.Out)

local Dragging = {}
main.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		Dragging[1] = true
		Dragging[2] = input.Position
		Dragging[3] = main.Position
	end
end)
main.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		Dragging[1] = false
	end
end)
game:GetService"UserInputService".InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		if Dragging[1] then
			local delta = input.Position - Dragging[2]
			Tween(main, {Position = UDim2.new(Dragging[3].X.Scale, Dragging[3].X.Offset + delta.X, Dragging[3].Y.Scale, Dragging[3].Y.Offset + delta.Y)}, 0.75)
		end
	end
end)

local Dragging = {}
help_2.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		Dragging[1] = true
		Dragging[2] = input.Position
		Dragging[3] = help_2.Position
	end
end)
help_2.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		Dragging[1] = false
	end
end)
game:GetService"UserInputService".InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		if Dragging[1] then
			local delta = input.Position - Dragging[2]
			Tween(help_2, {Position = UDim2.new(Dragging[3].X.Scale, Dragging[3].X.Offset + delta.X, Dragging[3].Y.Scale, Dragging[3].Y.Offset + delta.Y)}, 0.75)
		end
	end
end)

local Dragging = {}
changelog.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		Dragging[1] = true
		Dragging[2] = input.Position
		Dragging[3] = changelog.Position
	end
end)
changelog.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		Dragging[1] = false
	end
end)
game:GetService"UserInputService".InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		if Dragging[1] then
			local delta = input.Position - Dragging[2]
			Tween(changelog, {Position = UDim2.new(Dragging[3].X.Scale, Dragging[3].X.Offset + delta.X, Dragging[3].Y.Scale, Dragging[3].Y.Offset + delta.Y)}, 0.75)
		end
	end
end)

local Dragging = {}
info.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		Dragging[1] = true
		Dragging[2] = input.Position
		Dragging[3] = info.Position
	end
end)
info.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		Dragging[1] = false
	end
end)
game:GetService"UserInputService".InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		if Dragging[1] then
			local delta = input.Position - Dragging[2]
			Tween(info, {Position = UDim2.new(Dragging[3].X.Scale, Dragging[3].X.Offset + delta.X, Dragging[3].Y.Scale, Dragging[3].Y.Offset + delta.Y)}, 0.75)
		end
	end
end)
