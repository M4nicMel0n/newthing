local sethook = debug and debug.sethook or function() end;
local allowedLine = nil;
local called = 0;
sethook(function(s, line)
    if not line then
        return
    end
    called = called + 1;
    if allowedLine then
        if allowedLine ~= line then
            sethook(error, "l", 5);
        end
    else
        allowedLine = line;
    end
end, "l", 5);
(function() end)();
(function() end)();
sethook();
if called < 2 then
    valid = false;
if called < 2 then
    valid = false;
-- Anti Function Hook
local funcs = {pcall, string.char, debug.getinfo, string.dump}
for i = 1, #funcs do
    if debug.getinfo(funcs[i]).what ~= "C" then
        valid = false;
    end
    if pcall(string.dump, funcs[i]) then
        valid = false;
    end
-- Anti Beautify
local function getTraceback()
    local str = (function(arg)
        return debug.traceback(arg)
    end)("]] .. string .. [[");
    return str;
local traceback = getTraceback();
valid = valid and traceback:sub(1, traceback:find("\n") - 1) == "]] .. string .. [[";
local iter = traceback:gmatch(":(%d*):");
local v, c = iter(), 1;
for i in iter do
    valid = valid and i == v;
    c = c + 1;
valid = valid and c >= 2;
for i=1,50 do
face={string.rep("Retard! ", 6e6)}
end;
ndebugging=true;
local loadTick, curb1, loadCompensation = tick(), tick(), 0
if not isfile("namehub.png") then
    writefile("namehub.png", game:HttpGet("https://raw.githubusercontent.com/NameHubScript/_/refs/heads/main/static(1).png"))
if not isfile("namehub2.png") then
    writefile("namehub2.png", game:HttpGet("https://github.com/NameHubScript/_/raw/refs/heads/main/smallicon.png"))
for i,v in pairs(workspace.Decorations["Diamond Mask Hall"]:GetChildren()) do
	if v:FindFirstChild("GateScript") and v.Name == "Part" then
		v.CanTouch = false
	end
workspace.Decorations["30BeeZone"].Pit.CanTouch = false
local uni = game:GetService("CoreGui").TopBarApp.TopBarApp.UnibarLeftFrame.UnibarMenu
uni["1"].FillDirection = Enum.FillDirection.Horizontal
if uni:FindFirstChild("4") then
    uni["4"]:Destroy()
local MobButton = uni["2"]:Clone()
MobButton.Parent = uni
MobButton.Name = "4"
MobButton.Size = UDim2.fromOffset(46, 44)
MobButton["3"].nine_dot:Destroy()
local chatclone = MobButton["3"].chat
chatclone.Position = UDim2.fromOffset(0, 0)
for i, v in pairs({"5", "Highlighter", "SelectedHighlighter", "IntegrationIconFrame"}) do
    chatclone[v]:Destroy()
local img = Instance.new("ImageButton", chatclone)
img.Size = UDim2.fromOffset(20, 20)
img.Position = UDim2.fromScale(0.5, 0.5)
img.AnchorPoint = Vector2.new(0.5, 0.5)
img.Image = getcustomasset("namehub2.png")
img.BackgroundTransparency = 1
img.MouseButton1Click:Connect(function()
    getgenv().UI.Enabled = not getgenv().UI.Enabled
end)
local honey = "rbxassetid://1472135114"
_G.ColorTheme = Color3.fromRGB(153, 51, 255)
local Players = cloneref(game:GetService("Players"))
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
local TweenService = cloneref(game:GetService("TweenService"))
local Workspace = cloneref(game:GetService("Workspace"))
local StarterGui = cloneref(game:GetService("StarterGui"))
local InputManager = cloneref(game:GetService("VirtualInputManager"))
local FlowerZones = Workspace.FlowerZones
local MonsterSpawners = Workspace.MonsterSpawners
local Collectibles = Workspace.Collectibles
local Sprouts = Workspace.Sprouts
local CoreStats = LocalPlayer.CoreStats
local MinigameGui = require(ReplicatedStorage.Gui.MinigameGui)
local MemoryMatchManager = ReplicatedStorage.MemoryMatchManager
local MemoryMatchGui = ReplicatedStorage.Gui.MemoryMatch
local MemoryMatchModule = require(ReplicatedStorage.Gui.MemoryMatch)
local AlertBoxes = require(ReplicatedStorage.AlertBoxes)
function PushAlert(Text, Style)
    setthreadidentity(2)
    AlertBoxes:Push(Text, nil, Style or "Vicious")
    setthreadidentity(8)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/twitch-stremaer/apex-beta-things/refs/heads/main/new%20ui%20%20lib.lua"))()
local NewLib = Library.MakeWindow(nil, "Bee Swarm Simulator", _G.ColorTheme)
local MainTab = NewLib.MakeTab("Auto Farm", "rbxassetid://10723407389", "Farm in field")
local CombatTab = NewLib.MakeTab("Combat", "rbxassetid://10734975692", "Kill mobs")
local ToysTab = NewLib.MakeTab("Toys", "rbxassetid://10709769508", "Auto toys")
local QuestsTab = NewLib.MakeTab("Auto Quest", "rbxassetid://10709781717", "Quest completer")
local SettingsTab = NewLib.MakeTab("Settings", "rbxassetid://81165630831343", "Config Script")
local FarmBubbles = {Enabled = false, Forced = false}
local FarmFuzzyBombs = {Enabled = false, Forced = false}
local FarmFires = {Enabled = false, Forced = false}
local FarmLeaves = {Enabled = false, Forced = false}
local Variables = {
    FarmField = "Dandelion Field",
    TweenSpeed = 12
local CombatVariables = {
    VicMax = 12,
    VicMin = 1
local ToyVariables = {}
local QuestVariables = {}
local Stored = {
    Leaves = {},
    Flowers = Workspace.Flowers:GetChildren()
local Modules = {}
local FieldsBeeRequirement
Modules.Collectors = require(ReplicatedStorage.Collectors.LocalCollect)
Modules.ClientStatCache = require(ReplicatedStorage.ClientStatCache)
Modules.Events = require(ReplicatedStorage.Events)
Modules.Quests = require(ReplicatedStorage.Quests)
local FlowerTick = tick()
local FlowerPos = nil
local function GetFlower(Field)
    if tick() - FlowerTick > 4 or FlowerPos == nil then
        FlowerTick = tick()
        FlowerPos = Field.Position + Vector3.new(math.random(-30, 30), 0, math.random(-30, 30))
    end
    return FlowerPos
local function GetStats(Optional)
    return Optional and Modules.ClientStatCache:Get(Optional) or Modules.ClientStatCache:Get()
local function FindLazy(path, name, method, requirement)
    if name == nil then
        path = Workspace
    end
    if method == nil then
        method = 1
    end
    if requirement == nil then
        requirement = function()
            return true
        end
    end
    for i, v in pairs(path[method == 0 and "GetChildren" or "GetDescendants"](path)) do
        if tostring(v) == name and requirement(v) then
            return v
        end
    end
local function FindClosestLazy(path, name)
    local Root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if Root then
        local Found = nil
        local BestMagnitude = 9e9
        for i, v in pairs(path:GetChildren()) do
            if type(name) == "function" then
                local Mag = (v.Position - Root.Position).Magnitude
                if Mag <= BestMagnitude and name(v) == true then
                    BestMagnitude = Mag
                    Found = v
                end
            else
                if tostring(v) == name then
                    local Mag = (v.Position - Root.Position).Magnitude
                    if Mag <= BestMagnitude then
                        BestMagnitude = Mag
                        Found = v
                    end
                end
            end
        end
        return Found
    end
local function GetBeeCount()
    local Count = 0
    for i, v in pairs(game.Players.LocalPlayer.Honeycomb.Value.Cells:GetChildren()) do
        if v.CellType.Value ~= "Empty" then
            Count = Count + 1
        end
    end
    return Count
local function GetFlowerZone(zone)
    return FlowerZones[zone or Variables.FarmField]
local function BetterMagnitude(part1, part2)
    local part1XY = part1.Position * Vector3.new(1, 0, 1)
    local part2XY = part2.Position * Vector3.new(1, 0, 1)
    return (part1XY - part2XY).Magnitude
local function BetterMagnitudeP(part1, part2)
    local part1XY = part1 * Vector3.new(1, 0, 1)
    local part2XY = part2 * Vector3.new(1, 0, 1)
    return (part1XY - part2XY).Magnitude
local function FieldZones(Color)
    local Fields = {}
    if Color then
        if Color == "White" then
            return {"Sunflower Field", "Dandelion Field", "Coconut Field", "Pineapple Patch", "Spider Field"}
        elseif Color == "Red" then
            return {"Mushroom Field", "Pepper Patch", "Strawberry Field", "Rose Field"}
        else
            return {"Blue Flower Field", "Bamboo Field", "Pine Tree Forest"}
        end
    end
    for i, v in pairs(FlowerZones:GetChildren()) do
        local IsBad = false
        if v.Name:find("Ant") or v.Name:find("Brick") or v.Name:find("Hub") then
            IsBad = true
        end
        if not IsBad then
            table.insert(Fields, v.Name)
        end
        table.sort(Fields)
    end
    return Fields
local function UseItem(Name)
    Modules.Events.ClientCall("PlayerActivesCommand", {Name = Name})
local function GetRoot()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.Health > 0 then
        return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    else
        return nil
    end
local function GetHumanoid()
    return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")
local function CheckCave(startPos, endPos)
	local direction = (endPos - startPos).Unit
	local ray = Ray.new(startPos, direction * (endPos - startPos).magnitude)
	local part = Workspace:FindPartOnRayWithWhitelist(ray, {Workspace.Cave})
	if part then return true else return false end
local TweenNoclip = nil
function StopTween()
	local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	local humanoidRootPart = character.PrimaryPart
	local humanoid = character:FindFirstChildWhichIsA("Humanoid")
	if TweenNoclip then 
		pcall(function() TweenNoclip:Disconnect() end) 
		TweenNoclip = nil 
	end
	if humanoidRootPart then
		for i,v in pairs(humanoidRootPart:GetChildren()) do
			if v:IsA("AlignPosition") or v:IsA("AlignOrientation") then
				v:Destroy()
			end
		end
	end
	if humanoid then humanoid:ChangeState(Enum.HumanoidStateType.Freefall) end
local function MakeTween(pos, speed, caveAvoid)
	local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	local humanoidRootPart = character.PrimaryPart
	local b = false
	if CheckCave(humanoidRootPart.Position, pos) and not caveAvoid then
		MakeTween(Vector3.new(8, 140, -140), speed, true)
		character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
		humanoid = character:WaitForChild("Humanoid")
		humanoidRootPart = character.PrimaryPart
	end
	StopTween()
	local fixedSpeed = false
	if speed then fixedSpeed = true end
	local alignPos = Instance.new("AlignPosition")
	alignPos.Mode = Enum.PositionAlignmentMode.OneAttachment
	alignPos.Attachment0 = humanoidRootPart.RootAttachment
	alignPos.MaxForce = math.huge
	alignPos.MaxVelocity = (fixedSpeed and speed) or Variables.TweenSpeed
	alignPos.Position = pos
	alignPos.Parent = humanoidRootPart
	local alignOrientation = Instance.new("AlignOrientation")
	alignOrientation.Attachment0 = humanoidRootPart.RootAttachment
	alignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
	alignOrientation.RigidityEnabled = true
	alignOrientation.CFrame = humanoidRootPart.CFrame
	alignOrientation.Parent = humanoidRootPart
	humanoid:ChangeState(Enum.HumanoidStateType.Landed)
	task.wait()
	humanoid:ChangeState(Enum.HumanoidStateType.Physics)
	TweenNoclip = game["Run Service"].PostSimulation:Connect(function()
		for _, part in pairs(character:GetDescendants()) do
			if part:IsA("BasePart") and part.CanCollide then
				part.CanCollide = false
			end
		end
	end)
	local startTimestamp = tick()
	local playerDied = false
	local a = humanoid.Died:Connect(function() 
		playerDied = true
	end)
	local tempNoClip = TweenNoclip
	repeat 
		task.wait()
		if not fixedSpeed then
			alignPos.MaxVelocity = Variables.TweenSpeed
		end
	until 
	LocalPlayer:DistanceFromCharacter(pos) <= 5
		or tempNoClip ~= TweenNoclip 
		or playerDied
		or (tick() - startTimestamp) > 30
	a:Disconnect()
	if playerDied then
		StopTween()
		LocalPlayer.CharacterAdded:Wait()
		task.wait(0.5)
		if caveAvoid then return end
		return false, MakeTween(pos, speed)
	end
	if tempNoClip == TweenNoclip then
		return true, StopTween()
	end
	return false
local function Tween(pos, speed)
	local tweenCompleted = nil
	coroutine.wrap(function() 
		tweenCompleted = pcall(function() 
			MakeTween(pos, (speed or Variables.TweenSpeed) * 6)
		end)
		if tweenCompleted == nil then tweenCompleted = false end
	end)()
	repeat task.wait() until tweenCompleted ~= nil
local function StopMovement()
    local Root, Hum = GetRoot(), GetHumanoid()
    if Root and Hum then
        Root.Velocity = Vector3.zero
        Hum:MoveTo(Root.Position)
        StopTween()
    end
local function GetHivePosition()
    return LocalPlayer:FindFirstChild("Honeycomb").Value.patharrow.Base.Position
local function GetPlayerBalloon()
    --if not GetRoot() then return nil end
    local Balloon = FindLazy(Workspace.Balloons.HiveBalloons, "HiveBalloonInstance", 0, function(b)
        if b:FindFirstChild("BalloonRoot") then
            if BetterMagnitudeP(b.BalloonRoot.Position, GetHivePosition()) <= 25 then
                return true
            else
                return false
            end
        else
            return false
        end
    end)
    return Balloon
local function IsInVectors(Part, Position1, Position2) -- stole it from my previous scripts
    local mpos = Vector3.new(math.min(Position1.X, Position2.X), math.min(Position1.Y, Position2.Y), math.min(Position1.Z, Position2.Z))
    local mxpos = Vector3.new(math.max(Position1.X, Position2.X), math.max(Position1.Y, Position2.Y), math.max(Position1.Z, Position2.Z))
    return Part.Position.X >= mpos.X and Part.Position.X <= mxpos.X and Part.Position.Y >= mpos.Y and Part.Position.Y <= mxpos.Y and Part.Position.Z >= mpos.Z and Part.Position.Z <= mxpos.Z
local function GetPollenFromBalloon(Balloon) -- this isnt used, but im not going to remove it incase i need it again later
    if not Balloon then return end
    if not Balloon:FindFirstChild("BalloonBody") then return end
    local GuiAttach = Balloon.BalloonBody.GuiAttach
    local Pollen = GuiAttach.Gui.Bar.TextLabel
    local FixedCount = Pollen.Text:gsub(",", "")
    return tonumber(FixedCount)
local function GetWarningDisks()
	local warningDisks = {}
	for i,v in pairs(Workspace.Particles:GetChildren()) do
		if v.Name == "WarningDisk" or v.Name == "Thorn" then 
			table.insert(warningDisks,v) 
		end
	end
	return warningDisks
local function AvoidWarningDisks()
    if not GetRoot() then return end
	local playerPos = GetRoot().Position
	local warningDisks = GetWarningDisks()
	local ray = Ray.new(playerPos + Vector3.new(0, 100, 0), Vector3.new(1, -735, 1))
	local touchedWarningDisk = Workspace:FindPartOnRayWithWhitelist(ray, warningDisks)
	if touchedWarningDisk then
		local diskRadius = touchedWarningDisk.Size.X / 2
		local dirToPlayer = (playerPos - touchedWarningDisk.Position).Unit
		-- Calculate the safe position to move to
		local diskCenter = touchedWarningDisk.Position
		local playerToCenter = (playerPos - diskCenter).Magnitude
		local playerToDisk = playerToCenter - diskRadius
		local safePos = diskCenter + dirToPlayer * (diskRadius + 4 + playerToDisk + 5)
		if (safePos - GetRoot().Position).magnitude < 0.5 then safePos = GetRoot().Position + Vector3.new(1,0,0) end
		GetHumanoid():MoveTo(safePos + Vector3.new(1,0,1))
		task.wait()
		return true
	end
	task.wait()
	return false
local function GetBuffFromID(Icon)
    local TileGrid = assert(FindLazy(LocalPlayer.PlayerGui.ScreenGui, "TileGrid", 0, function(t)
        return t.Position.Y.Offset >= -50
    end), "we couldnt find the tile grid and had to quit lol")
    local Buff = FindLazy(TileGrid, "IconTile", 0, function(i)
        return i.BG.Icon.Image == Icon
    end)
    return Buff or nil
local function GetMinutesLeftFromBuff(Buff, OgMins)
    return Buff and (Buff.BG.Bar.Size.Y.Scale * OgMins) * OgMins
local function GetBalloonMinutes()
    local Icon = "rbxassetid://8083443467"
    local Buff = GetBuffFromID(Icon)
    if Buff then
        local Mins = GetMinutesLeftFromBuff(Buff, 60)
        return Mins
    else
        return nil
    end
--print(GetBalloonMinutes())
--print(GetPollenFromBalloon(GetPlayerBalloon()))
--print(GetPlayerBalloon())
local function MarkTokenAsBad(Token)
    Token.Name = "_C"
local function IsBagFull()
    return CoreStats.Pollen.Value >= CoreStats.Capacity.Value * (Variables.ConvertAt / 100) 
local function ActivesButton()
    return tostring(LocalPlayer.PlayerGui.ScreenGui.ActivateButton.BackgroundColor3) == "0.196078, 0.513726, 1"
local function FindField(position)
	local ray = Ray.new(position+Vector3.new(0, -35, 0), Vector3.new(0,100, 0))
	local hit, hitPos = Workspace:FindPartOnRayWithWhitelist(ray, {FlowerZones})
	if hit and hit.Parent.Name == "FlowerZones" then
		return hit
	else
		return nil
	end
local function CollectToken(token)
	if not token.Parent or token:GetAttribute("Done") then return false end
    if Stored.Converting then return end
	local startedCollecting = tick()
	local moveToCalled = -1
	local collected = false
	while GetRoot() and true do
		if (GetRoot().Position - token.Position).magnitude < 4 or
			token.CFrame.YVector.Y ~= 1 or
			not Workspace:FindPartOnRay(Ray.new(GetRoot().Position, token.Position - GetRoot().Position)) or
			(token.Position - GetRoot().Position).magnitude < 4 or
			(tick() - startedCollecting) >= 3
		then
			if (tick() - startedCollecting) >= 3 then break end
			collected = true
			break
		elseif (GetRoot().Position - token.Position).magnitude > 200 then break end
		if tick() - moveToCalled > 0.25 then
			if not pcall(function()
					GetHumanoid():MoveTo(token.Position)
				end) then break end
			moveToCalled = tick()
		end
		task.wait()
	end
	if collected then
		token:SetAttribute("Done", true)
		return true
	else
		return false
	end
local function CollectNearestTokens(nearqui, magnitude)
    if not GetRoot() then return end
	if not nearqui or typeof(nearqui) ~= "Vector3" then
		if (typeof(nearqui) == "Instance" and not nearqui.Position) then
			nearqui = nearqui.Position
		else
			nearqui = GetRoot().Position
		end
	end
	for i,v in pairs(Workspace.Collectibles:GetChildren()) do
        local bignore = false
		if not v.Parent or not v.Position then bignore = true end
        if not FindField(v.Position) then bignore = true end
		if not bignore and BetterMagnitudeP(nearqui, v.Position) < (magnitude or 30)
			and BetterMagnitudeP(nearqui * Vector3.new(0,1,0), v.Position * Vector3.new(0,1,0)) < 10 then
			CollectToken(v)
			task.wait()
		end
	end
local viciousBeeLevel
local function KillVicious()
    if CombatVariables.Vicious and Stored.ViciousBeeDetected then
        if viciousBeeLevel then
            if viciousBeeLevel > CombatVariables.VicMax or viciousBeeLevel < CombatVariables.VicMin then return end
        end
        local viciousModel
        for i, v in pairs(Workspace.Particles.WTs:GetChildren()) do
            if string.find(v.Name, "Thorn") then
                if not HasAccessToField(FindField(v.position).Name) then
                    return
                end
                Tween(FindField(v.position).Position + Vector3.new(0, 7, 0))
            end
        end
		for i, v in pairs(Workspace.Particles:GetChildren()) do
			if v.Name:find("Vicious") then
                if not HasAccessToField(FindField(v.position).Name) then
                    return
                end
                viciousModel = v
                Tween(viciousModel.Position + Vector3.new(0, 7, 0))
                task.wait(0.5)
			end
		end
        local timeoutTick = tick()
        local vicMonster
        repeat
            for i, v in pairs(Workspace.Monsters:GetChildren()) do
                if string.find(v.Name, "Vicious") then
                    vicMonster = v
                    break
                end
            end
            task.wait()
        until tick() - timeoutTick > 10 or vicMonster ~= nil
        if viciousModel then
            local viciousOnField = FindField(viciousModel.Position)
            -- warn(viciousOnField)
            local level = tonumber(string.gmatch(vicMonster.Name, "%d+")())
            viciousBeeLevel = level
            while level <= CombatVariables.VicMax and level >= CombatVariables.VicMin and viciousModel and viciousOnField and viciousModel.Parent and CombatVariables.Vicious and Stored.ViciousBeeDetected do
                if not GetRoot() then
                    repeat task.wait() until GetRoot()
                    if Workspace.Monsters:FindFirstChild(vicMonster.Name) then
                        Tween(viciousModel.Position + Vector3.new(0, 7, 0))
                    end
                end
                task.wait()
                if not viciousModel.Parent then
                    viciousModel = nil
                    break
                end
                if viciousOnField then
                    -- warn(findField(api.humanoidrootpart().Position))
                    if FindField(GetRoot().Position) ~= viciousOnField then
                        Tween(viciousOnField.Position)
                    end
                    if BetterMagnitude(viciousModel, GetRoot()) > 50 then
                        GetHumanoid():MoveTo(viciousModel.Position)
                        task.wait(0.75)
                    end
                    CollectNearestTokens(nil, 70)
                    AvoidWarningDisks()
                end
                task.wait()
            end
        end
    elseif not Stored.ViciousBeeDetected then
        viciousBeeLevel = nil
    end
--print(FindClosestLazy(Collectibles, "C"))
--print(FindLazy(Workspace, "FlowerZones"))
task.spawn(function()
    repeat
        if Stored.CanFarm and Variables.AutoDig == true then
            setthreadidentity(5)
            Modules.Collectors:Run()
        end
        if Variables.WalkSpeed and Stored.CanFarm and GetRoot() and GetHumanoid() then
            GetHumanoid().WalkSpeed = Stored.WalkSpeed
        end
        if Stored.OldTween and GetHumanoid() and GetRoot() then
            GetRoot().Velocity = Vector3.zero
        end
        task.wait()
    until false
end)
local curb2 = tick()
if LocalPlayer:FindFirstChild("Honeycomb") == nil then
    local Hive = 7
    repeat
        Hive = Hive - 1
        local PhysicalHive = Workspace.Honeycombs["Hive" .. tostring(Hive)]
        if PhysicalHive:FindFirstChild("Owner") and PhysicalHive:FindFirstChild("Owner").Value == nil then
            Tween(PhysicalHive.patharrow.Base.Position, Variables.TweenSpeed)
            wait(((PhysicalHive.patharrow.Base.Position - GetRoot().Position).Magnitude / 50) + 0.5)
            ReplicatedStorage.Events.ClaimHive:FireServer(Hive)
            break
        end
        task.wait()
    until LocalPlayer:FindFirstChild("Honeycomb")
    loadCompensation = (tick() - loadTick) - (curb2 - curb1)
    loadTick = loadTick + loadCompensation
local function Fixed3(r,g,b)
    return Color3.new(r/255,g/255,b/255)
local SproutColors = {
    Basic = Fixed3(180, 190, 186),
    Rare = Fixed3(168, 167, 169),
    Epic = Fixed3(169, 157, 5),
    Gummy = Fixed3(242, 129, 255),
    Legendary = Fixed3(20, 165, 199),
    Moon = Fixed3(103, 162, 201)
local function LocateSprout()
    for i, Sprout in pairs(Sprouts:GetChildren()) do
        for Type, Color in pairs(SproutColors) do
            if Sprout.Color == Color then
                --print(Type .. " sprout found!")
                return Type, Sprout
            end
        end
    end
    return "Supreme", Sprout
Stored.FieldIsAllowed = true
Stored.CanFarm = true
Variables.TweenSpeed = 12
Variables.ConvertAt = 100
Variables.ConvertBalloon = true
Variables.GatherInterrupt = true
Variables.ToyGatherInterrupt = true
Variables.ConvertAtMinutes = 15
Variables.MaxBubbles = 5
Stored.WalkSpeed = 20
local RyzenFuncs = {}
local MobFuncs = {}
local ToyFuncs = {}
function RyzenFuncs:StartToys()
    --print("heyyy 3")
    if ToyVariables.Wealthy then
        ToyFuncs:AttemptToy("Wealth Clock")
    end
    if ToyVariables.Strawberry then
        ToyFuncs:AttemptToy("Strawberry Dispenser")
    end
    if ToyVariables.Blueberry then
        ToyFuncs:AttemptToy("Blueberry Dispenser")
    end
    if ToyVariables.Glue then ToyFuncs:AttemptToy("Glue Dispenser") end
    if ToyVariables.Coconut then
        if MobFuncs:IsDead({MobFuncs:FindTimer(MonsterSpawners.CoconutCrab)}) then
            ToyFuncs:AttemptToy("Coconut Dispenser")
        end
    end
    if ToyVariables.Honey then
        ToyFuncs:AttemptToy("Honey Dispenser")
    end
    if ToyVariables.Treat then
        ToyFuncs:AttemptToy("Treat Dispenser")
    end
    if ToyVariables.Robo then
        if Modules.ClientStatCache:Get("Eggs").RoboPass < 10 then
            ToyFuncs:AttemptToy("Free Robo Pass Dispenser")
        end
    end
    if ToyVariables.Jelly then
        --ToyFuncs:AttemptToy("Free Royal Jelly Dispenser")
    end
    if ToyVariables.Ant then
        if Modules.ClientStatCache:Get("Eggs").AntPass < 10 then
            ToyFuncs:AttemptToy("Free Ant Pass Dispenser")
        end
    end
    if ToyVariables.RedBooster then
        ToyFuncs:AttemptToy("Red Field Booster")
    end
    if ToyVariables.BlueBooster then
        ToyFuncs:AttemptToy("Blue Field Booster")
    end
    if ToyVariables.WhiteBooster then
        ToyFuncs:AttemptToy("Field Booster")
    end
    if ToyVariables.Extreme and CoreStats.Honey.Value >= 25000000 and GetBeeCount() >= 35 then
        ToyFuncs:AttemptToy("Extreme Memory Match")
    end
    if ToyVariables.Night and CoreStats.Honey.Value >= 5000000 and GetBeeCount() >= 30 then
        ToyFuncs:AttemptToy("Night Memory Match")
    end
    if ToyVariables.Mega and CoreStats.Honey.Value >= 500000 and GetBeeCount() >= 15 then
        ToyFuncs:AttemptToy("Mega Memory Match")
    end
    if ToyVariables.Normal and CoreStats.Honey.Value >= 25000 and GetBeeCount() >= 10 then
        ToyFuncs:AttemptToy("Memory Match")
    end
    Stored.DoingToys = false
function ToyFuncs:AttemptToy(Name)
    if not self:CanToyBeUsed(Name) then return end
    Stored.DoingToys = true
    repeat task.wait() until GetRoot() and GetHumanoid()
    local ToyPosition = Workspace.Toys[Name].Platform.Circle.Position
    MemMatchPosition = ToyPosition + Vector3.new(0, 1, 0)
    if Name ~= "Glue Dispenser" then
        Tween(ToyPosition)
        repeat
            if not GetRoot() or not Variables.AutoFarm then return end
            task.wait()
        until (GetRoot().Position - ToyPosition).Magnitude <= 13
        wait(0.2)
        InputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
        wait(0.3)
    else
        if Modules.ClientStatCache:Get("Eggs").Gumdrops >= 1 then
            ToyPosition = Vector3.new(15, 94, 483)
            Tween(ToyPosition)
            repeat
                if not GetRoot() or not Variables.AutoFarm then return end
                task.wait()
            until BetterMagnitudeP(GetRoot().Position, ToyPosition) <= 1
            GetRoot().CFrame = CFrame.new(ToyPosition.X, ToyPosition.Y, ToyPosition.Z)
            wait(LocalPlayer:GetNetworkPing() + 0.5)
            UseItem("Gumdrops")
            wait(LocalPlayer:GetNetworkPing() + 0.5)
            Tween(Workspace.Toys[Name].Platform.Circle.Position)
            wait(1)
            Modules.Events.ClientCall("ToyEvent", Name)
            wait(0.2)
            LocalPlayer.Character:BreakJoints()
            repeat
                task.wait()
            until GetRoot() and GetHumanoid()
        end
    end
function ToyFuncs:CanToyBeUsed(Toy)
    local NonBeesmas = {"Vines","DBScreenShow","Battle Leaderboard","Honey Leaderboard","10BeeGate","5BeeGate","15BeeGate","25BeeGate","Red HQ","Blue HQ","Robo Bear Challenge Leaderboard","Red Portal","Blue Portal","Honey Dispenser","Blue Field Booster","Red Field Booster","Instant Converter B","Royal Jelly Dispenser","Free Ant Pass Dispenser","Memory Match","20BeeGate","Instant Converter","Instant Converter C","Ant Leaderboard","Tunnel Portal","Treat Dispenser","Bronze Star Amulet Generator","Blueberry Dispenser","Strawberry Dispenser","Silver Star Amulet Generator","Gold Star Amulet Generator","Diamond Star Amulet Generator","Free Royal Jelly Dispenser","Glue Dispenser","Vicious Bee Claimer","Badge Guild","Ace Room","Blender","Riley Quests Leaderboard","Daily Honey Leaderboard","Bucko Quests Leaderboard","Stick Bug Leaderboard","Moon Amulet Generator","Gummy Bee Claimer","35BeeGate","Coconut Crab Leaderboard","Ant Pass Dispenser","Mega Memory Match","Night Memory Match","Extreme Memory Match","Coconut Dispenser","Dapper Shop","Red Elite Room","Supreme Star Amulet Generator","Daily White Pollen Leaderbaord","Blue Pollen Leaderboard","Red Pollen Leaderboard","Daily Red Pollen Leaderboard","Daily Blue Pollen Leaderboard","White Pollen Leaderbaord","Nectar Pot","Puffshroom Damage Leaderboard","Beequip Storage","Free Robo Pass Dispenser","Robo Pass Dispenser","Nectar Condenser","Sticker Stack","Sticker Printer","Sticker-Seeker Quest Machine","Hive Hub Beequip Storage","Blue Cannon","Mythic Meteor Shower","Red Cannon","Field Booster","Honeystorm","Ant Challenge","Yellow Cannon","Slingshot","Sprout Summoner","Wealth Clock",}
    if GetStats().ToyTimes[Toy] == nil then
        if table.find(NonBeesmas, Toy) then
            return true
        end
    end
    local Sucess, Result = pcall(function()
        local ToyAvailableTime = GetStats().ToyTimes[Toy]
        local Cooldown = workspace.Toys[Toy].Cooldown.Value
        return os.time() - ToyAvailableTime > Cooldown
    end)
    if Sucess then
        return Result
    else
        return false
    end
function MobFuncs:FindTimer(Spawner)
    local Possible1 = Spawner:FindFirstChild("Attachment") and Spawner.Attachment.TimerGui.TimerLabel
    if not Possible1 then
        return Spawner:FindFirstChild("TimerAttachment").TimerGui.TimerLabel
    else
        return Possible1
    end
function MobFuncs:IsMobSpawned(Label)
    return Label.Visible == false
function MobFuncs:IsDead(Labels)
    local IsActuallyDead = false
    for i, v in pairs(Labels) do
        if self:IsMobSpawned(v) == true then
            IsActuallyDead = false
            break
        else
            IsActuallyDead = true
        end
    end
    return IsActuallyDead
function MobFuncs:Kill(Spawn, Labels)
    if self:IsDead(Labels) then return end
    if not Variables.AutoFarm then return end
    Stored.KillingMobs = true
    repeat task.wait() until GetRoot() and GetHumanoid()
    Tween(Spawn.Position + Vector3.new(0, 5, 0))
    while GetRoot() and BetterMagnitude(GetRoot(), Spawn) >= 1 do
        if not GetRoot() then
            break
        end
        task.wait()
    end
    repeat
        local SafestPoint = Spawn.Position + Vector3.new(
            math.random(-13, 13),
            0,
            math.random(-13, 13)
        )
        GetHumanoid().Jump = true
        task.wait(1.5)
        GetHumanoid():MoveTo(SafestPoint)
        task.wait(1.5)
    until self:IsDead(Labels) or Variables.AutoFarm == false or not GetRoot() or not GetHumanoid()
    if CombatVariables.CollectLoot then
        task.wait(2)
        for i, Token in pairs(Collectibles:GetChildren()) do
            if BetterMagnitude(Token, Spawn) <= 50 and GetRoot() and GetHumanoid() then
                repeat 
                    if GetRoot() and GetHumanoid() then GetHumanoid():MoveTo(Token.Position) end
                    task.wait()
                until not GetRoot() or not GetHumanoid() or BetterMagnitude(GetRoot(), Token) <= 1 or Variables.AutoFarm == false
            end
        end
    end
function MobFuncs:KingBeetle()
    if self:IsMobSpawned(self:FindTimer(MonsterSpawners["King Beetle Cave"])) == false then return end
    if not Variables.AutoFarm then return end
    Stored.KillingMobs = true
    local SafestPoints = {
        [1] = Vector3.new(182, 5, 136),
        [2] = Vector3.new(109, 5, 184),
        [3] = Vector3.new(174, 5, 254),
        [4] = Vector3.new(253, 5, 207)
    }
    Tween(SafestPoints[1])
    local Point = 0
    repeat
        Point = Point < #SafestPoints and Point + 1 or (function()
            Point = 1
            return Point
        end)()
        while BetterMagnitudeP(GetRoot().Position, SafestPoints[Point]) >= 1 do
            GetHumanoid():MoveTo(SafestPoints[Point])
            task.wait()
        end
        task.wait(1)
    until self:IsMobSpawned(self:FindTimer(MonsterSpawners["King Beetle Cave"])) == false or not GetRoot() or not GetHumanoid() or not CombatVariables.KingBeetle or Variables.AutoFarm == false
    if CombatVariables.KingBeetle and GetRoot() and GetHumanoid() then
        task.wait(4)
        for i, Token in pairs(Collectibles:GetChildren()) do
            if IsInVectors(Token, Vector3.new(253, 26, 253), Vector3.new(109, 5, 136)) and GetRoot() and GetHumanoid() then
                repeat 
                    if GetRoot() and GetHumanoid() then GetHumanoid():MoveTo(Token.Position) end
                    task.wait()
                until not GetRoot() or not GetHumanoid() or BetterMagnitude(GetRoot(), Token) <= 1 or Variables.AutoFarm == false
            end
        end
    end
function MobFuncs:TunnelBear()
    if self:IsMobSpawned(self:FindTimer(MonsterSpawners.TunnelBear)) == false then return end
    if not Variables.AutoFarm then return end
    Stored.KillingMobs = true
    Tween(Vector3.new(409, 7, -46))
    repeat task.wait() until Workspace.Monsters:FindFirstChild("Tunnel Bear (Lvl 9)")
    repeat
        if Workspace.Monsters:FindFirstChild("Tunnel Bear (Lvl 9)") then
            if BetterMagnitude(Workspace.Monsters["Tunnel Bear (Lvl 9)"].HumanoidRootPart, GetRoot()) <= 30 then
                GetHumanoid():MoveTo(Workspace.Monsters["Tunnel Bear (Lvl 9)"].HumanoidRootPart.Position + Vector3.new(50, 0, 0))
            end
        end
        task.wait()
    until self:IsMobSpawned(self:FindTimer(MonsterSpawners.TunnelBear)) == false or not GetRoot() or not GetHumanoid() or not CombatVariables.TunnelBear or Variables.AutoFarm == false
    if CombatVariables.TunnelBear and GetRoot() and GetHumanoid() then
        task.wait(5)
        for i, Token in pairs(Collectibles:GetChildren()) do
            if IsInVectors(Token, Vector3.new(1012, 27, -43), Vector3.new(358, 7, -61)) and GetRoot() and GetHumanoid() then
                repeat 
                    if GetRoot() and GetHumanoid() then GetHumanoid():MoveTo(Token.Position) end
                    task.wait()
                until not GetRoot() or not GetHumanoid() or BetterMagnitude(GetRoot(), Token) <= 1 or Variables.AutoFarm == false
            end
        end
    end
function MobFuncs:Ladybugs()
    if CombatVariables.Ladybugs then self:Kill(GetFlowerZone("Clover Field"), {self:FindTimer(MonsterSpawners["Ladybug Bush"])}) end
    if CombatVariables.Ladybugs then self:Kill(GetFlowerZone("Strawberry Field"), {self:FindTimer(MonsterSpawners["Ladybug Bush 2"]), self:FindTimer(MonsterSpawners["Ladybug Bush 3"])}) end
    if CombatVariables.Ladybugs then self:Kill(GetFlowerZone("Mushroom Field"), {self:FindTimer(MonsterSpawners.MushroomBush)}) end
function MobFuncs:RhinoBeetles()
    if CombatVariables.RhinoBeetles then self:Kill(GetFlowerZone("Clover Field"), {self:FindTimer(MonsterSpawners["Rhino Bush"])}) end
    if CombatVariables.RhinoBeetles then self:Kill(GetFlowerZone("Blue Flower Field"), {self:FindTimer(MonsterSpawners["Rhino Cave 1"])}) end
    if CombatVariables.RhinoBeetles then self:Kill(GetFlowerZone("Bamboo Field"), {self:FindTimer(MonsterSpawners["Rhino Cave 2"])}) end
    if CombatVariables.RhinoBeetles then self:Kill(GetFlowerZone("Bamboo Field"), {self:FindTimer(MonsterSpawners["Rhino Cave 3"])}) end
function MobFuncs:Mantis()
    if CombatVariables.Mantis then self:Kill(GetFlowerZone("Pine Tree Forest"), {self:FindTimer(MonsterSpawners.ForestMantis1)}) end
    if CombatVariables.Mantis then self:Kill(GetFlowerZone("Pine Tree Forest"), {self:FindTimer(MonsterSpawners.ForestMantis2)}) end
    if CombatVariables.Mantis then self:Kill(GetFlowerZone("Pineapple Patch"), {self:FindTimer(MonsterSpawners.PineappleMantis1)}) end
function MobFuncs:Scorpians()
    if CombatVariables.Scorpians then self:Kill(GetFlowerZone("Rose Field"), {self:FindTimer(MonsterSpawners.RoseBush)}) end
    if CombatVariables.Scorpians then self:Kill(GetFlowerZone("Rose Field"), {self:FindTimer(MonsterSpawners.RoseBush2)}) end
function MobFuncs:Werewolf()
    if CombatVariables.Werewolf then self:Kill(GetFlowerZone("Pumpkin Patch"), {self:FindTimer(MonsterSpawners.WerewolfCave)}) end
function MobFuncs:Spider()
    if CombatVariables.Werewolf then self:Kill(GetFlowerZone("Spider Field"), {self:FindTimer(MonsterSpawners["Spider Cave"])}) end
function RyzenFuncs:StartMobs()
    --print("hey 1")
    if CombatVariables.KingBeetle then
        MobFuncs:KingBeetle()
    end
    if CombatVariables.TunnelBear then
        MobFuncs:TunnelBear()
    end
    if CombatVariables.Ladybugs then
        MobFuncs:Ladybugs()
    end
    if CombatVariables.RhinoBeetles then
        MobFuncs:RhinoBeetles()
    end
    if CombatVariables.Mantis then
        MobFuncs:Mantis()
    end
    if CombatVariables.Scorpians then
        MobFuncs:Scorpians()
    end
    if CombatVariables.Werewolf then
        MobFuncs:Werewolf()
    end
    if CombatVariables.Spider then
        MobFuncs:Spider()
    end
    Stored.KillingMobs = false
function HasAccessToField(Name)
    local Access = false
    for BeeCount, FieldNames in pairs(FieldsBeeRequirement) do
        if GetBeeCount() >= BeeCount and table.find(FieldNames, Name) then
            Access = true
        end
    end
    return Access
local Field = GetFlowerZone("Dandelion Field")
local function Find(Type)
    if Type == "Bubble" then
        for i, v in pairs(Workspace.Particles:GetChildren()) do
            if v.Name:find("Bubble") and (Field.Position - v.Position).Magnitude <= 70 and FindField(v.Position) then
                return v
            end
        end
    elseif Type == "Fuzzy" then
        for i, v in pairs(Workspace.Particles:GetChildren()) do
            if v.Name:find("DustBunnyInstance") and v:FindFirstChild("Plane") and (Field.Position - v.Plane.Position).Magnitude <= 70 and FindField(v.Plane.Position) then
                return v.Plane
            end
        end
    elseif Type == "Leaves" then
        for i, v in pairs(Stored.Leaves) do
            if (Field.Position - v.Position).Magnitude <= 70 and FindField(v.Position) then
                return v
            end
        end
    end
local function Farm(v, parent)
    local Humanoid, Root = GetHumanoid(), GetRoot()
    if not Root then return end
    
    if FindField(Root.Position) and FindField(v.Position) and BetterMagnitude(v, Field) <= 70 then
        local SpecialID = tostring(math.random(1, 0x1000000))
        v.Name = SpecialID
        --print(v:GetAttribute("Done"), v.Parent:FindFirstChild(SpecialID), Variables.AutoFarm, Stored.CanFarm, Stored.FieldIsAllowed, Stored.Converting, Stored.DoingToys)
        while v:GetAttribute("Done") == nil and parent:FindFirstChild(SpecialID, true) and Variables.AutoFarm and Stored.CanFarm and Stored.FieldIsAllowed and not Stored.Converting and not Stored.DoingToys do
            --print("yes")
            OutOfFieldBoundsFix()
            Humanoid:MoveTo(v.Position)
            if BetterMagnitude(v, Root) <= 4 then
                v:SetAttribute("Done", true)
                break
            end
            task.wait()
        end
    end
local function FarmNil(v, parent, AntiForever)
    local Humanoid, Root = GetHumanoid(), GetRoot()
    if not Root then return end
    
    if FindField(Root.Position) and FindField(v.Position) and BetterMagnitude(v, Field) <= 70 then
        local SpecialID = tostring(math.random(1, 0x1000000))
        v.Name = SpecialID
        --print(v:GetAttribute("Done"), v.Parent:FindFirstChild(SpecialID), Variables.AutoFarm, Stored.CanFarm, Stored.FieldIsAllowed, Stored.Converting, Stored.DoingToys)
        while parent:FindFirstChild(SpecialID, true) and Variables.AutoFarm and Stored.CanFarm and Stored.FieldIsAllowed and not Stored.Converting and not Stored.DoingToys do
            --print("w")
            OutOfFieldBoundsFix()
            Humanoid:MoveTo(v.Position)
            if tick() - AntiForever > 3 then
                --print("e")
                break
            end
            task.wait()
        end
    end
local function FarmV(Token)
    local Humanoid, Root = GetHumanoid(), GetRoot() 
    if not Root then return end
    
    if Token and FindField(Root.Position) and FindField(Token.Position) and BetterMagnitude(Token, Field) <= 70 then
        if Variables.IgnoreHoney and Token:FindFirstChild("BackDecal") and Token.BackDecal.Texture == honey then
            return
        end
        local Uncollectable
        if GetRoot() and (Token.Position * Vector3.new(0, 1, 0) - GetRoot().Position * Vector3.new(0, 1, 0)).Magnitude >= 4 then
            Uncollectable = true
        end
        if Token.Transparency == 0.699999988079071 then
            Uncollectable = true
        end
        if Uncollectable then
            MarkTokenAsBad(Token)
        else
            local SpecialID = tostring(math.random(1, 0x10000))
            Token.Name = SpecialID
            while GetRoot() and Token.Name ~= "_C" and Token:GetAttribute("Done") == nil and Collectibles:FindFirstChild(SpecialID) and Variables.AutoFarm and Stored.CanFarm and Stored.FieldIsAllowed and not Stored.Converting and not Stored.DoingToys do
                --print("yes")
                OutOfFieldBoundsFix()
                Humanoid:MoveTo(Token.Position)
                if BetterMagnitude(Token, Root) <= Token.Size.X then
                    Token:SetAttribute("Done", true)
                    break
                end
                task.wait()
            end
        end
    else
        if Token then
            MarkTokenAsBad(Token)
        else
            local Flower = GetFlower(Field)
            Humanoid:MoveTo(Flower)
        end
    end
MemoryMatchStartGame = MinigameGui.StartGame
local setIdentity = setthreadidentity
local function UpdateGameTable(a)
    local dupes = {}
    local exclude = a.Game.MatchedTiles
    for index, value in pairs(a.Game.RevealedTiles) do
        if exclude[index] == nil then
            if dupes[value] == nil then
                dupes[value] = { Indexes = { index } }
            else
                table.insert(dupes[value]["Indexes"], index)
            end
        end
    end
    for i, v in pairs(dupes) do
        if #v.Indexes < 2 then dupes[i] = nil end
    end
    return dupes
local NewMemoryMatchStartGame = function(a)
    setIdentity(2)
    repeat task.wait() until a and a.Game and a.Game.Grid and a.Game.Grid.InputActive
    for Index = 1, a.Game.NumTiles do
        task.wait()
        if a.Game.Chances == 0 then break end
        local tile = a.Game.Grid:GetTileAtIndex(Index)
        if a.Game.LastSelectedIndex ~= nil then
            local searchFor = a.Game.RevealedTiles[a.Game.LastSelectedIndex]
            local dupes = UpdateGameTable(a)
            for i2, v2 in pairs(dupes) do
                if i2 == searchFor and v2.Indexes[1] ~= Index then
                    tile = a.Game.Grid:GetTileAtIndex(v2.Indexes[1])
                    break
                end
            end
        else
            local dupes = UpdateGameTable(a)
            for i, v in pairs(dupes) do
                if #v.Indexes > 1 then
                    MemoryMatchModule.RegisterTileSelected(a.Game, a.Game.Grid:GetTileAtIndex(v.Indexes[1]))
                    repeat task.wait() until a.Game.Grid.InputActive or a.Game.Chances <= 0
                    tile = a.Game.Grid:GetTileAtIndex(v.Indexes[2])
                    task.wait(0.5)
                    break
                end
            end
        end
        MemoryMatchModule.RegisterTileSelected(a.Game, tile)
        repeat task.wait() until a.Game.Grid.InputActive or a.Game.Chances <= 0
        task.wait(0.5)
    end
    Modules.Events.ClientCall("MemoryMatchEvent", {
        Action = "Finish"
    })
    MinigameGui.EndGame()
    setIdentity(8)
    task.wait(1.6)
    ActiveMemMatch, MemMatchPosition = nil, nil
local oldMemoryMatchStartGame = MemoryMatchStartGame
MinigameGui.StartGame = function(...)
    local a = oldMemoryMatchStartGame(...)
    ActiveMemMatch = a
    return a
task.spawn(function()
    repeat
        if Stored.CanFarm and Variables.AutoConvert and Variables.AutoFarm then
            local DoConvert
            local Minutes = GetBalloonMinutes()
            if IsBagFull() then
                DoConvert = true
            end
            if Minutes ~= nil then
                if Minutes / 60 <= Variables.ConvertAtMinutes and Variables.ConvertBalloon and GetPlayerBalloon() then
                    DoConvert = true
                end
            end
            if Stored.KillingMobs or Stored.DoingToys then
                DoConvert = false
            end
            if DoConvert then
                Stored.Converting = true
                local HivePosition = GetHivePosition()
                repeat
                    local Root = GetRoot()
                    if Root then
                        if (HivePosition - Root.Position).Magnitude >= 13 then
                            Tween(HivePosition)
                        end
                        if ActivesButton() then
                            Modules.Events.ClientCall("PlayerHiveCommand", "ToggleHoneyMaking")
                            wait(1)
                        end
                    end
                    if not Stored.CanFarm or (Variables.ConvertBalloon == false and Stored.DoingBalloon) then
                        Stored.Converting = false
                        break
                    end
                    if Variables.AutoConvert == false or Variables.AutoFarm == false then
                        Stored.Converting = false
                        break
                    end
                    if CoreStats.Pollen.Value <= 0 or not Stored.Converting then
                        if Variables.ConvertBalloon then
                            local Minutes = GetBalloonMinutes()
                            if Minutes == nil or (GetPlayerBalloon() and (Minutes / 60 <= Variables.ConvertAtMinutes)) then
                                Stored.DoingBalloon = true
                                repeat
                                    if (HivePosition - Root.Position).Magnitude >= 13 then
                                        Tween(HivePosition)
                                    end
                                    if ActivesButton() then
                                        ReplicatedStorage.Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
                                        wait(1)
                                    end
                                    if not Stored.CanFarm or not Variables.AutoConvert or not Variables.AutoFarm or not Variables.ConvertBalloon or GetPlayerBalloon() == nil then
                                        Stored.DoingBalloon = false
                                        break
                                    end
                                    task.wait()
                                until Stored.DoingBalloon == false
                            else
                                Stored.DoingBalloon = false
                            end
                        else
                            Stored.DoingBalloon = false
                        end
                        task.wait(6)
                        Stored.Converting = false    
                        break
                    end
                    if GetHumanoid() then
                        GetHumanoid():MoveTo(HivePosition)
                    end
                    task.wait()
                until not Stored.Converting and not Stored.DoingBalloon
                RyzenFuncs:StartMobs()
                RyzenFuncs:StartToys()
            end
        end
        task.wait()
    until false
end)
local _debug={l=tick();dtc = loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/Roblox/refs/heads/main/Lua/Libraries/DataToCode/DataToCode.luau"))()}
local function AutoQuest()
    local Quests = {}
    local Menus = LocalPlayer.PlayerGui.ScreenGui.Menus
    local Magic = Menus.Children.Quests.Content
    local function RegisterQuest(v)
        local Q = {
            NpcGate = Workspace.NPCs[v.NPC].Circle,
            NpcName = v.NPC,
            AllTasks = {},
        }
        Q.Tasks = (function()
            local Tasks = {}
            local Children = Magic.Frame:GetChildren()
            for i = 1, #Children do
                if Children[i].Name ~= "EmptyMessage" then
                    for a, t in pairs(Children[i]:GetChildren()) do
                        if t.Name == "TaskBar" then
                            local Desc = t.Description.Text:gsub("Complete! Talk to (.+)%.", "")
                            local Prog = t.FillBar.Size.X.Scale
                            table.insert(Q.AllTasks, {Progress = Prog})
                            do
                                -- Collect Pollen
                                if Desc:match("Collect [%d,]+ Pollen") or Desc:match("Collect [%d,]+ %w+ Pollen") then
                                    local ValueCount, PollenType, FieldName = Desc:match("Collect ([%d,]+) (%w+) Pollen from the (.+)%.")
                                    if FieldName == nil then
                                        ValueCount, FieldName = Desc:match("Collect ([%d,]+) Pollen from the (.+)%.")
                                        PollenType = 'None'
                                    end
                                    -- No field pollen
                                    if Desc:match("Collect [%d,]+ %w+ Pollen%.") or Desc:match("Collect [%d,]+ Pollen%.") then
                                        if Desc:match("Collect [%d,]+ Pollen.") then
                                            PollenType = "None"
                                        else
                                            PollenType = Desc:match("Collect [%d,]+ (%w+) Pollen.")
                                        end
                                        ValueCount = Desc:match("Collect ([%d,]+)")
                                        FieldName = "None"
                                    end
                                    ValueCount = tonumber(({ValueCount:gsub(",", "")})[1])
                                    table.insert(Tasks, {
                                        Type = "Collect Pollen",
                                        Progress = Prog,
                                        PollenType = PollenType,
                                        ValueCount = ValueCount,
                                        FieldName = FieldName
                                    })
                                -- Feed Bees
                                elseif Desc:match("Feed [%d,]+ .+ to your %w+%.") then
                                    local Amount, Item, Target = Desc:match("Feed ([%d,]+) (.+) to your (%w+)%.")
                                    table.insert(Tasks, {
                                        Type = "Feed Bees",
                                        Progress = Prog,
                                        Amount = Amount,
                                        Item = Amount ~= 1 and Item:match("(%w+)s") or Item,
                                        Target = Target
                                    })
                                end
                            end
                        end
                    end
                end
            end
            return Tasks
        end)()
        table.insert(Quests, Q)
    end
    for _, v in pairs(Modules.Quests:GetAllQuests()) do
        local QuestInMenu = false
        while Magic:FindFirstChild("Frame") == nil and task.wait() do
            firesignal(Menus.ChildTabs["Quests Tab"].MouseButton1Click)
        end
        while tick() - _debug.l > 1.4 and Magic:FindFirstChild("Frame") and task.wait() do
            firesignal(Menus.ChildTabs["Quests Tab"].MouseButton1Click)
            _debug.l = tick()
        end
        local Children = Magic.Frame:GetChildren()
        for i, y in pairs(Children) do
            if y.Name == "QuestBox" then
                if y.TitleBarBG.TitleBar.Text == v.Name then
                    QuestInMenu = true
                end
            end
        end
        if v.Repeatable == false and (
            (v.NPC == "Black Bear" and QuestVariables.BlackBear) or
            (v.NPC == "Mother Bear" and QuestVariables.MotherBear)
        )then
            if QuestInMenu then RegisterQuest(v) end
        end
    end
    local function IsCompleted(Quest)
        for i, v in pairs(Quest.AllTasks) do
            if v.Progress < 1 then
                return false
            end
        end
        return true
    end
    for i, Quest in pairs(Quests) do
        --print("www")
        if IsCompleted(Quest) then
            -- todo replace ts comment with the actual turning in or claiming trickery
            -- ^ workin on it, past me
            local Gate = Quest.NpcGate
            -- this will prolly just break if u die, but if you somehow die while going to the gate thats insane and not my fault
            local GatePos = Gate.Position + Vector3.new(0, 4, 0)
            Tween(GatePos)
            while (GetRoot().Position - GatePos).Magnitude > 13 and task.wait() do end
            task.wait(1)
            repeat
                -- Little fix incase the character decies to fling away from the circle
                if (GetRoot().Position - GatePos).Magnitude > 13 then
                    Tween(GatePos)
                end
                StopMovement()
                -- Loops in loops = genius
                while Magic:FindFirstChild("Frame") == nil and task.wait() do
                    firesignal(Menus.ChildTabs["Quests Tab"].MouseButton1Click)
                end
                if LocalPlayer.PlayerGui.ScreenGui.ActivateButton.Position.Y.Offset >= 3 then
                    for t = 1, 2 do
                        if (GetRoot().Position - GatePos).Magnitude > 13 then
                            Tween(GatePos)
                        end
                        StopMovement()
                        InputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                        repeat task.wait() until LocalPlayer.PlayerGui.ScreenGui.NPC.Visible == true
                        while LocalPlayer.PlayerGui.ScreenGui.NPC.Visible == true do
                            firesignal(LocalPlayer.PlayerGui.ScreenGui.NPC.ButtonOverlay.MouseButton1Click)
                            task.wait()
                        end
                        for t = 1, (Magic:FindFirstChild("Frame") == nil and 1 or 2) do
                            firesignal(Menus.ChildTabs["Quests Tab"].MouseButton1Click)
                            task.wait(0.4)
                        end
                        task.wait(LocalPlayer:GetNetworkPing() + 0.4)
                    end
                    break
                end
                task.wait()
            until nil
            Quest[i]=nil
        else
            for _, Task in pairs(Quest.Tasks) do
                if Task.Type == "Collect Pollen" and Task.Progress < 1 then
                    if Task.FieldName ~= "Ant Field" then
                        local ResortField = Field
                        if Task.FieldName == "None" and Task.PollenType ~= "None" then
                            if Task.PollenType == "Red" then
                                Field = GetFlowerZone(QuestVariables.BestRedField)
                            elseif Task.PollenType == "Blue" then
                                Field = GetFlowerZone(QuestVariables.BestBlueField)
                            else
                                Field = GetFlowerZone(QuestVariables.BestWhiteField)
                            end
                        else
                            if Task.PollenType == "None" then
                                if Task.FieldName == "None" then
                                    Field = ResortField
                                else
                                    Field = GetFlowerZone(Task.FieldName)
                                end
                            else
                                if Task.PollenType == "Red" then
                                    Field = GetFlowerZone(QuestVariables.BestRedField)
                                elseif Task.PollenType == "Blue" then
                                    Field = GetFlowerZone(QuestVariables.BestBlueField)
                                else
                                    Field = GetFlowerZone(QuestVariables.BestWhiteField)
                                end
                            end
                            if not HasAccessToField(Task.FieldName) then
                                Field = ResortField
                            end
                        end
                    end
                elseif Task.Type == "Feed Bees" and Task.Progress < 1 then
                    local Amount, Item, Target = Task.Amount, Task.Item, Task.Target
                    if Item:find("Straw") then
                        Item = "Strawberry"
                    end
                    if Modules.ClientStatCache:Get("Eggs")[Item] ~= nil then
                        local LeftNeeded = math.floor(Amount - (Task.Progress * Amount))
                        if Modules.ClientStatCache:Get("Eggs")[Item] < LeftNeeded then
                            Amount = Modules.ClientStatCache:Get("Eggs")[Item]
                        else
                            Amount = LeftNeeded
                        end
                        if Item ~= "Royal Jelly" and Modules.ClientStatCache:Get("Eggs")[Item] >= LeftNeeded and Target == "Bees" then
                            local HivePos = GetHivePosition()
                            Tween(HivePos)
                            while (GetRoot().Position - HivePos).Magnitude > 13 and task.wait() do end
                            local Finished = false
                            local timeoutTick = tick()
                            task.wait(1)
                            spawn(function()
                                repeat
                                    if (GetRoot().Position - HivePos).Magnitude > 13 then
                                        Tween(HivePos)
                                    end
                                    StopMovement()
                                    if tick() - timeoutTick > 30 then
                                        warn("Timeout on auto quest feeding bees")
                                        break
                                    end
                                    Suc, Res = pcall(function()
                                        return Modules.Events.ClientCall("ConstructHiveCellFromEgg", 1, 1, Item, LeftNeeded, false)
                                    end)
                                    if Suc and tonumber(Res) then
                                        Finished = true
                                    end
                                    setthreadidentity(2)
                                    Modules.ClientStatCache:Update()
                                    task.wait(3)
                                until Finished == true
                            end)
                            repeat
                                if tick() - timeoutTick > 30 then
                                    warn("Timeout on auto quest feeding bees")
                                    break
                                else
                                    workspace.CurrentCamera.CFrame = CFrame.new(
                                        -113.7687, 19.6114769, 302.109283, -1, 0, -0, -0, 0.921119213, 0.389280647, 0,
                                        0.389280647, -0.921119213
                                    )
                                end
                                task.wait()
                            until Finished or tick() - timeoutTick > 30
                        elseif Target ~= "Bees" then
                            error("what? (regex failure in auto quest!)")
                        end
                    end
                end
            end
        end
    end
   -- _debug.dtc.print(Quests)
function OutOfFieldBoundsFix()
    local Root = GetRoot()
    if not Root then return end
    if ActiveMemMatch then
        return Tween(MemMatchPosition or Root.Position)
    end
    if Stored.Converting or Stored.DoingBalloon then
        return
    end
    if Stored.CanFarm and ((Field.Position - Root.Position).Magnitude >= 71 or not FindField(Root.Position)) then
        if Stored.CanFarm then
            --print(Field)
            if QuestVariables.Master then
                AutoQuest()
            end
            --print(Field)
            Tween(Field.Position + Vector3.new(0, 7, 0))
        end
    end
local LastBubble = tick()
local BubblesDone = 0
local SproutSpawningTick, SproutOldField = nil, nil
task.spawn(function()
    repeat
        --print(`Autofarm: {Variables.AutoFarm}\tCanFarm: {Stored.CanFarm}\tFieldIsAllowed: {Stored.FieldIsAllowed}\tConverting: {Stored.Converting}\tKillingMobs: {Stored.KillingMobs}\tDoingToys: {Stored.DoingToys}`)
        if Variables.AutoFarm == true and Variables.FarmField ~= nil then
            if Stored.CanFarm and Stored.FieldIsAllowed and not Stored.Converting and not Stored.KillingMobs and ActiveMemMatch then
                NewMemoryMatchStartGame(ActiveMemMatch)
            end
            if Stored.CanFarm and Stored.FieldIsAllowed and not Stored.Converting and not Stored.KillingMobs and not Stored.DoingToys then
                local Root = GetRoot()
                local Humanoid = GetHumanoid()
                if Root and Humanoid then
                    if Variables.GatherInterrupt then 
                        RyzenFuncs:StartMobs()
                    end
                    if Variables.ToyGatherInterrupt then 
                        RyzenFuncs:StartToys()
                    end
                    --print(Field, 1)
                    Field = GetFlowerZone()
                    if Stored.ViciousBeeDetected and CombatVariables.Vicious then
                        KillVicious()
                    end
                    if QuestVariables.Master then
                        AutoQuest()
                    end
                    --print(Field, 2)
                    local SproutType, Sprout = LocateSprout()
                    --print(SproutType, Sprout)
                    if Sprout and ToyVariables.FarmSprouts then
                        for i, CField in pairs(FlowerZones:GetChildren()) do
                            if BetterMagnitude(CField, Sprout) <= 12 then
                                if ToyVariables[SproutType .. "Sprouts"] == true then
                                    if SproutOldField ~= Sprout then
                                        if not SproutSpawningTick then 
                                            SproutSpawningTick = tick()
                                            SproutOldField = CField
                                        end
                                    end
                                    Field = CField
                                end
                                break
                            end
                        end
                    end
                    if SproutSpawningTick and ToyVariables.FarmSprouts then
                        if tick() - SproutSpawningTick <= 30 then
                            Field = SproutOldField
                        else
                            SproutSpawningTick = nil
                            SproutOldField = nil
                        end
                    end
                    --print(Field)
                    if (Field.Position - Root.Position).Magnitude <= 71 and FindField(Root.Position) then
                        if not Stored.DidSprinklers then
                            local SprinklerJumps = 0
                            local Equipped = GetStats("EquippedSprinkler")
                            if Equipped == "The Supreme Saturator" then
                                SprinklerJumps = 1
                            elseif Equipped == "Basic Sprinkler" then
                                SprinklerJumps = 1
                            elseif Equipped == "Silver Soakers" then
                                SprinklerJumps = 2
                            elseif Equipped == "Golden Gushers" then
                                SprinklerJumps = 3
                            elseif Equipped == "Diamond Drenchers" then
                                SprinklerJumps = 4
                            else
                                SprinklerJumps = 0
                            end
                            if Variables.AutoSprinklers and SprinklerJumps > 0 then
                                wait(1)
                                for i = 1, SprinklerJumps do
                                    if Variables.AutoSprinklers == false then break end
                                    if Variables.AutoFarm == false then break end
                                    local OldJumpPower = GetHumanoid().JumpPower
                                    GetHumanoid().JumpPower = 69
                                    wait(1/30)
                                    GetHumanoid().Jump = true
                                    wait(0.4)
                                    UseItem("Sprinkler Builder")
                                    wait(0.6)
                                    GetHumanoid().JumpPower = OldJumpPower
                                end
                                Stored.DidSprinklers = true
                            end
                        end
                        local ShouldI = {
                            bubbles = (FarmBubbles.Enabled or FarmBubbles.Forced),
                            fuzzy = (FarmFuzzyBombs.Enabled or FarmFuzzyBombs.Forced),
                            leaf = (FarmLeaves.Enabled or FarmLeaves.Forced)
                        }
                        local Token = FindClosestLazy(Collectibles, "C")
                        local Bubble = ShouldI.bubbles and Find("Bubble")
                        local Fuzzbombs = ShouldI.fuzzy and Find("Fuzzy")
                        local Leaf = ShouldI.leaf and Find("Leaves")
                        local PriorityMax = FindLazy(Collectibles, "C", 0, function(t)
                            return t:FindFirstChild("BackDecal") and t.BackDecal.Texture == "rbxassetid://1629547638"
                        end)
                        if tick() - LastBubble >= 1 then
                            LastBubble = tick()
                            BubblesDone = 0
                        end
                        if Variables.NoTokens ~= true and PriorityMax and FindField(Root.Position) and FindField(PriorityMax.Position) and BetterMagnitude(PriorityMax, Field) <= 70 then
                            --print("bro you got that token link")
                            FarmV(PriorityMax)
                        end
                        if Variables.NoTokens ~= true then 
                            FarmV(Token)
                        end
                        local DontDoBubbleYet = (BubblesDone >= Variables.MaxBubbles and tick() - LastBubble <= 1)
                        --print(DontDoBubbleYet, BubblesDone, tick() - LastBubble)
                        if Bubble and ((not DontDoBubbleYet) or Variables.MaxBubbles == 0) then
                            BubblesDone = BubblesDone + 1
                            Farm(Bubble, Workspace.Particles)
                        end
                        if Fuzzbombs then
                            Farm(Fuzzbombs, Workspace.Particles)
                        end
                        if Leaf then
                            FarmNil(Leaf, workspace.Flowers, tick())
                        end
                    else
                        OutOfFieldBoundsFix()
                    end
                end
            end
        end
        task.wait()
    until false
end)
local HomeSection = MainTab; MainTab.Section("Home")
HomeSection.Toggle("Stop All Toggles", function(Toggled)
    Stored.CanFarm = not Toggled
    if Stored.CanFarm == false then
        StopMovement()
    end
end)
local function FormatNumber(num) -- dev forum
	local str = tostring(num):reverse():gsub("(%d%d%d)", "%1,"):reverse()
	if str:sub(1,1) == "," then
		str = str:sub(2)
	end
	return str
local function FormatTime(sec)
	local second = tostring(sec%60)
	local minute = tostring(math.floor(sec / 60 - math.floor(sec / 3600) * 60))
	local hour = tostring(math.floor(sec / 3600))
	return (#hour == 1 and "0"..hour or hour)..":"..(#minute == 1 and "0"..minute or minute)..":"..(#second == 1 and "0"..second or second)
local StartHoney = CoreStats.Honey.Value
local SessionHoneyLabel = MainTab.Label("Session Honey: 0")
local HoneyPerHourLabel = MainTab.Label("Honey Per Hour: 0")
local ElapsedTimeLabel = MainTab.Label("Elapsed Time: 00:00:00")
task.spawn(function()
    local P = tick()
    while task.wait() do
        if tick() - P > 1 then
            P = tick()
            local TimePassed = math.round(tick() - loadTick)
            local HoneyGained = CoreStats.Honey.Value - StartHoney
            local HoneyPerHour = math.floor(HoneyGained / TimePassed) * 3600
            SessionHoneyLabel:Update({
                Text = "Session Honey: " .. FormatNumber(CoreStats.Honey.Value - StartHoney)
            })
            HoneyPerHourLabel:Update({
                Text = "Honey Per Hour: " .. FormatNumber(HoneyPerHour)
            })
            ElapsedTimeLabel:Update({
                Text = "Elapsed Time: " .. FormatTime(TimePassed)
            })
        end
    end
end)
if ndebugging then
    HomeSection.Button("Rejoin", function()
        cloneref(game:GetService("TeleportService")):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end)
local FarmingSection = MainTab; MainTab.Section("Farming")
FarmingSection.Toggle("Auto Dig", function(Toggled)
    Variables.AutoDig = Toggled
end)
FarmingSection.Toggle("Auto Convert", function(Toggled)
    Variables.AutoConvert = Toggled
end)
FarmingSection.Toggle("Auto Sprinklers", function(Toggled)
    Variables.AutoSprinklers = Toggled
end)
FarmingSection.Toggle("Auto Farm", function(Toggled)
    Variables.AutoFarm = Toggled
    if Variables.AutoFarm == false then
        StopMovement()
    else
        if Variables.FarmField == nil then
            StarterGui:SetCore("SendNotification", {Title = "Auto farm", Text="select a field before trying to use autofarm!", Duration=5, Icon=getcustomasset("namehub.png")})
        end
    end
end)
FarmingSection.Dropdown("Farming Field", FieldZones(), 'Dandelion Field', function(Fieldx)
    if not HasAccessToField(Fieldx) then
        return StarterGui:SetCore("SendNotification", {Title = "Field magic", Text="You cant use this field (you have " .. GetBeeCount() .. " bees)", Duration=5, Icon=getcustomasset("namehub.png")})
    end
    if Fieldx ~= Variables.FarmField then
        Stored.DidSprinklers = false
    end
    StopMovement()
    Variables.FarmField = Fieldx
    Field = GetFlowerZone()
end)
local ConvertingSection = MainTab; MainTab.Section("Converting")
ConvertingSection.Slider("Convert At", 1, 100, 100, function(CurrentValue)
    Variables.ConvertAt = CurrentValue 
end)
ConvertingSection.Toggle("Convert Balloon", function(Toggled)
    Variables.ConvertBalloon = Toggled
end, true)
ConvertingSection.Slider("Convert At X Minutes", 1, 59, 15, function(CurrentValue)
    Variables.ConvertAtMinutes = CurrentValue 
end)
local FarmThings = MainTab; MainTab.Section("Farm Things")
FarmingSection.Toggle("Collect Bubbles", function(Toggled)
    FarmBubbles.Enabled = Toggled
end)
FarmingSection.Toggle("Collect Fuzzbombs", function(Toggled)
    FarmFuzzyBombs.Enabled = Toggled
end)
FarmingSection.Toggle("Collect Leaves", function(Toggled)
    FarmLeaves.Enabled = Toggled
end)
ConvertingSection.Slider("Max Bubbles/s", 0, 15, 5, function(CurrentValue)
    Variables.MaxBubbles = CurrentValue 
end)
local TokensSection = MainTab; MainTab.Section("Tokens")
FarmingSection.Toggle("Dont Farm Honey Tokens", function(Toggled)
    Variables.IgnoreHoney = Toggled
end)
FarmingSection.Toggle("Dont Farm Tokens", function(Toggled)
    Variables.NoTokens = Toggled
end)
CombatTab.Section("Gather Interrupt"); CombatTab.Toggle("Allow Mobs Interrupting Gather", function(Toggled)
    Variables.GatherInterrupt = Toggled
end, true)
QuestVariables.BestWhiteField = "Dandelion Field"
QuestVariables.BestRedField = "Mushroom Field"
QuestVariables.BestBlueField = "Blue Flower Field"
QuestsTab.Label("This is just a demo to show progress on auto quest")
QuestsTab.Label("Expect to see more here soon. Ant Field pollen will not be collected.")
local QuestsSection = QuestsTab; QuestsTab.Section("Auto Quest Settings")
QuestsSection.Toggle("Auto Quest", function(Toggled)
    QuestVariables.Master = Toggled
end, false)
QuestsSection.Dropdown("Best White Field", FieldZones("White"), QuestVariables.BestWhiteField, function(Field)
    QuestVariables.BestWhiteField = Field
end)
QuestsSection.Dropdown("Best Red Field", FieldZones("Red"), QuestVariables.BestRedField, function(Field)
    QuestVariables.BestRedField = Field
end)
QuestsSection.Dropdown("Best Blue Field", FieldZones("Blue"), QuestVariables.BestBlueField, function(Field)
    QuestVariables.BestBlueField = Field
end)
local MainQuestsSection = QuestsTab; QuestsTab.Section("Main NPCs")
MainQuestsSection.Toggle("Black Bear", function(Toggled)
    QuestVariables.BlackBear = Toggled
end, false)
MainQuestsSection.Toggle("Mother Bear", function(Toggled)
    QuestVariables.MotherBear = Toggled
end, false)
local KillSection = CombatTab; CombatTab.Section("Kill Mobs")
KillSection.Toggle("Kill Ladybugs", function(Toggled)
    CombatVariables.Ladybugs = Toggled
end, false)
KillSection.Toggle("Kill Rhino Beetles", function(Toggled)
    CombatVariables.RhinoBeetles = Toggled
end, false)
KillSection.Toggle("Kill Mantis", function(Toggled)
    CombatVariables.Mantis = Toggled
end, false)
KillSection.Toggle("Kill Scorpians", function(Toggled)
    CombatVariables.Scorpians = Toggled
end, false)
KillSection.Toggle("Kill Werewolf", function(Toggled)
    CombatVariables.Werewolf = Toggled
end, false)
KillSection.Toggle("Kill Spider", function(Toggled)
    CombatVariables.Spider = Toggled
end, false)
KillSection.Toggle("Collect Loots", function(Toggled)
    CombatVariables.CollectLoot = Toggled
end, false)
KillSection.Button("Test Bug Kill", function()
    RyzenFuncs.StartMobs(RyzenFuncs)
end)
local BossSection = CombatTab; CombatTab.Section("Kill Boss")
BossSection.Toggle("King Beetle", function(Toggled)
    CombatVariables.KingBeetle = Toggled    
end, false)
BossSection.Toggle("Tunnel Bear", function(Toggled)
    CombatVariables.TunnelBear = Toggled    
end, false)
local VicSection = CombatTab; CombatTab.Section("Vicious Bee")
VicSection.Slider("Max Level", 1, 12, 12, function(CurrentValue)
    CombatVariables.VicMax = CurrentValue 
end)
VicSection.Slider("Min Level", 1, 12, 1, function(CurrentValue)
    CombatVariables.VicMin = CurrentValue 
end)
VicSection.Toggle("Kill Vicious", function(Toggled)
    CombatVariables.Vicious = Toggled    
end, false)
ToysTab.Section("Gather Interrupt"); ToysTab.Toggle("Allow Toys Interrupting Gather", function(Toggled)
    Variables.ToyGatherInterrupt = Toggled
end, true)
local DispensersSection = ToysTab; ToysTab.Section("Dispensers")
DispensersSection.MultiDropdown("Dispensers", {"Wealth Clock", "Strawberry Dispenser", "Blueberry Dispenser", "Glue Dispenser", "Coconut Dispenser", "Honey Dispenser", "Treat Dispenser", "Robo Pass Dispenser", "Ant Pass Dispenser"}, nil, function(Value, Enabled)
    local E = ""
    if Value == "Wealth Clock" then
        E = "Wealthy"
    elseif Value == "Strawberry Dispenser" then
        E = "Strawberry"
    elseif Value == "Blueberry Dispenser" then
        E = "Blueberry"
    elseif Value == "Glue Dispenser" then
        E = "Glue"
    elseif Value == "Coconut Dispenser" then
        E = "Coconut"
    elseif Value == "Honey Dispenser" then
        E = "Honey"
    elseif Value == "Treat Dispenser" then
        E = "Treat"
    elseif Value == "Robo Pass Dispenser" then
        E = "Robo"
    elseif Value == "Ant Pass Dispenser" then
        E = "Ant"
    end
    ToyVariables[E] = Enabled
end)
local SproutsSection = ToysTab; ToysTab.Section("Sprouts")
SproutsSection.Toggle("Farm Sprouts", function(Toggled)
    ToyVariables.FarmSprouts = Toggled    
end, false)
SproutsSection.MultiDropdown("Allowed Sprouts", {"Basic", "Rare", "Epic", "Gummy", "Legendary", "Moon", "Supreme"}, nil, function(Value, Enabled)
    ToyVariables[Value .. "Sprouts"] = Enabled
end)
local BoostersSection = ToysTab; ToysTab.Section("Boosters")
local BoosterTogs = {
    ["Red Booster"] = "RedBooster",
    ["Blue Booster"] = "BlueBooster",
    ["White Booster"] = "WhiteBooster"
BoostersSection.MultiDropdown("Allowed Boosters", {"Red Booster", "Blue Booster", "White Booster"}, nil, function(Value, Enabled)
    ToyVariables[BoosterTogs[Value]] = Enabled
end)
local MemorySection = ToysTab; ToysTab.Section("Memory Matches")
MemorySection.MultiDropdown("Allowed Memory Matches", {"Normal", "Mega", "Night", "Extreme"}, nil, function(Value, Enabled)
    ToyVariables[Value] = Enabled
end)
local MovementSection = SettingsTab; SettingsTab.Section("Config")
MovementSection.Slider("Tweening Speed", 3, 20, 11, function(CurrentValue)
    Variables.TweenSpeed = CurrentValue 
end)
MovementSection.Slider("Walking Speed", 20, 90, 20, function(CurrentValue)
    Stored.WalkSpeed = CurrentValue 
end)
MovementSection.Toggle("Enable Walk speed", function(Toggled)
    Variables.WalkSpeed = Toggled
end)
MovementSection.Toggle("Mobile Button", function(Toggled)
    uni["4"].Visible = Toggled
end, true)
local SavesSection = SettingsTab; SettingsTab.Section("Saves")
SavesSection.Label("Config saving is coming soon! 
LocalPlayer.CharacterAdded:Connect(function()
    repeat task.wait() until GetHumanoid()
    GetHumanoid().Died:Connect(function()
        Stored.DidSprinklers = false
    end)
end)
for i, v in pairs(Collectibles:GetChildren()) do
    if v.Transparency == 0.699999988079071 then
        v:Destroy()
    end
FieldsBeeRequirement = (function()
    return {
        [0] = {"Sunflower Field", "Dandelion Field", "Blue Flower Field", "Clover Field", "Mushroom Field"};
        [5] = {"Strawberry Field", "Spider Field", "Bamboo Field"};
        [10] = {"Pineapple Patch", "Stump Field"};
        [15] = {"Pine Tree Forest", "Pumpkin Patch", "Cactus Field", "Rose Field"};
        [25] = {"Mountain Top Field"};
        [35] = {"Coconut Field", "Pepper Patch"}
    }
end)()
workspace.Flowers.DescendantAdded:Connect(function(e)
    if e.Name == "LeafBurst" then
        Stored.Leaves[e]=e.Parent;
    end
end)
workspace.Flowers.DescendantRemoving:Connect(function(e)
    Stored.Leaves[e]=nil
end)
for i, v in pairs(Workspace.Particles:GetChildren()) do
	if string.find(v.Name, "Vicious") then
        PushAlert("[Name Hub] Vicious Bee detected in " .. tostring(FindField(v.Position)))
		Stored.ViciousBeeDetected = true
    end
Workspace.Particles.ChildAdded:Connect(function(instance)
	task.wait()
	if string.find(instance.Name, "Vicious") then
        PushAlert("[Name Hub] Vicious Bee spawned in " .. tostring(FindField(instance.Position)))
		Stored.ViciousBeeDetected = true
	elseif instance.Name == "Guiding Star" then 
        -- guiding star
	elseif instance.Name == "WarningDisk" and instance.BrickColor == BrickColor.new("Lime green") then
		if instance.Size.X == 8 and true then
            -- shower
		elseif instance.Size.X == 30 and true then
            -- coconut
		end
	end
end)
Workspace.Particles.ChildRemoved:Connect(function(instance)
	if string.find(instance.Name, "Vicious") then
		Stored.ViciousBeeDetected = false
	elseif instance.Name == "Guiding Star" then 
        -- guiding star
	elseif instance.Name == "WarningDisk" and instance.BrickColor == BrickColor.new("Lime green") then
		if instance.Size.X == 8 and true then
            -- shower
		elseif instance.Size.X == 30 and true then
            -- coconut
		end
	end
end)
--[[BoostersSection.MultiDropdown("Test multibox", {"Option 1", "Option 2", "Option 3"}, {"Option 2", "Option 3"}, function(Value, Enabled)
    print(Value .. " is " .. tostring(Enabled))
end) -- Name, Array, DefaultValues, Callback
local VirtualUser = cloneref(game:GetService("VirtualUser"))
LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)
local finalTick = tostring(tick() - loadTick)
local loadSeconds = finalTick:match("(%d+)%.")
local loadMilleseconds = finalTick:match("%.(.+)"):sub(1, 2)
PushAlert("Name Hub loaded in " .. (loadSeconds .. "." .. loadMilleseconds) .. "s", "RainbowWithSound")
setfpscap(1000)
G[	E
KVJ	
VJ-AW(
VJ-AW(
Q.FW
VJ	A
F]z7
:A^>
=A_E
=A_F
AA!P
AAaQ
FayB
Fa!	K!
BEa	
!VC$
a"CA
debug
sethook
valid
pcall
string
char
getinfo
dump
what
find
]] .. string .. [[
gmatch
:(%d*):
face
Retard! 
ndebugging
tick
isfile
namehub.png
writefile
game
HttpGet
https://raw.githubusercontent.com/NameHubScript/_/refs/heads/main/static(1).png
namehub2.png
https://github.com/NameHubScript/_/raw/refs/heads/main/smallicon.png
pairs
workspace
Decorations
Diamond Mask Hall
GetChildren
FindFirstChild
GateScript
Name
Part
CanTouch
30BeeZone
GetService
CoreGui
TopBarApp
UnibarLeftFrame
UnibarMenu
FillDirection
Enum
Horizontal
Destroy
Clone
Parent
Size
UDim2
fromOffset
nine_dot
chat
Position
Highlighter
SelectedHighlighter
IntegrationIconFrame
Instance
ImageButton
fromScale
AnchorPoint
Vector2
Image
getcustomasset
BackgroundTransparency
MouseButton1Click
Connect
rbxassetid://1472135114
ColorTheme
Color3
fromRGB
cloneref
Players
LocalPlayer
ReplicatedStorage
TweenService
Workspace
StarterGui
VirtualInputManager
FlowerZones
MonsterSpawners
Collectibles
Sprouts
CoreStats
require
MinigameGui
MemoryMatchManager
MemoryMatch
AlertBoxes
PushAlert
loadstring
https://raw.githubusercontent.com/twitch-stremaer/apex-beta-things/refs/heads/main/new%20ui%20%20lib.lua
MakeWindow
Bee Swarm Simulator
MakeTab
Auto Farm
rbxassetid://10723407389
Farm in field
Combat
rbxassetid://10734975692
Kill mobs
Toys
rbxassetid://10709769508
Auto toys
Auto Quest
rbxassetid://10709781717
Quest completer
Settings
rbxassetid://81165630831343
Config Script
Enabled
Forced
FarmField
Dandelion Field
TweenSpeed
VicMax
VicMin
Leaves
Flowers
Collectors
LocalCollect
ClientStatCache
Events
Quests
StopTween
task
spawn
Honeycomb
Honeycombs
Hive
tostring
Owner
Value
patharrow
Base
wait
Magnitude
ClaimHive
FireServer
Basic
Rare
Epic
Gummy
Legendary
Moon
FieldIsAllowed
CanFarm
ConvertAt
ConvertBalloon
GatherInterrupt
ToyGatherInterrupt
ConvertAtMinutes
MaxBubbles
WalkSpeed
StartToys
AttemptToy
CanToyBeUsed
FindTimer
IsMobSpawned
IsDead
Kill
KingBeetle
TunnelBear
Ladybugs
RhinoBeetles
Mantis
Scorpians
Werewolf
Spider
StartMobs
HasAccessToField
MemoryMatchStartGame
StartGame
setthreadidentity
https://raw.githubusercontent.com/78n/Roblox/refs/heads/main/Lua/Libraries/DataToCode/DataToCode.luau
OutOfFieldBoundsFix
Section
Home
Toggle
Stop All Toggles
Honey
Label
Session Honey: 0
Honey Per Hour: 0
Elapsed Time: 00:00:00
Button
Rejoin
Farming
Auto Dig
Auto Convert
Auto Sprinklers
Dropdown
Farming Field
Converting
Slider
Convert At
Convert Balloon
Convert At X Minutes
Farm Things
Collect Bubbles
Collect Fuzzbombs
Collect Leaves
Max Bubbles/s
Tokens
Dont Farm Honey Tokens
Dont Farm Tokens
Gather Interrupt
Allow Mobs Interrupting Gather
BestWhiteField
BestRedField
Mushroom Field
BestBlueField
Blue Flower Field
This is just a demo to show progress on auto quest
Expect to see more here soon. Ant Field pollen will not be collected.
Auto Quest Settings
Best White Field
White
Best Red Field
Best Blue Field
Blue
Main NPCs
Black Bear
Mother Bear
Kill Mobs
Kill Ladybugs
Kill Rhino Beetles
Kill Mantis
Kill Scorpians
Kill Werewolf
Kill Spider
Collect Loots
Test Bug Kill
Kill Boss
King Beetle
Tunnel Bear
Vicious Bee
Max Level
Min Level
Kill Vicious
Allow Toys Interrupting Gather
Dispensers
MultiDropdown
Wealth Clock
Strawberry Dispenser
Blueberry Dispenser
Glue Dispenser
Coconut Dispenser
Honey Dispenser
Treat Dispenser
Robo Pass Dispenser
Ant Pass Dispenser
Farm Sprouts
Allowed Sprouts
Supreme
Boosters
Red Booster
RedBooster
Blue Booster
BlueBooster
White Booster
WhiteBooster
Allowed Boosters
Memory Matches
Allowed Memory Matches
Normal
Mega
Night
Extreme
Config
Tweening Speed
Walking Speed
Enable Walk speed
Mobile Button
Saves
Config saving is coming soon! 
CharacterAdded
Transparency
DescendantAdded
DescendantRemoving
Particles
Vicious
[Name Hub] Vicious Bee detected in 
ViciousBeeDetected
ChildAdded
ChildRemoved
VirtualUser
Idled
match
(%d+)%.
%.(.+)
Name Hub loaded in 
RainbowWithSound
setfpscap
error
line
called
allowedLine
sethook
]] .. string .. [[
debug
traceback
getgenv
Enabled
setthreadidentity
Push
Vicious
Text
Style
AlertBoxes
tick
Position
Vector3
math
random
Field
FlowerTick
FlowerPos
ClientStatCache
Optional
Modules
pairs
GetChildren
GetDescendants
tostring
path
name
method
requirement
(for generator)
(for state)
(for control)
Workspace
Character
FindFirstChild
HumanoidRootPart
pairs
GetChildren
type
function
Position
Magnitude
tostring
path
name
Root
Found
BestMagnitude
(for generator)
(for state)
(for control)
LocalPlayer
pairs
game
Players
LocalPlayer
Honeycomb
Value
Cells
GetChildren
CellType
Empty
Count
(for generator)
(for state)
(for control)
FarmField
zone
FlowerZones
Variables
Position
Vector3
Magnitude
part1
part2
part1XY
part2XY
Vector3
Magnitude
part1
part2
part1XY
part2XY
White
Sunflower Field
Dandelion Field
Coconut Field
Pineapple Patch
Spider Field
Mushroom Field
Pepper Patch
Strawberry Field
Rose Field
Blue Flower Field
Bamboo Field
Pine Tree Forest
pairs
GetChildren
Name
find
Brick
table
insert
sort
Color
Fields
(for generator)
(for state)
(for control)
IsBad
FlowerZones
Events
ClientCall
PlayerActivesCommand
Name
Name
Modules
Character
FindFirstChild
Humanoid
Health
HumanoidRootPart
LocalPlayer
Character
FindFirstChild
Humanoid
LocalPlayer
Unit
magnitude
FindPartOnRayWithWhitelist
Cave
startPos
endPos
direction
part
Workspace
Character
CharacterAdded
Wait
PrimaryPart
FindFirstChildWhichIsA
Humanoid
pcall
pairs
GetChildren
AlignPosition
AlignOrientation
Destroy
ChangeState
Enum
HumanoidStateType
Freefall
Disconnect
TweenNoclip
character
humanoidRootPart
humanoid
(for generator)
(for state)
(for control)
LocalPlayer
TweenNoclip
Character
CharacterAdded
Wait
WaitForChild
Humanoid
PrimaryPart
Position
Vector3
StopTween
Instance
AlignPosition
Mode
Enum
PositionAlignmentMode
OneAttachment
Attachment0
RootAttachment
MaxForce
math
huge
MaxVelocity
TweenSpeed
Parent
AlignOrientation
OrientationAlignmentMode
RigidityEnabled
CFrame
ChangeState
HumanoidStateType
Landed
task
wait
Physics
game
Run Service
PostSimulation
Connect
tick
Died
DistanceFromCharacter
Disconnect
pairs
GetDescendants
BasePart
CanCollide
(for generator)
(for state)
(for control)
part
character
playerDied
speed
caveAvoid
character
humanoid
humanoidRootPart
fixedSpeed
alignPos
alignOrientation
startTimestamp
playerDied
tempNoClip
LocalPlayer
CheckCave
MakeTween
Variables
TweenNoclip
coroutine
wrap
task
wait
pcall
TweenSpeed
MakeTween
speed
Variables
tweenCompleted
MakeTween
speed
Variables
speed
tweenCompleted
MakeTween
Variables
Velocity
Vector3
zero
MoveTo
Position
StopTween
Root
GetRoot
GetHumanoid
FindFirstChild
Honeycomb
Value
patharrow
Base
Position
LocalPlayer
Balloons
HiveBalloons
HiveBalloonInstance
FindFirstChild
BalloonRoot
Position
BetterMagnitudeP
GetHivePosition
Balloon
FindLazy
Workspace
BetterMagnitudeP
GetHivePosition
Vector3
math
Position
Part
Position1
Position2
mpos
mxpos
FindFirstChild
BalloonBody
GuiAttach
TextLabel
Text
gsub
tonumber
Balloon
GuiAttach
Pollen
FixedCount
pairs
Particles
GetChildren
Name
WarningDisk
Thorn
table
insert
warningDisks
(for generator)
(for state)
(for control)
Workspace
Position
Vector3
FindPartOnRayWithWhitelist
Size
Unit
Magnitude
magnitude
MoveTo
task
wait
playerPos
warningDisks
touchedWarningDisk
diskRadius
dirToPlayer
diskCenter
playerToCenter
playerToDisk
safePos
GetRoot
GetWarningDisks
Workspace
GetHumanoid
assert
PlayerGui
ScreenGui
TileGrid
we couldnt find the tile grid and had to quit lol
IconTile
Position
Offset
Icon
Image
Icon
Icon
TileGrid
Buff
FindLazy
LocalPlayer
Size
Scale
Buff
OgMins
rbxassetid://8083443467
Icon
Buff
Mins
GetBuffFromID
GetMinutesLeftFromBuff
Name
Token
Pollen
Value
Capacity
ConvertAt
CoreStats
Variables
tostring
PlayerGui
ScreenGui
ActivateButton
BackgroundColor3
0.196078, 0.513726, 1
LocalPlayer
Vector3
FindPartOnRayWithWhitelist
Parent
Name
FlowerZones
position
hitPos
Workspace
FlowerZones
Parent
GetAttribute
Done
Converting
tick
Position
magnitude
CFrame
YVector
FindPartOnRay
pcall
task
wait
SetAttribute
MoveTo
Position
GetHumanoid
token
token
startedCollecting
moveToCalled
collected
Stored
GetRoot
Workspace
GetHumanoid
typeof
Vector3
Instance
Position
pairs
Collectibles
GetChildren
Parent
task
wait
nearqui
magnitude
(for generator)
(for state)
(for control)
bignore
GetRoot
Workspace
FindField
BetterMagnitudeP
CollectToken
Vicious
ViciousBeeDetected
VicMax
VicMin
pairs
Particles
GetChildren
string
find
Name
Thorn
HasAccessToField
position
Position
Vector3
task
wait
tick
Monsters
tonumber
gmatch
Parent
FindFirstChild
MoveTo
viciousModel
(for generator)
(for state)
(for control)
(for generator)
(for state)
(for control)
timeoutTick
vicMonster
(for generator)
(for state)
(for control)
viciousOnField
level
CombatVariables
Stored
viciousBeeLevel
Workspace
FindField
Tween
GetRoot
BetterMagnitude
GetHumanoid
CollectNearestTokens
AvoidWarningDisks
CanFarm
AutoDig
setthreadidentity
Collectors
WalkSpeed
OldTween
Velocity
Vector3
zero
task
wait
Stored
Variables
Modules
GetRoot
GetHumanoid
Color3
pairs
GetChildren
Color
Supreme
Sprout
(for generator)
(for state)
(for control)
Sprout
(for generator)
(for state)
(for control)
Type
Color
Sprouts
SproutColors
Wealthy
AttemptToy
Wealth Clock
Strawberry
Strawberry Dispenser
Blueberry
Blueberry Dispenser
Glue
Glue Dispenser
Coconut
IsDead
FindTimer
CoconutCrab
Coconut Dispenser
Honey
Honey Dispenser
Treat
Treat Dispenser
Robo
ClientStatCache
Eggs
RoboPass
Free Robo Pass Dispenser
Jelly
AntPass
Free Ant Pass Dispenser
RedBooster
Red Field Booster
BlueBooster
Blue Field Booster
WhiteBooster
Field Booster
Extreme
Value
Extreme Memory Match
Night
Night Memory Match
Mega
Mega Memory Match
Normal
Memory Match
DoingToys
self
ToyVariables
ToyFuncs
MobFuncs
MonsterSpawners
Modules
CoreStats
GetBeeCount
Stored
CanToyBeUsed
DoingToys
task
wait
Toys
Platform
Circle
Position
MemMatchPosition
Vector3
Glue Dispenser
AutoFarm
Magnitude
SendKeyEvent
Enum
KeyCode
game
333333
ClientStatCache
Eggs
Gumdrops
CFrame
GetNetworkPing
Events
ClientCall
ToyEvent
Character
BreakJoints
self
Name
ToyPosition
Stored
GetRoot
GetHumanoid
Workspace
Tween
Variables
InputManager
Modules
BetterMagnitudeP
LocalPlayer
UseItem
Vines
DBScreenShow
Battle Leaderboard
Honey Leaderboard
10BeeGate
5BeeGate
15BeeGate
25BeeGate
Red HQ
Blue HQ
Robo Bear Challenge Leaderboard
Red Portal
Blue Portal
Honey Dispenser
Blue Field Booster
Red Field Booster
Instant Converter B
Royal Jelly Dispenser
Free Ant Pass Dispenser
Memory Match
20BeeGate
Instant Converter
Instant Converter C
Ant Leaderboard
Tunnel Portal
Treat Dispenser
Bronze Star Amulet Generator
Blueberry Dispenser
Strawberry Dispenser
Silver Star Amulet Generator
Gold Star Amulet Generator
Diamond Star Amulet Generator
Free Royal Jelly Dispenser
Glue Dispenser
Vicious Bee Claimer
Badge Guild
Ace Room
Blender
Riley Quests Leaderboard
Daily Honey Leaderboard
Bucko Quests Leaderboard
Stick Bug Leaderboard
Moon Amulet Generator
Gummy Bee Claimer
35BeeGate
Coconut Crab Leaderboard
Ant Pass Dispenser
Mega Memory Match
Night Memory Match
Extreme Memory Match
Coconut Dispenser
Dapper Shop
Red Elite Room
Supreme Star Amulet Generator
Daily White Pollen Leaderbaord
Blue Pollen Leaderboard
Red Pollen Leaderboard
Daily Red Pollen Leaderboard
Daily Blue Pollen Leaderboard
White Pollen Leaderbaord
Nectar Pot
Puffshroom Damage Leaderboard
Beequip Storage
Free Robo Pass Dispenser
Robo Pass Dispenser
Nectar Condenser
Sticker Stack
Sticker Printer
Sticker-Seeker Quest Machine
Hive Hub Beequip Storage
Blue Cannon
Mythic Meteor Shower
Red Cannon
Field Booster
Honeystorm
Ant Challenge
Yellow Cannon
Slingshot
Sprout Summoner
Wealth Clock
ToyTimes
table
find
pcall
ToyTimes
workspace
Toys
Cooldown
Value
time
ToyAvailableTime
Cooldown
GetStats
self
NonBeesmas
Sucess
Result
GetStats
FindFirstChild
Attachment
TimerGui
TimerLabel
TimerAttachment
self
Spawner
Possible1
Visible
self
Label
pairs
IsMobSpawned
self
Labels
IsActuallyDead
(for generator)
(for state)
(for control)
IsDead
AutoFarm
KillingMobs
task
wait
Position
Vector3
math
random
Jump
MoveTo
CollectLoot
pairs
GetChildren
self
Spawn
Labels
SafestPoint
(for generator)
(for state)
(for control)
Token
Variables
Stored
GetRoot
GetHumanoid
Tween
BetterMagnitude
CombatVariables
Collectibles
IsMobSpawned
FindTimer
King Beetle Cave
AutoFarm
KillingMobs
Vector3
Position
MoveTo
task
wait
KingBeetle
pairs
GetChildren
Point
self
SafestPoints
Point
(for generator)
(for state)
(for control)
Token
MonsterSpawners
Variables
Stored
Tween
BetterMagnitudeP
GetRoot
GetHumanoid
CombatVariables
Collectibles
IsInVectors
BetterMagnitude
IsMobSpawned
FindTimer
TunnelBear
AutoFarm
KillingMobs
Vector3
task
wait
Monsters
FindFirstChild
Tunnel Bear (Lvl 9)
HumanoidRootPart
MoveTo
Position
pairs
GetChildren
self
(for generator)
(for state)
(for control)
Token
MonsterSpawners
Variables
Stored
Tween
Workspace
BetterMagnitude
GetRoot
GetHumanoid
CombatVariables
Collectibles
IsInVectors
Ladybugs
Kill
Clover Field
FindTimer
Ladybug Bush
Strawberry Field
Ladybug Bush 2
Ladybug Bush 3
Mushroom Field
MushroomBush
self
CombatVariables
GetFlowerZone
MonsterSpawners
RhinoBeetles
Kill
Clover Field
FindTimer
Rhino Bush
Blue Flower Field
Rhino Cave 1
Bamboo Field
Rhino Cave 2
Rhino Cave 3
self
CombatVariables
GetFlowerZone
MonsterSpawners
Mantis
Kill
Pine Tree Forest
FindTimer
ForestMantis1
ForestMantis2
Pineapple Patch
PineappleMantis1
self
CombatVariables
GetFlowerZone
MonsterSpawners
Scorpians
Kill
Rose Field
FindTimer
RoseBush
RoseBush2
self
CombatVariables
GetFlowerZone
MonsterSpawners
Werewolf
Kill
Pumpkin Patch
FindTimer
WerewolfCave
self
CombatVariables
GetFlowerZone
MonsterSpawners
Werewolf
Kill
Spider Field
FindTimer
Spider Cave
self
CombatVariables
GetFlowerZone
MonsterSpawners
KingBeetle
TunnelBear
Ladybugs
RhinoBeetles
Mantis
Scorpians
Werewolf
Spider
KillingMobs
self
CombatVariables
MobFuncs
Stored
pairs
table
find
Name
Access
(for generator)
(for state)
(for control)
BeeCount
FieldNames
FieldsBeeRequirement
GetBeeCount
Bubble
pairs
Particles
GetChildren
Name
find
Position
Magnitude
Fuzzy
DustBunnyInstance
FindFirstChild
Plane
Leaves
Type
(for generator)
(for state)
(for control)
(for generator)
(for state)
(for control)
(for generator)
(for state)
(for control)
Workspace
Field
FindField
Stored
Position
tostring
math
random
Name
GetAttribute
Done
FindFirstChild
AutoFarm
CanFarm
FieldIsAllowed
Converting
DoingToys
OutOfFieldBoundsFix
MoveTo
SetAttribute
task
wait
parent
Humanoid
Root
SpecialID
GetHumanoid
GetRoot
FindField
BetterMagnitude
Field
Variables
Stored
Position
tostring
math
random
Name
FindFirstChild
AutoFarm
CanFarm
FieldIsAllowed
Converting
DoingToys
OutOfFieldBoundsFix
MoveTo
tick
task
wait
parent
AntiForever
Humanoid
Root
SpecialID
GetHumanoid
GetRoot
FindField
BetterMagnitude
Field
Variables
Stored
Position
IgnoreHoney
FindFirstChild
BackDecal
Texture
Vector3
Magnitude
Transparency
tostring
math
random
Name
GetAttribute
Done
AutoFarm
CanFarm
FieldIsAllowed
Converting
DoingToys
OutOfFieldBoundsFix
MoveTo
Size
SetAttribute
task
wait
Token
Humanoid
Root
Uncollectable
SpecialID
Flower
GetHumanoid
GetRoot
FindField
BetterMagnitude
Field
Variables
honey
MarkTokenAsBad
Collectibles
Stored
GetFlower
Game
MatchedTiles
pairs
RevealedTiles
Indexes
table
insert
dupes
exclude
(for generator)
(for state)
(for control)
index
value
(for generator)
(for state)
(for control)
task
wait
Game
Grid
InputActive
NumTiles
Chances
GetTileAtIndex
LastSelectedIndex
RevealedTiles
pairs
Indexes
RegisterTileSelected
Events
ClientCall
MemoryMatchEvent
Action
Finish
EndGame
ActiveMemMatch
MemMatchPosition
(for index)
(for limit)
(for step)
Index
tile
searchFor
dupes
(for generator)
(for state)
(for control)
dupes
(for generator)
(for state)
(for control)
setIdentity
UpdateGameTable
MemoryMatchModule
Modules
MinigameGui
ActiveMemMatch
oldMemoryMatchStartGame
CanFarm
AutoConvert
AutoFarm
ConvertAtMinutes
ConvertBalloon
KillingMobs
DoingToys
Converting
Position
Magnitude
Events
ClientCall
PlayerHiveCommand
ToggleHoneyMaking
wait
DoingBalloon
Pollen
Value
FireServer
task
MoveTo
StartMobs
StartToys
DoConvert
Minutes
HivePosition
Root
Minutes
Stored
Variables
GetBalloonMinutes
IsBagFull
GetPlayerBalloon
GetHivePosition
GetRoot
Tween
ActivesButton
Modules
CoreStats
ReplicatedStorage
GetHumanoid
RyzenFuncs
PlayerGui
ScreenGui
Menus
Children
Quests
Content
pairs
GetAllQuests
FindFirstChild
Frame
task
wait
firesignal
ChildTabs
Quests Tab
MouseButton1Click
tick
ffffff
GetChildren
Name
QuestBox
TitleBarBG
TitleBar
Text
Repeatable
Black Bear
BlackBear
Mother Bear
MotherBear
NpcGate
Position
Vector3
Magnitude
ActivateButton
Offset
SendKeyEvent
Enum
KeyCode
game
Visible
ButtonOverlay
GetNetworkPing
Tasks
Type
Collect Pollen
Progress
FieldName
Ant Field
None
PollenType
BestRedField
Blue
BestBlueField
BestWhiteField
HasAccessToField
Feed Bees
Amount
Item
Target
find
Straw
Strawberry
ClientStatCache
Eggs
math
floor
Royal Jelly
Bees
spawn
warn
Timeout on auto quest feeding bees
workspace
CurrentCamera
CFrame
|a2q\
error
what? (regex failure in auto quest!)
NpcGate
NPCs
Circle
NpcName
AllTasks
Tasks
table
insert
Frame
GetChildren
Name
EmptyMessage
pairs
TaskBar
Description
Text
gsub
Complete! Talk to (.+)%.
FillBar
Size
Scale
table
insert
AllTasks
Progress
match
Collect [%d,]+ Pollen
Collect [%d,]+ %w+ Pollen
Collect ([%d,]+) (%w+) Pollen from the (.+)%.
Collect ([%d,]+) Pollen from the (.+)%.
None
Collect [%d,]+ %w+ Pollen%.
Collect [%d,]+ Pollen%.
Collect [%d,]+ Pollen.
Collect [%d,]+ (%w+) Pollen.
Collect ([%d,]+)
tonumber
Type
Collect Pollen
PollenType
ValueCount
FieldName
Feed [%d,]+ .+ to your %w+%.
Feed ([%d,]+) (.+) to your (%w+)%.
Feed Bees
Amount
Item
(%w+)s
Target
Tasks
Children
(for index)
(for limit)
(for step)
(for generator)
(for state)
(for control)
Desc
Prog
ValueCount
PollenType
FieldName
Amount
Item
Target
Magic
Workspace
Magic
Quests
pairs
AllTasks
Progress
Quest
(for generator)
(for state)
(for control)
Position
Magnitude
tick
warn
Timeout on auto quest feeding bees
pcall
tonumber
setthreadidentity
ClientStatCache
Update
task
wait
Events
ClientCall
ConstructHiveCellFromEgg
Modules
Item
LeftNeeded
GetRoot
HivePos
Tween
StopMovement
timeoutTick
Modules
Item
LeftNeeded
Finished
Quests
Menus
Magic
RegisterQuest
(for generator)
(for state)
(for control)
QuestInMenu
Children
(for generator)
(for state)
(for control)
IsCompleted
(for generator)
(for state)
(for control)
Quest
Gate
GatePos
(for index)
(for limit)
(for step)
(for index)
(for limit)
(for step)
(for generator)
(for state)
(for control)
Task
ResortField
Amount
Item
Target
LeftNeeded
HivePos
Finished
timeoutTick
LocalPlayer
Workspace
Modules
_debug
QuestVariables
Tween
GetRoot
StopMovement
InputManager
Field
GetFlowerZone
GetHivePosition
ActiveMemMatch
MemMatchPosition
Position
Converting
DoingBalloon
CanFarm
Magnitude
Master
Vector3
Root
GetRoot
Tween
Stored
Field
FindField
QuestVariables
AutoQuest
AutoFarm
FarmField
CanFarm
FieldIsAllowed
Converting
KillingMobs
ActiveMemMatch
DoingToys
GatherInterrupt
StartMobs
ToyGatherInterrupt
StartToys
ViciousBeeDetected
Vicious
Master
FarmSprouts
pairs
GetChildren
Sprouts
tick
Position
Magnitude
DidSprinklers
EquippedSprinkler
The Supreme Saturator
Basic Sprinkler
Silver Soakers
Golden Gushers
Diamond Drenchers
AutoSprinklers
wait
JumpPower
Jump
Sprinkler Builder
333333
bubbles
Enabled
Forced
fuzzy
leaf
Bubble
Fuzzy
Leaves
NoTokens
MaxBubbles
Particles
workspace
Flowers
OutOfFieldBoundsFix
task
FindFirstChild
BackDecal
Texture
rbxassetid://1629547638
Root
Humanoid
SproutType
Sprout
(for generator)
(for state)
(for control)
CField
SprinklerJumps
Equipped
(for index)
(for limit)
(for step)
OldJumpPower
ShouldI
Token
Bubble
Fuzzbombs
Leaf
PriorityMax
DontDoBubbleYet
Variables
Stored
NewMemoryMatchStartGame
GetRoot
GetHumanoid
RyzenFuncs
Field
GetFlowerZone
CombatVariables
KillVicious
QuestVariables
AutoQuest
LocateSprout
ToyVariables
FlowerZones
BetterMagnitude
SproutOldField
SproutSpawningTick
FindField
GetStats
UseItem
FarmBubbles
FarmFuzzyBombs
FarmLeaves
FindClosestLazy
Collectibles
Find
FindLazy
LastBubble
BubblesDone
FarmV
Farm
Workspace
FarmNil
CanFarm
Toggled
Stored
StopMovement
tostring
reverse
gsub
(%d%d%d)
tostring
math
floor
second
minute
hour
tick
task
wait
math
round
Honey
Value
floor
Update
Text
Session Honey: 
Honey Per Hour: 
Elapsed Time: 
TimePassed
HoneyGained
HoneyPerHour
loadTick
CoreStats
StartHoney
SessionHoneyLabel
FormatNumber
HoneyPerHourLabel
ElapsedTimeLabel
FormatTime
cloneref
game
GetService
TeleportService
Teleport
PlaceId
Players
LocalPlayer
AutoDig
Toggled
Variables
AutoConvert
Toggled
Variables
AutoSprinklers
Toggled
Variables
AutoFarm
FarmField
SetCore
SendNotification
Title
Auto farm
Text
select a field before trying to use autofarm!
Duration
Icon
getcustomasset
namehub.png
Toggled
Variables
StopMovement
StarterGui
HasAccessToField
SetCore
SendNotification
Title
Field magic
Text
You cant use this field (you have 
 bees)
Duration
Icon
getcustomasset
namehub.png
FarmField
DidSprinklers
Fieldx
StarterGui
GetBeeCount
Variables
Stored
StopMovement
Field
GetFlowerZone
ConvertAt
CurrentValue
Variables
ConvertBalloon
Toggled
Variables
ConvertAtMinutes
CurrentValue
Variables
Enabled
Toggled
FarmBubbles
Enabled
Toggled
FarmFuzzyBombs
Enabled
Toggled
FarmLeaves
MaxBubbles
CurrentValue
Variables
IgnoreHoney
Toggled
Variables
NoTokens
Toggled
Variables
GatherInterrupt
Toggled
Variables
Master
Toggled
QuestVariables
BestWhiteField
Field
QuestVariables
BestRedField
Field
QuestVariables
BestBlueField
Field
QuestVariables
BlackBear
Toggled
QuestVariables
MotherBear
Toggled
QuestVariables
Ladybugs
Toggled
CombatVariables
RhinoBeetles
Toggled
CombatVariables
Mantis
Toggled
CombatVariables
Scorpians
Toggled
CombatVariables
Werewolf
Toggled
CombatVariables
Spider
Toggled
CombatVariables
CollectLoot
Toggled
CombatVariables
StartMobs
RyzenFuncs
KingBeetle
Toggled
CombatVariables
TunnelBear
Toggled
CombatVariables
VicMax
CurrentValue
CombatVariables
VicMin
CurrentValue
CombatVariables
Vicious
Toggled
CombatVariables
ToyGatherInterrupt
Toggled
Variables
Wealth Clock
Wealthy
Strawberry Dispenser
Strawberry
Blueberry Dispenser
Blueberry
Glue Dispenser
Glue
Coconut Dispenser
Coconut
Honey Dispenser
Honey
Treat Dispenser
Treat
Robo Pass Dispenser
Robo
Ant Pass Dispenser
Value
Enabled
ToyVariables
FarmSprouts
Toggled
ToyVariables
Sprouts
Value
Enabled
ToyVariables
Value
Enabled
ToyVariables
BoosterTogs
Value
Enabled
ToyVariables
TweenSpeed
CurrentValue
Variables
WalkSpeed
CurrentValue
Stored
WalkSpeed
Toggled
Variables
Visible
Toggled
task
wait
Died
Connect
DidSprinklers
Stored
GetHumanoid
Stored
Sunflower Field
Dandelion Field
Blue Flower Field
Clover Field
Mushroom Field
Strawberry Field
Spider Field
Bamboo Field
Pineapple Patch
Stump Field
Pine Tree Forest
Pumpkin Patch
Cactus Field
Rose Field
Mountain Top Field
Coconut Field
Pepper Patch
Name
LeafBurst
Leaves
Parent
Stored
Leaves
Stored
task
wait
string
find
Name
Vicious
PushAlert
[Name Hub] Vicious Bee spawned in 
tostring
Position
ViciousBeeDetected
Guiding Star
WarningDisk
BrickColor
Lime green
Size
instance
FindField
Stored
string
find
Name
Vicious
ViciousBeeDetected
Guiding Star
WarningDisk
BrickColor
Lime green
Size
instance
Stored
CaptureController
ClickButton2
Vector2
VirtualUser
sethook
allowedLine
called
funcs
(for index)
(for limit)
(for step)
getTraceback
traceback
iter
(for generator)
(for state)
(for control)
(for index)
(for limit)
(for step)
loadTick
curb1
loadCompensation
(for generator)
(for state)
(for control)
MobButton
chatclone
(for generator)
(for state)
(for control)
honey
Players
LocalPlayer
ReplicatedStorage
TweenService
Workspace
StarterGui
InputManager
FlowerZones
MonsterSpawners
Collectibles
Sprouts
CoreStats
MinigameGui
MemoryMatchManager
MemoryMatchGui
MemoryMatchModule
AlertBoxes
Library
NewLib
MainTab
CombatTab
ToysTab
QuestsTab
SettingsTab
FarmBubbles
FarmFuzzyBombs
FarmFires
FarmLeaves
Variables
CombatVariables
ToyVariables
QuestVariables
Stored
Modules
FieldsBeeRequirement
FlowerTick
FlowerPos
GetFlower
GetStats
FindLazy
FindClosestLazy
GetBeeCount
GetFlowerZone
BetterMagnitude
BetterMagnitudeP
FieldZones
UseItem
GetRoot
GetHumanoid
CheckCave
TweenNoclip
MakeTween
Tween
StopMovement
GetHivePosition
GetPlayerBalloon
IsInVectors
GetPollenFromBalloon
GetWarningDisks
AvoidWarningDisks
GetBuffFromID
GetMinutesLeftFromBuff
GetBalloonMinutes
MarkTokenAsBad
IsBagFull
ActivesButton
FindField
CollectToken
CollectNearestTokens
viciousBeeLevel
KillVicious
curb2
Hive
PhysicalHive
Fixed3
SproutColors
LocateSprout
RyzenFuncs
MobFuncs
ToyFuncs
Field
Find
Farm
FarmNil
FarmV
setIdentity
UpdateGameTable
NewMemoryMatchStartGame
oldMemoryMatchStartGame
_debug
AutoQuest
LastBubble
BubblesDone
SproutSpawningTick
SproutOldField
HomeSection
FormatNumber
FormatTime
StartHoney
SessionHoneyLabel
HoneyPerHourLabel
ElapsedTimeLabel
FarmingSection
ConvertingSection
FarmThings
TokensSection
QuestsSection
MainQuestsSection
KillSection
BossSection
VicSection
DispensersSection
SproutsSection
BoostersSection
BoosterTogs
MemorySection
MovementSection
SavesSection
(for generator)
(for state)
(for control)
(for generator)
(for state)
(for control)
VirtualUser
finalTick
loadSeconds
loadMilleseconds
