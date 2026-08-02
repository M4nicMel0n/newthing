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
end
if called < 2 then
    valid = false;
end

-- Anti Function Hook
local funcs = {pcall, string.char, debug.getinfo, string.dump}
for i = 1, #funcs do
    if debug.getinfo(funcs[i]).what ~= "C" then
        valid = false;
    end

    if pcall(string.dump, funcs[i]) then
        valid = false;
    end
end

-- Anti Beautify
local function getTraceback()
    local str = (function(arg)
        return debug.traceback(arg)
    end)("]] .. string .. [[");
    return str;
end

local traceback = getTraceback();
valid = valid and traceback:sub(1, traceback:find("\n") - 1) == "]] .. string .. [[";
local iter = traceback:gmatch(":(%d*):");
local v, c = iter(), 1;
for i in iter do
    valid = valid and i == v;
    c = c + 1;
end
valid = valid and c >= 2;
for i=1,50 do
face={string.rep("Retard! ", 6e6)}
end;
ndebugging=true;
local loadTick, curb1, loadCompensation = tick(), tick(), 0

if not isfile("namehub.png") then
    writefile("namehub.png", game:HttpGet("https://raw.githubusercontent.com/M4nicMel0n/newthing/main/smallicon.png"))
end
if not isfile("namehub2.png") then
    writefile("namehub2.png", game:HttpGet("https://raw.githubusercontent.com/M4nicMel0n/newthing/main/smallicon.png"))
end
for i,v in pairs(workspace.Decorations["Diamond Mask Hall"]:GetChildren()) do
	if v:FindFirstChild("GateScript") and v.Name == "Part" then
		v.CanTouch = false
	end
end
workspace.Decorations["30BeeZone"].Pit.CanTouch = false

local uni = game:GetService("CoreGui").TopBarApp.TopBarApp.UnibarLeftFrame.UnibarMenu
uni["1"].FillDirection = Enum.FillDirection.Horizontal
if uni:FindFirstChild("4") then
    uni["4"]:Destroy()
end
local MobButton = uni["2"]:Clone()
MobButton.Parent = uni
MobButton.Name = "4"
MobButton.Size = UDim2.fromOffset(46, 44)
MobButton["3"].nine_dot:Destroy()
local chatclone = MobButton["3"].chat
chatclone.Position = UDim2.fromOffset(0, 0)
for i, v in pairs({"5", "Highlighter", "SelectedHighlighter", "IntegrationIconFrame"}) do
    chatclone[v]:Destroy()
end
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

_G.ColorTheme = Color3.fromRGB(0, 155, 0)

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
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/M4nicMel0n/newthing/main/new.lua"))()

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
}
local CombatVariables = {
    VicMax = 12,
    VicMin = 1
}
local ToyVariables = {}
local QuestVariables = {}
local Stored = {
    Leaves = {},
    Flowers = Workspace.Flowers:GetChildren()
}
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
end
local function GetStats(Optional)
    return Optional and Modules.ClientStatCache:Get(Optional) or Modules.ClientStatCache:Get()
end
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
end
local function GetBeeCount()
    local Count = 0
    for i, v in pairs(game.Players.LocalPlayer.Honeycomb.Value.Cells:GetChildren()) do
        if v.CellType.Value ~= "Empty" then
            Count = Count + 1
        end
    end
    return Count
end
local function GetFlowerZone(zone)
    return FlowerZones[zone or Variables.FarmField]
end
local function BetterMagnitude(part1, part2)
    local part1XY = part1.Position * Vector3.new(1, 0, 1)
    local part2XY = part2.Position * Vector3.new(1, 0, 1)
    return (part1XY - part2XY).Magnitude
end
local function BetterMagnitudeP(part1, part2)
    local part1XY = part1 * Vector3.new(1, 0, 1)
    local part2XY = part2 * Vector3.new(1, 0, 1)
    return (part1XY - part2XY).Magnitude
end
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
end
local function UseItem(Name)
    Modules.Events.ClientCall("PlayerActivesCommand", {Name = Name})
end
local function GetRoot()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.Health > 0 then
        return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    else
        return nil
    end
end
local function GetHumanoid()
    return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")
end
local function CheckCave(startPos, endPos)
	local direction = (endPos - startPos).Unit
	local ray = Ray.new(startPos, direction * (endPos - startPos).magnitude)
	local part = Workspace:FindPartOnRayWithWhitelist(ray, {Workspace.Cave})
	if part then return true else return false end
end

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
end
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
end

local function Tween(pos, speed)
	local tweenCompleted = nil
	coroutine.wrap(function() 
		tweenCompleted = pcall(function() 
			MakeTween(pos, (speed or Variables.TweenSpeed) * 6)
		end)
		if tweenCompleted == nil then tweenCompleted = false end
	end)()
	repeat task.wait() until tweenCompleted ~= nil
end

local function StopMovement()
    local Root, Hum = GetRoot(), GetHumanoid()
    if Root and Hum then
        Root.Velocity = Vector3.zero
        Hum:MoveTo(Root.Position)
        StopTween()
    end
end
local function GetHivePosition()
    return LocalPlayer:FindFirstChild("Honeycomb").Value.patharrow.Base.Position
end
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
end
local function IsInVectors(Part, Position1, Position2) -- stole it from my previous scripts
    local mpos = Vector3.new(math.min(Position1.X, Position2.X), math.min(Position1.Y, Position2.Y), math.min(Position1.Z, Position2.Z))
    local mxpos = Vector3.new(math.max(Position1.X, Position2.X), math.max(Position1.Y, Position2.Y), math.max(Position1.Z, Position2.Z))
    return Part.Position.X >= mpos.X and Part.Position.X <= mxpos.X and Part.Position.Y >= mpos.Y and Part.Position.Y <= mxpos.Y and Part.Position.Z >= mpos.Z and Part.Position.Z <= mxpos.Z
end
local function GetPollenFromBalloon(Balloon) -- this isnt used, but im not going to remove it incase i need it again later
    if not Balloon then return end
    if not Balloon:FindFirstChild("BalloonBody") then return end
    local GuiAttach = Balloon.BalloonBody.GuiAttach
    local Pollen = GuiAttach.Gui.Bar.TextLabel
    local FixedCount = Pollen.Text:gsub(",", "")
    return tonumber(FixedCount)
end

local function GetWarningDisks()
	local warningDisks = {}
	for i,v in pairs(Workspace.Particles:GetChildren()) do
		if v.Name == "WarningDisk" or v.Name == "Thorn" then 
			table.insert(warningDisks,v) 
		end
	end
	return warningDisks
end

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
end

local function GetBuffFromID(Icon)
    local TileGrid = assert(FindLazy(LocalPlayer.PlayerGui.ScreenGui, "TileGrid", 0, function(t)
        return t.Position.Y.Offset >= -50
    end), "we couldnt find the tile grid and had to quit lol")
    local Buff = FindLazy(TileGrid, "IconTile", 0, function(i)
        return i.BG.Icon.Image == Icon
    end)
    return Buff or nil
end

local function GetMinutesLeftFromBuff(Buff, OgMins)
    return Buff and (Buff.BG.Bar.Size.Y.Scale * OgMins) * OgMins
end
local function GetBalloonMinutes()
    local Icon = "rbxassetid://8083443467"
    local Buff = GetBuffFromID(Icon)
    if Buff then
        local Mins = GetMinutesLeftFromBuff(Buff, 60)
        return Mins
    else
        return nil
    end
end
--print(GetBalloonMinutes())
--print(GetPollenFromBalloon(GetPlayerBalloon()))
--print(GetPlayerBalloon())
local function MarkTokenAsBad(Token)
    Token.Name = "_C"
end
local function IsBagFull()
    return CoreStats.Pollen.Value >= CoreStats.Capacity.Value * (Variables.ConvertAt / 100) 
end
local function ActivesButton()
    return tostring(LocalPlayer.PlayerGui.ScreenGui.ActivateButton.BackgroundColor3) == "0.196078, 0.513726, 1"
end
local function FindField(position)
	local ray = Ray.new(position+Vector3.new(0, -35, 0), Vector3.new(0,100, 0))
	local hit, hitPos = Workspace:FindPartOnRayWithWhitelist(ray, {FlowerZones})
	if hit and hit.Parent.Name == "FlowerZones" then
		return hit
	else
		return nil
	end
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
                        (viciousModel.Position + Vector3.new(0, 7, 0))
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
                        (viciousOnField.Position)
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
        if Stored.Old and GetHumanoid() and GetRoot() then
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
            (PhysicalHive.patharrow.Base.Position, Variables.TweenSpeed)
            wait(((PhysicalHive.patharrow.Base.Position - GetRoot().Position).Magnitude / 50) + 0.5)
            ReplicatedStorage.Events.ClaimHive:FireServer(Hive)
            break
        end
        task.wait()
    until LocalPlayer:FindFirstChild("Honeycomb")
    loadCompensation = (tick() - loadTick) - (curb2 - curb1)
    loadTick = loadTick + loadCompensation
end

local function Fixed3(r,g,b)
    return Color3.new(r/255,g/255,b/255)
end
local SproutColors = {
    Basic = Fixed3(180, 190, 186),
    Rare = Fixed3(168, 167, 169),
    Epic = Fixed3(169, 157, 5),
    Gummy = Fixed3(242, 129, 255),
    Legendary = Fixed3(20, 165, 199),
    Moon = Fixed3(103, 162, 201)
}
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
end

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
end
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
end
function MobFuncs:FindTimer(Spawner)
    local Possible1 = Spawner:FindFirstChild("Attachment") and Spawner.Attachment.TimerGui.TimerLabel
    if not Possible1 then
        return Spawner:FindFirstChild("TimerAttachment").TimerGui.TimerLabel
    else
        return Possible1
    end
end
function MobFuncs:IsMobSpawned(Label)
    return Label.Visible == false
end
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
end
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
end
function MobFuncs:Ladybugs()
    if CombatVariables.Ladybugs then self:Kill(GetFlowerZone("Clover Field"), {self:FindTimer(MonsterSpawners["Ladybug Bush"])}) end
    if CombatVariables.Ladybugs then self:Kill(GetFlowerZone("Strawberry Field"), {self:FindTimer(MonsterSpawners["Ladybug Bush 2"]), self:FindTimer(MonsterSpawners["Ladybug Bush 3"])}) end
    if CombatVariables.Ladybugs then self:Kill(GetFlowerZone("Mushroom Field"), {self:FindTimer(MonsterSpawners.MushroomBush)}) end
end
function MobFuncs:RhinoBeetles()
    if CombatVariables.RhinoBeetles then self:Kill(GetFlowerZone("Clover Field"), {self:FindTimer(MonsterSpawners["Rhino Bush"])}) end
    if CombatVariables.RhinoBeetles then self:Kill(GetFlowerZone("Blue Flower Field"), {self:FindTimer(MonsterSpawners["Rhino Cave 1"])}) end
    if CombatVariables.RhinoBeetles then self:Kill(GetFlowerZone("Bamboo Field"), {self:FindTimer(MonsterSpawners["Rhino Cave 2"])}) end
    if CombatVariables.RhinoBeetles then self:Kill(GetFlowerZone("Bamboo Field"), {self:FindTimer(MonsterSpawners["Rhino Cave 3"])}) end
end
function MobFuncs:Mantis()
    if CombatVariables.Mantis then self:Kill(GetFlowerZone("Pine Tree Forest"), {self:FindTimer(MonsterSpawners.ForestMantis1)}) end
    if CombatVariables.Mantis then self:Kill(GetFlowerZone("Pine Tree Forest"), {self:FindTimer(MonsterSpawners.ForestMantis2)}) end
    if CombatVariables.Mantis then self:Kill(GetFlowerZone("Pineapple Patch"), {self:FindTimer(MonsterSpawners.PineappleMantis1)}) end
end
function MobFuncs:Scorpians()
    if CombatVariables.Scorpians then self:Kill(GetFlowerZone("Rose Field"), {self:FindTimer(MonsterSpawners.RoseBush)}) end
    if CombatVariables.Scorpians then self:Kill(GetFlowerZone("Rose Field"), {self:FindTimer(MonsterSpawners.RoseBush2)}) end
end
function MobFuncs:Werewolf()
    if CombatVariables.Werewolf then self:Kill(GetFlowerZone("Pumpkin Patch"), {self:FindTimer(MonsterSpawners.WerewolfCave)}) end
end
function MobFuncs:Spider()
    if CombatVariables.Werewolf then self:Kill(GetFlowerZone("Spider Field"), {self:FindTimer(MonsterSpawners["Spider Cave"])}) end
end
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
end

function HasAccessToField(Name)
    local Access = false
    for BeeCount, FieldNames in pairs(FieldsBeeRequirement) do
        if GetBeeCount() >= BeeCount and table.find(FieldNames, Name) then
            Access = true
        end
    end
    return Access
end

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
end

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
end

local oldMemoryMatchStartGame = MemoryMatchStartGame
MinigameGui.StartGame = function(...)
    local a = oldMemoryMatchStartGame(...)
    ActiveMemMatch = a
    return a
end

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
end

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
end
local function FormatTime(sec)
	local second = tostring(sec%60)
	local minute = tostring(math.floor(sec / 60 - math.floor(sec / 3600) * 60))
	local hour = tostring(math.floor(sec / 3600))

	return (#hour == 1 and "0"..hour or hour)..":"..(#minute == 1 and "0"..minute or minute)..":"..(#second == 1 and "0"..second or second)
end
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
end
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
}
BoostersSection.MultiDropdown("Allowed Boosters", {"Red Booster", "Blue Booster", "White Booster"}, nil, function(Value, Enabled)
    ToyVariables[BoosterTogs[Value]] = Enabled
end)
local MemorySection = ToysTab; ToysTab.Section("Memory Matches")
MemorySection.MultiDropdown("Allowed Memory Matches", {"Normal", "Mega", "Night", "Extreme"}, nil, function(Value, Enabled)
    ToyVariables[Value] = Enabled
end)

local MovementSection = SettingsTab; SettingsTab.Section("Config")
MovementSection.Slider("Tweening Speed", 3, 100, 11, function(CurrentValue)
    Variables.TweenSpeed = CurrentValue 
end)
MovementSection.Slider("Walking Speed", 20, 180, 20, function(CurrentValue)
    Stored.WalkSpeed = CurrentValue 
end)
MovementSection.Toggle("Enable Walk speed", function(Toggled)
    Variables.WalkSpeed = Toggled
end)
MovementSection.Toggle("Mobile Button", function(Toggled)
    uni["4"].Visible = Toggled
end, true)

local SavesSection = SettingsTab; SettingsTab.Section("Saves")
SavesSection.Label("Config saving is coming soon maybe")

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
        PushAlert("[Mel0n Hub] Vicious Bee detected in " .. tostring(FindField(v.Position)))
		Stored.ViciousBeeDetected = true
    end
end

Workspace.Particles.ChildAdded:Connect(function(instance)
	task.wait()
	if string.find(instance.Name, "Vicious") then
        PushAlert("[Mel0n Hub] Vicious Bee spawned in " .. tostring(FindField(instance.Position)))
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
]]

local VirtualUser = cloneref(game:GetService("VirtualUser"))
LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

local finalTick = tostring(tick() - loadTick)
local loadSeconds = finalTick:match("(%d+)%.")
local loadMilleseconds = finalTick:match("%.(.+)"):sub(1, 2)
PushAlert("Mel0n Hub loaded in " .. (loadSeconds .. "." .. loadMilleseconds) .. "s", "RainbowWithSound")

setfpscap(1000)
