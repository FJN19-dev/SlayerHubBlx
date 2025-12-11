local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Slayer Hub|Beta",
    SubTitle = "by FJN,Lorenzo",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    St = Window:AddTab({ Title = "Status", Icon = "user-cog" }),
    Main = Window:AddTab({ Title = "Main", Icon = "armchair" }),
    Sub = Window:AddTab({ Title = "Sub Farm", Icon = "swords" }),
    Quest = Window:AddTab({ Title = "Quest/Items", Icon = "scroll" }),
    Players = Window:AddTab({ Title = "Players/ESP", Icon = "user" }),
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "wand" }),
    Sea = Window:AddTab({ Title = "Sea Event", Icon = "waves" }),
    Other = Window:AddTab({ Title = "Draco", Icon = "" }),
    Fruit = Window:AddTab({ Title = "Fruit/Raid", Icon = "cherry" }),
    Race = Window:AddTab({ Title = "Race", Icon = "chevrons-right" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "list-plus" }),
    Settings = Window:AddTab({ Title = "Setting", Icon = "settings" })
}

-- ============================
-- CONFIGS GERAIS
-- ============================
_G.AutoRod = false
_G.AutoCast = false
_G.AutoCatch = false

_G.SelectedBait = "Basic Bait"
_G.SelectedRod = "Fishing Rod"

----------------------------------------------------
------------------ CRIAÇÃO DOS TOGGLES -------------
----------------------------------------------------

-- AUTO ROD
local ToggleRod = Tabs.Main:AddToggle("AutoRodToggle", {
    Title = "Auto Equip Rod",
    Default = false
})
ToggleRod:OnChanged(function(v)
    _G.AutoRod = v
end)

-- AUTO CAST
local ToggleCast = Tabs.Main:AddToggle("AutoCastToggle", {
    Title = "Auto Cast Line",
    Default = false
})
ToggleCast:OnChanged(function(v)
    _G.AutoCast = v
end)

-- AUTO CATCH
local ToggleCatch = Tabs.Main:AddToggle("AutoCatchToggle", {
    Title = "Auto Catch Fish",
    Default = false
})
ToggleCatch:OnChanged(function(v)
    _G.AutoCatch = v
end)

----------------------------------------------------
---------------------- DROPDOWN BAIT ---------------
----------------------------------------------------
local DropdownBait = Tabs.Main:AddDropdown("BaitDropdown", {
    Title = "Select Lure",
    Values = {
        "Basic Bait","Kelp Bait","Good Bait",
        "Abyssal Bait","Frozen Bait","Epic Bait","Carnivore Bait"
    },
    Multi = false,
    Default = "Basic Bait",
})
DropdownBait:OnChanged(function(v)
    _G.SelectedBait = v
    game.ReplicatedStorage.FishReplicated.FishingRequest:InvokeServer("SelectBait", v)
end)

----------------------------------------------------
---------------------- DROPDOWN ROD ----------------
----------------------------------------------------
local DropdownRod = Tabs.Main:AddDropdown("RodDropdown", {
    Title = "Select Rod",
    Values = {
        "Fishing Rod","Gold Rod","Shark Rod",
        "Shell Rod","Treasure Rod"
    },
    Multi = false,
    Default = "Fishing Rod",
})
DropdownRod:OnChanged(function(v)
    _G.SelectedRod = v
end)


----------------------------------------------------
------------------ SISTEMA AUTO-FISH ----------------
----------------------------------------------------

local plr = game.Players.LocalPlayer
local fishFolder = game.ReplicatedStorage:WaitForChild("FishReplicated")
local fishRequest = fishFolder:WaitForChild("FishingRequest")
local getWaterHeight = require(game.ReplicatedStorage.Util.GetWaterHeightAtLocation)


task.spawn(function()
    while task.wait(0.1) do
        local char = plr.Character
        if not char then continue end

        local hum = char:FindFirstChildOfClass("Humanoid")
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not (hum and hrp) then continue end

        local tool = char:FindFirstChildOfClass("Tool")

        --------------------------------------------------
        -- AUTO EQUIP ROD
        --------------------------------------------------
        if _G.AutoRod then
            if not tool or tool.Name ~= _G.SelectedRod then
                local rod = plr.Backpack:FindFirstChild(_G.SelectedRod)
                if rod then
                    hum:EquipTool(rod)
                    tool = rod
                end
            end
        end

        if not tool then continue end

        local state = tool:GetAttribute("State")
        local serverState = tool:GetAttribute("ServerState")


        --------------------------------------------------
        -- AUTO CAST
        --------------------------------------------------
        if _G.AutoCast then
            if state == "ReeledIn" or serverState == "ReeledIn" then
                local forward = hrp.Position + hrp.CFrame.LookVector * 60
                local waterY = getWaterHeight(hrp.Position)
                forward = Vector3.new(forward.X, waterY, forward.Z)

                fishRequest:InvokeServer("StartCasting")
                task.wait(0.25)
                fishRequest:InvokeServer("CastLineAtLocation", forward, 100, true)
            end
        end


        --------------------------------------------------
        -- AUTO CATCH
        --------------------------------------------------
        if _G.AutoCatch then
            if serverState == "Biting" then
                fishRequest:InvokeServer("Catching", true)
                task.wait(0.2)
                fishRequest:InvokeServer("Catch", 1)
            end
        end

    end
end)

local rs = game:GetService("ReplicatedStorage")
local craftRemote = rs.Modules.Net["RF/Craft"]

local Toggle = Tabs.Main:AddToggle("AutoBuyBait", {
    Title = "Auto Buy Basic Bait",
    Default = false
})

Toggle:OnChanged(function(state)
    _G.AutoBuyBasicBait = state
end)

task.spawn(function()
    while task.wait(0.2) do  -- delay configurável
        if _G.AutoBuyBasicBait then
            -- tentar craftar
            pcall(function()
                craftRemote:InvokeServer("Craft", "Basic Bait", {})
            end)

            -- checar status
            pcall(function()
                craftRemote:InvokeServer("Check", "Basic Bait")
            end)
        end
    end
end)


-- VAR GLOBAL DO ESP
_G.ESPPlayers = false

-- CRIA O TOGGLE NO MENU
local ESPToggle = Tabs.Main:AddToggle("ESPPlayersToggle", {
    Title = "ESP Players",
    Default = false
})

ESPToggle:OnChanged(function(v)
    _G.ESPPlayers = v

    -- Remove ESP quando desligar
    if not v then
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr.Character and plr.Character:FindFirstChild("Head") then
                local old = plr.Character.Head:FindFirstChild("ESPTag")
                if old then old:Destroy() end
            end
        end
    end
end)


-- =========================================================
-- SISTEMA ESP
-- =========================================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer


function CreateESP(player)
    if player == LocalPlayer then return end
    if not player.Character then return end
    if not player.Character:FindFirstChild("Head") then return end

    local head = player.Character.Head

    -- Impedir duplicação
    if head:FindFirstChild("ESPTag") then
        return head.ESPTag
    end

    -- Criar Billboard
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "ESPTag"
    billboard.Parent = head
    billboard.Adornee = head
    billboard.Size = UDim2.new(4, 0, 4, 0)
    billboard.AlwaysOnTop = true

    local frame = Instance.new("Frame", billboard)
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.BackgroundTransparency = 0.35
    frame.BorderSizePixel = 0

    -- Foto do player
    local image = Instance.new("ImageLabel", frame)
    image.Size = UDim2.new(1, 0, 0.6, 0)
    image.BackgroundTransparency = 1
    image.Image = Players:GetUserThumbnailAsync(
        player.UserId,
        Enum.ThumbnailType.HeadShot,
        Enum.ThumbnailSize.Size420x420
    )

    -- Nome
    local nameLabel = Instance.new("TextLabel", frame)
    nameLabel.Size = UDim2.new(1, 0, 0.2, 0)
    nameLabel.Position = UDim2.new(0, 0, 0.6, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.TextScaled = true
    nameLabel.Text = player.Name

    -- Distância
    local distLabel = Instance.new("TextLabel", frame)
    distLabel.Size = UDim2.new(1, 0, 0.2, 0)
    distLabel.Position = UDim2.new(0, 0, 0.8, 0)
    distLabel.BackgroundTransparency = 1
    distLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
    distLabel.TextScaled = true
    distLabel.Text = "0m"

    return billboard, distLabel
end


-- LOOP DE UPDATE
RunService.RenderStepped:Connect(function()
    if not _G.ESPPlayers then return end

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local char = player.Character
            if char and char:FindFirstChild("Head") then

                local espGui, dist = CreateESP(player)

                if espGui and dist then
                    local hrp = char:FindFirstChild("HumanoidRootPart")
                    local myhrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

                    if hrp and myhrp then
                        local distance = (hrp.Position - myhrp.Position).Magnitude
                        dist.Text = math.floor(distance) .. "m"
                    end
                end
            end
        end
    end
end)
