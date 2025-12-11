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


_G.ESPPlayers = false

local ToggleESP = Tabs.Main:AddToggle("ESPPlayersToggle", {
    Title = "ESP Players",
    Default = false
})

ToggleESP:OnChanged(function(v)
    _G.ESPPlayers = v

    if not v then
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                local old = plr.Character.HumanoidRootPart:FindFirstChild("BFESP")
                if old then old:Destroy() end
            end
        end
    end
end)

---------------------------------------------------------
------------------- ESP SYSTEM BF ------------------------
---------------------------------------------------------

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LP = Players.LocalPlayer

function CreateBFESP(player)
    if player == LP then return end
    if not player.Character then return end

    local root = player.Character:FindFirstChild("HumanoidRootPart")
    if not root then return end

    if root:FindFirstChild("BFESP") then
        return root.BFESP
    end

    local esp = Instance.new("BillboardGui")
    esp.Name = "BFESP"
    esp.Parent = root
    esp.Adornee = root
    esp.Size = UDim2.new(8, 0, 8, 0) -- Aumentado (bem grande)
    esp.AlwaysOnTop = true

    local bg = Instance.new("Frame", esp)
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.BackgroundTransparency = 0.35
    bg.BackgroundColor3 = Color3.fromRGB(80, 0, 120) -- Roxo padrão
    bg.BorderSizePixel = 3
    bg.BorderColor3 = Color3.fromRGB(255,255,255) -- Borda branca

    local img = Instance.new("ImageLabel", bg)
    img.Position = UDim2.new(0.1, 0, 0.05, 0)
    img.Size = UDim2.new(0.8, 0, 0.55, 0)
    img.BackgroundTransparency = 1
    img.Image = Players:GetUserThumbnailAsync(player.UserId,
        Enum.ThumbnailType.HeadShot,
        Enum.ThumbnailSize.Size420x420
    )

    local name = Instance.new("TextLabel", bg)
    name.Position = UDim2.new(0, 0, 0.62, 0)
    name.Size = UDim2.new(1, 0, 0.18, 0)
    name.BackgroundTransparency = 1
    name.TextColor3 = Color3.fromRGB(255, 255, 255)
    name.TextStrokeTransparency = 0
    name.TextStrokeColor3 = Color3.fromRGB(0,0,0)
    name.TextScaled = true
    name.Font = Enum.Font.GothamBold
    name.Text = player.Name

    local dist = Instance.new("TextLabel", bg)
    dist.Position = UDim2.new(0, 0, 0.82, 0)
    dist.Size = UDim2.new(1, 0, 0.18, 0)
    dist.BackgroundTransparency = 1
    dist.TextColor3 = Color3.fromRGB(255, 255, 255)
    dist.TextStrokeTransparency = 0
    dist.TextStrokeColor3 = Color3.fromRGB(0,0,0)
    dist.TextScaled = true
    dist.Font = Enum.Font.GothamBlack
    dist.Text = "0m"

    return esp, dist, bg
end

RunService.RenderStepped:Connect(function()
    if not _G.ESPPlayers then return end

    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LP and plr.Character then
            local root = plr.Character:FindFirstChild("HumanoidRootPart")
            if root then
                local esp, distLabel, bg = CreateBFESP(plr)

                if esp and distLabel then
                    local myRoot = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
                    if myRoot then
                        local distance = (root.Position - myRoot.Position).Magnitude
                        distLabel.Text = math.floor(distance) .. "m"

                        -- COR DINÂMICA
                        if distance >= 5000 then
                            bg.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Vermelho
                        else
                            bg.BackgroundColor3 = Color3.fromRGB(80, 0, 120) -- Roxo
                        end
                    end
                end
            end
        end
    end
end)
