--[[indep from ui variables]]--
local HttpService = game:GetService("HttpService")
local PlayerService = game:GetService("Players")
local scriptversion = "1.1.0"

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



local JFR = loadstring(game:HttpGet('https://raw.githubusercontent.com/topitbopit/Jeff-2.3-Framework/main/lib.lua', true))()

local function NewlineOnLabel(inst)
    JFR.NewBoard("", inst.Parent, {Position = UDim2.new(0, 30 + inst.TextBounds.X, 0, inst.Position.Y.Offset+12.5), Size = UDim2.new(0, 360 - inst.TextBounds.X,0, 2), BackgroundColor3 = JFR.Theme.shade7, ZIndex = 200})
end

local function NewLine(inst, y)
    JFR.NewBoard("", inst, {Position = UDim2.new(0, 10, 0, y), Size = UDim2.new(0, 380, 0, 2), BackgroundColor3 = JFR.Theme.shade7, ZIndex = 200})
end

local function StartGradient(parent, y, x)
    x = x or 400
    y = y or 2
    
    local f = Instance.new("ImageLabel")
    f.Image = "rbxassetid://7093258509"
    f.Position = UDim2.new(0, 2, 0, y)
    f.Parent = parent
    f.Size = UDim2.new(0, x, 0, 50)
    f.BackgroundTransparency = 1
    f.BorderSizePixel = 0
    f.ZIndex = 125
end
local function EndGradient(parent, y, x)
    x = x or 400
    y = y or -50
    
    local f = Instance.new("ImageLabel")
    f.Image = "rbxassetid://7093259193"
    f.Position = UDim2.new(0, 2, 1, y)
    f.Parent = parent
    f.Size = UDim2.new(0, x, 0, 50)
    f.BackgroundTransparency = 1
    f.BorderSizePixel = 0
    f.ZIndex = 125
end

JFR.SetFont(Enum.Font["Nunito"])
JFR.SetBold(false)
JFR.SetRoundAmount(7)
--JFR.SetRoundifyEnabled(false)

local num = math.random(7, 10) / 10
JFR.SetTheme({r = num, g = num, b = num + (math.random(1,4) / 10)})


--init y values
local y = 15;
local page = "Page_Home"

--Screen gui
local screen = JFR.GetScreen()
screen.Name = "jhoops_"..scriptversion

--Background
local bg = JFR.NewBoard("no", screen, {Position = UDim2.new(0.7, 0, 1.3, 0)}, true)
local parentb = JFR.GetParentBoard()



--Extra gui stuff
JFR.NewText("Title", bg, {Position = UDim2.new(0, 15, 0, 15), Size = UDim2.new(0, 400, 0, 25), Text = "Cepn's PL GUI <font size='15'>v"..scriptversion.."</font>", TextSize = 35, TextYAlignment = Enum.TextYAlignment.Center})
JFR.NewBoard("Shadow", bg, {ZIndex = 0, Position = UDim2.new(0, 3, 0, 3), Size = UDim2.new(0, 500, 0, 265), BackgroundTransparency = 0.3, BackgroundColor3 = JFR.Theme.shadow})
JFR.NewBoard("Roundedbottom1", bg, {Position = UDim2.new(0, 0, 1, -10), Size = UDim2.new(0, 125, 0, 25), BackgroundColor3 = JFR.Theme.shade4})
JFR.NewBoard("Roundedbottom2", bg, {Position = UDim2.new(0, 100, 1, -10), Size = UDim2.new(0, 25, 0, 25), BackgroundColor3 = JFR.Theme.shade3, Unroundify = true})
JFR.NewBoard("Roundedbottom3", bg, {Position = UDim2.new(0, 115, 1, -10), Size = UDim2.new(0, 385, 0, 25), BackgroundColor3 = JFR.Theme.shade3})
JFR.NewBoard("Outline1", bg, {Position = UDim2.new(0, 100, 0, 50), Size = UDim2.new(0, 2, 0, 200), BackgroundColor3 = JFR.Theme.shade6, ZIndex = 200})
JFR.NewBoard("Outline2", bg, {Position = UDim2.new(0, 0, 0, 50), Size = UDim2.new(0, 500, 0, 2), BackgroundColor3 = JFR.Theme.shade6, ZIndex = 200})

--Menus
local page_home = JFR.NewMenu("Page_Home", bg, {Position = UDim2.new(0, 100, 0, 250), CanvasSize = UDim2.new(0, 100, 0, 100)})
local page_ball = JFR.NewMenu("Page_Ball", bg, {Position = UDim2.new(0, 100, 0, 250), CanvasSize = UDim2.new(0, 100, 0, 100), Invisible = true})
local page_player = JFR.NewMenu("Page_Player", bg, {Position = UDim2.new(0, 100, 0, 250), CanvasSize = UDim2.new(0, 100, 0, 100), Invisible = true})
local page_misc = JFR.NewMenu("Page_Misc", bg, {Position = UDim2.new(0, 100, 0, 250), CanvasSize = UDim2.new(0, 100, 0, 100), Invisible = true})
local page_settings = JFR.NewMenu("Page_Settings", bg, {Position = UDim2.new(0, 100, 0, 250), CanvasSize = UDim2.new(0, 100, 0, 100), Invisible = true})

--Tabs
local menu_tabs = JFR.NewMenu("Menu_Tabs", bg, {Position = UDim2.new(0, 0, 0, 250), Size = UDim2.new(0, 100, 0, 200), CanvasSize = UDim2.new(0, 80, 0, 100), BackgroundColor3 = JFR.Theme.shade4})
JFR.NewButton("Tab_Home", menu_tabs, {Position = UDim2.new(0, 12, 0, y), Size = UDim2.new(0, 75, 0, 25), Text = "Home"}, {on = function() 
    JFR.OpenObject(JFR.GetInstance("Tab_Home"     ));
    JFR.CloseObject(JFR.GetInstance("Tab_Ball"    ));
    JFR.CloseObject(JFR.GetInstance("Tab_Player"  ));
    JFR.CloseObject(JFR.GetInstance("Tab_Misc"    ));
    JFR.CloseObject(JFR.GetInstance("Tab_Settings"));

    JFR.GetInstance("Page_Home"    ).Visible = true
    JFR.GetInstance("Page_Ball"    ).Visible = false
    JFR.GetInstance("Page_Player"  ).Visible = false
    JFR.GetInstance("Page_Misc"    ).Visible = false
    JFR.GetInstance("Page_Settings").Visible = false
    
    page = "Page_Home"
end})
JFR.OpenObject(JFR.GetInstance("Tab_Home"))
y=y+40;
JFR.NewButton("Tab_Ball", menu_tabs, {Position = UDim2.new(0, 12, 0, y), Size = UDim2.new(0, 75, 0, 25), Text = "Re"}, {on = function()
    JFR.CloseObject(JFR.GetInstance("Tab_Home"    ));
    JFR.OpenObject(JFR.GetInstance("Tab_Ball"     ));
    JFR.CloseObject(JFR.GetInstance("Tab_Player"  ));
    JFR.CloseObject(JFR.GetInstance("Tab_Misc"    ));
    JFR.CloseObject(JFR.GetInstance("Tab_Settings"));

    JFR.GetInstance("Page_Home"    ).Visible = false
    JFR.GetInstance("Page_Ball"    ).Visible = true
    JFR.GetInstance("Page_Player"  ).Visible = false
    JFR.GetInstance("Page_Misc"    ).Visible = false
    JFR.GetInstance("Page_Settings").Visible = false
    
    page = "Page_Ball"
end})
y=y+40;
JFR.NewButton("Tab_Player", menu_tabs, {Position = UDim2.new(0, 12, 0, y), Size = UDim2.new(0, 75, 0, 25), Text = "Teleports"}, {on = function() 
    JFR.CloseObject(JFR.GetInstance("Tab_Home"    ));
    JFR.CloseObject(JFR.GetInstance("Tab_Ball"    ));
    JFR.OpenObject(JFR.GetInstance("Tab_Player"   ));
    JFR.CloseObject(JFR.GetInstance("Tab_Misc"    ));
    JFR.CloseObject(JFR.GetInstance("Tab_Settings"));

    JFR.GetInstance("Page_Home"    ).Visible = false
    JFR.GetInstance("Page_Ball"    ).Visible = false
    JFR.GetInstance("Page_Player"  ).Visible = true
    JFR.GetInstance("Page_Misc"    ).Visible = false
    JFR.GetInstance("Page_Settings").Visible = false
    
    page = "Page_Player"
end})
y=y+40;
JFR.NewButton("Tab_Misc", menu_tabs, {Position = UDim2.new(0, 12, 0, y), Size = UDim2.new(0, 75, 0, 25), Text = "Misc"}, {on = function() 
    JFR.CloseObject(JFR.GetInstance("Tab_Home"    ));
    JFR.CloseObject(JFR.GetInstance("Tab_Ball"    ));
    JFR.CloseObject(JFR.GetInstance("Tab_Player"  ));
    JFR.OpenObject(JFR.GetInstance("Tab_Misc"     ));
    JFR.CloseObject(JFR.GetInstance("Tab_Settings"));

    JFR.GetInstance("Page_Home"    ).Visible = false
    JFR.GetInstance("Page_Ball"    ).Visible = false
    JFR.GetInstance("Page_Player"  ).Visible = false
    JFR.GetInstance("Page_Misc"    ).Visible = true
    JFR.GetInstance("Page_Settings").Visible = false
    
    page = "Page_Misc"
end})
y=y+40;
JFR.NewButton("Tab_Settings", menu_tabs, {Position = UDim2.new(0, 12, 0, y), Size = UDim2.new(0, 75, 0, 25), Text = "Teams"}, {on = function() 
    JFR.CloseObject(JFR.GetInstance("Tab_Home"    ));
    JFR.CloseObject(JFR.GetInstance("Tab_Ball"    ));
    JFR.CloseObject(JFR.GetInstance("Tab_Player"  ));
    JFR.CloseObject(JFR.GetInstance("Tab_Misc"    ));
    JFR.OpenObject(JFR.GetInstance("Tab_Settings" ));

    JFR.GetInstance("Page_Home"    ).Visible = false
    JFR.GetInstance("Page_Ball"    ).Visible = false
    JFR.GetInstance("Page_Player"  ).Visible = false
    JFR.GetInstance("Page_Misc"    ).Visible = false
    JFR.GetInstance("Page_Settings").Visible = true
    
    page = "Page_Settings"
end})

JFR.NewButton("MinimizeButton", bg, {Position = UDim2.new(1, -60, 0, 5), Size = UDim2.new(0, 25, 0, 25), BackgroundColor3 = JFR.Theme.shade7, Text = "-", TextSize = 14}, {
    on = function()
        
        JFR.TweenSize(parentb, UDim2.new(0, parentb.Size.X.Offset, 0, 50), 0.75, Enum.EasingDirection.Out)
        JFR.TweenSize(JFR.GetInstance("Shadow"), UDim2.new(0, parentb.Size.X.Offset, 0, 50), 0.75, Enum.EasingDirection.Out)
        
        local function YoMom(a)
            JFR.Async(function() 
                JFR.TweenSize(a, UDim2.new(a.Size.X.Scale, a.Size.X.Offset, a.Size.Y.Scale, 0), 0.75, Enum.EasingDirection.Out)
                wait(0.75)
                a.Visible = false
            end)
        end
        YoMom(JFR.GetInstance("Page_Home"))
        YoMom(JFR.GetInstance("Page_Misc"))
        YoMom(JFR.GetInstance("Page_Player"))
        YoMom(JFR.GetInstance("Page_Ball"))
        YoMom(JFR.GetInstance("Page_Settings"))
        YoMom(JFR.GetInstance("Menu_Tabs"))
        
        YoMom(JFR.GetInstance("Outline1"))
        YoMom(JFR.GetInstance("Outline2"))
        
        YoMom(JFR.GetInstance("Roundedbottom3"))
        YoMom(JFR.GetInstance("Roundedbottom2"))
        YoMom(JFR.GetInstance("Roundedbottom1"))

    end,
    off = function() 
        
        local function YorMom(a, y)
            JFR.Async(function()
                a.Visible = true
                JFR.TweenSize(a, UDim2.new(a.Size.X.Scale, a.Size.X.Offset, a.Size.Y.Scale, y), 0.75, Enum.EasingDirection.Out)
            end)
        end
        
        JFR.TweenSize(parentb, UDim2.new(0, parentb.Size.X.Offset, 0, 250), 0.75, Enum.EasingDirection.Out)
        JFR.TweenSize(JFR.GetInstance("Shadow"), UDim2.new(0, parentb.Size.X.Offset, 0, 265), 0.75, Enum.EasingDirection.Out)
    
        YorMom(JFR.GetInstance("Page_Home"), 200)
        YorMom(JFR.GetInstance("Page_Misc"), 200)
        YorMom(JFR.GetInstance("Page_Player"), 200)
        YorMom(JFR.GetInstance("Page_Ball"), 200)
        YorMom(JFR.GetInstance("Page_Settings"), 200)
        YorMom(JFR.GetInstance("Menu_Tabs"), 200)
        
        
        JFR.GetInstance("Page_Home"    ).Visible = false
        JFR.GetInstance("Page_Misc"    ).Visible = false
        JFR.GetInstance("Page_Player"  ).Visible = false
        JFR.GetInstance("Page_Ball"    ).Visible = false
        JFR.GetInstance("Page_Settings").Visible = false
        JFR.GetInstance(page).Visible = true
        
    
        YorMom(JFR.GetInstance("Outline1"), 200)
        YorMom(JFR.GetInstance("Outline2"), 2)
    
        YorMom(JFR.GetInstance("Roundedbottom1"), 25)
        YorMom(JFR.GetInstance("Roundedbottom2"), 25)
        YorMom(JFR.GetInstance("Roundedbottom3"), 25)


    end
})

JFR.NewButton("CloseButton", bg, {Position = UDim2.new(1, -30, 0, 5), Size = UDim2.new(0, 25, 0, 25), BackgroundColor3 = JFR.Theme.shade7, Text = "X", TextSize = 14}, {on = function()
    JFR.TweenPosition(parentb, UDim2.new(parentb.Position.X.Scale, parentb.Position.X.Offset, 1.1, 0), 0.75, Enum.EasingDirection.In)
    JFR.TweenCustom(parentb, {Size = UDim2.new(0, parentb.Size.X.Offset, 0, 0)}, 0.75, Enum.EasingDirection.In)
    wait(0.25)
    JFR.FadeOut(parentb, 1)
    wait(0.5)
    screen:Destroy() 
end})


StartGradient(JFR.GetInstance("Page_Home"))
EndGradient(JFR.GetInstance("Page_Home"))

StartGradient(JFR.GetInstance("Page_Misc"))
EndGradient(JFR.GetInstance("Page_Misc"))

StartGradient(JFR.GetInstance("Page_Player"))
EndGradient(JFR.GetInstance("Page_Player"))

StartGradient(JFR.GetInstance("Page_Ball"))
EndGradient(JFR.GetInstance("Page_Ball"))

StartGradient(JFR.GetInstance("Page_Settings"))
EndGradient(JFR.GetInstance("Page_Settings"))


y=5;
JFR.NewText("HomeText1", page_home, {Position = UDim2.new(0.05, -10, 0, y), Size = UDim2.new(0, 400, 0, 25), Text = "Home", TextSize = 20})
NewlineOnLabel(JFR.GetInstance("HomeText1"))

y=y+30;
JFR.NewText("HomeText2", page_home, {Position = UDim2.new(0, 10, 0, 30), Size = UDim2.new(0, 400, 0, 75), Text = "Cepn's PL GUI made by cepn#2938<br/>Join the discord:<br/><br/><br/><br/><br/><br/>Version "..scriptversion, TextSize = 20})
NewLine(page_home, 165)

JFR.NewButton("HomeDiscord", page_home, {Position = UDim2.new(0, 10, 0, 75), Size = UDim2.new(0, 380, 0, 25), Text = "Copy Discord Invite to Clipboard"}, {on = function()
    function() setclipboard"https://discord.gg/yDPP74FhuZ"
end})

y=5;
JFR.NewText("BallText1", page_ball, {Position = UDim2.new(0.05, -10, 0, y), Size = UDim2.new(0, 400, 0, 25), Text = "Refresh", TextSize = 20})
NewlineOnLabel(JFR.GetInstance("BallText1"))
y=y+80;
JFR.NewButton("BallAimbot", page_ball, {Position = UDim2.new(0.075, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Refresh"}, {on = function()
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
end})

JFR.NewButton("BallSpam", page_ball, {Position = UDim2.new(0.675, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Respawn"}, {on = function()
    local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
	local plr = game.Players.LocalPlayer.Name
	local gayevent = game:GetService("Workspace").Remote.loadchar
	gayevent:InvokeServer(plr)
end})

y=5;
JFR.NewText("TPText1", page_player, {Position = UDim2.new(0.05, -10, 0, y), Size = UDim2.new(0, 400, 0, 25), Text = "Teleports", TextSize = 20})
NewlineOnLabel(JFR.GetInstance("TPText1"))
y=y+60;
JFR.NewButton("ArmoryTP", page_player, {Position = UDim2.new(0.075, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Armory TP"}, {on = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(798,99,2260)
    JFR.SendMessage({Horizontal = true, Text = "<font size='30'>Teleported to <b>Armory</b>.</font>", Size = UDim2.new(0, 500, 0, 75), Position = UDim2.new(0.05, 0, 0.9, 0), Delay = 3})
end})

JFR.NewButton("CafeTP", page_player, {Position = UDim2.new(0.375, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Cafeteria TP"}, {on = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879,99,2247)
    JFR.SendMessage({Horizontal = true, Text = "<font size='30'>Teleported to <b>Cafeteria</b>.</font>", Size = UDim2.new(0, 500, 0, 75), Position = UDim2.new(0.05, 0, 0.9, 0), Delay = 3})
end})

JFR.NewButton("CellsTP", page_player, {Position = UDim2.new(0.675, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Cells TP"}, {on = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(910,99,2477)
    JFR.SendMessage({Horizontal = true, Text = "<font size='30'>Teleported to <b>Cells</b>.</font>", Size = UDim2.new(0, 500, 0, 75), Position = UDim2.new(0.05, 0, 0.9, 0), Delay = 3})
end})

y=y+40;
JFR.NewButton("YardTP", page_player, {Position = UDim2.new(0.075, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Yard TP"}, {on = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779,99,2477)
    JFR.SendMessage({Horizontal = true, Text = "<font size='30'>Teleported to <b>Yard</b>.</font>", Size = UDim2.new(0, 500, 0, 75), Position = UDim2.new(0.05, 0, 0.9, 0), Delay = 3})
end})

JFR.NewButton("BackTP", page_player, {Position = UDim2.new(0.375, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Back Hall TP"}, {on = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(980, 101, 2327)
    JFR.SendMessage({Horizontal = true, Text = "<font size='30'>Teleported to <b>Back Hall</b>.</font>", Size = UDim2.new(0, 500, 0, 75), Position = UDim2.new(0.05, 0, 0.9, 0), Delay = 3})
end})

JFR.NewButton("NexusTP", page_player, {Position = UDim2.new(0.675, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Nexus TP"}, {on = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879,99,2377)
    JFR.SendMessage({Horizontal = true, Text = "<font size='30'>Teleported to <b>Nexus</b>.</font>", Size = UDim2.new(0, 500, 0, 75), Position = UDim2.new(0.05, 0, 0.9, 0), Delay = 3})
end})

y=5;
JFR.NewText("MiscText1", page_misc, {Position = UDim2.new(0.05, -10, 0, y), Size = UDim2.new(0, 400, 0, 25), Text = "Misc Modules", TextSize = 20})
NewlineOnLabel(JFR.GetInstance("MiscText1"))
y=y+80;
JFR.NewButton("MiscAntiAFK", page_misc, {Position = UDim2.new(0.075, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Get Guns"}, {on = function()
    getGuns()
end})

JFR.NewButton("MiscNightmode", page_misc, {Position = UDim2.new(0.675, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Lock"}, {on = function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
	game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	game.Players.LocalPlayer.CharacterAdded:connect(function()
		game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
		game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	end)
end})

y=5;
JFR.NewText("SettingsText1", page_settings, {Position = UDim2.new(0.05, -10, 0, y), Size = UDim2.new(0, 400, 0, 25), Text = "Teams", TextSize = 20})
NewlineOnLabel(JFR.GetInstance("SettingsText1"))
y=y+60;
JFR.NewButton("SettingsESPColor", page_settings, {Position = UDim2.new(0.075, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Guard"}, {on = function()
    Workspace.Remote.TeamEvent:FireServer("Bright blue")
    JFR.SendMessage({Horizontal = true, Text = "<font size='30'>Changed team to <b>Guard</b>.</font><br/><font size='20'>If your team was not changed, it is most likely because it's full. Use the second button to team yourself if it's full.</font>", Size = UDim2.new(0, 500, 0, 75), Position = UDim2.new(0.05, 0, 0.9, 0), Delay = 3})
end})

JFR.NewButton("SettingsAltPrediction", page_settings, {Position = UDim2.new(0.375, 0, 0, y), Size = UDim2.new(0, 220, 0, 25), Text = "Guard(regardless if it's full)"}, {on = function()
    local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
	workspace.Remote.loadchar:InvokeServer("", "Bright blue")
	wait()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
    JFR.SendMessage({Horizontal = true, Text = "<font size='30'>Changed team to <b>Guard</b>.</font>", Size = UDim2.new(0, 500, 0, 75), Position = UDim2.new(0.05, 0, 0.9, 0), Delay = 3})
end})

y=y+40;

JFR.NewButton("SettingsESPColor4", page_settings, {Position = UDim2.new(0.075, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Inmate"}, {on = function()
    Workspace.Remote.TeamEvent:FireServer("Bright orange")
    JFR.SendMessage({Horizontal = true, Text = "<font size='30'>Changed team to <b>Inmate</b>.</font>", Size = UDim2.new(0, 500, 0, 75), Position = UDim2.new(0.05, 0, 0.9, 0), Delay = 3})
end})

JFR.NewButton("SettingsESPColor2", page_settings, {Position = UDim2.new(0.375, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Neutral"}, {on = function()
    Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
    JFR.SendMessage({Horizontal = true, Text = "<font size='30'>Changed team to <b>Neutral</b>.</font>", Size = UDim2.new(0, 500, 0, 75), Position = UDim2.new(0.05, 0, 0.9, 0), Delay = 3})
end})

JFR.NewButton("SettingsESPColor3", page_settings, {Position = UDim2.new(0.675, 0, 0, y), Size = UDim2.new(0, 100, 0, 25), Text = "Criminal"}, {on = function()
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
    JFR.SendMessage({Horizontal = true, Text = "<font size='30'>Changed team to <b>Criminal</b>.</font>", Size = UDim2.new(0, 500, 0, 75), Position = UDim2.new(0.05, 0, 0.9, 0), Delay = 3})
end})

JFR.Ready()
JFR.SendMessage({Horizontal = true, Text = "<font size='30'>Loaded <b>Cepn's PL GUI</b>.<br/>The current version is </font><b><font size='20'>v"..scriptversion.."</font></b>", Size = UDim2.new(0, 500, 0, 75), Position = UDim2.new(0.05, 0, 0.9, 0), Delay = 3})
