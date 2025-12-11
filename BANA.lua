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

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LP = Players.LocalPlayer

-- Toggle
local Toggle = Tabs.Main:AddToggle("ESPPlayersToggle", {
    Title = "ESP Players",
    Default = false
})

Toggle:OnChanged(function(v)
    _G.ESPPlayers = v

    -- remove esp ao desligar
    if not v then
        for _, plr in pairs(Players:GetPlayers()) do
            if plr.Character then
                local root = plr.Character:FindFirstChild("HumanoidRootPart")
                if root then
                    local esp = root:FindFirstChild("BFESP")
                    if esp then esp:Destroy() end
                end
            end
        end
    end
end)

-- cria esp
local function CreateBFESP(player)
    if player == LP then return end
    if not player.Character then return end

    local root = player.Character:FindFirstChild("HumanoidRootPart")
    if not root then return end

    if root:FindFirstChild("BFESP") then return root.BFESP end

    local gui = Instance.new("BillboardGui")
    gui.Name = "BFESP"
    gui.Parent = root
    gui.Adornee = root
    gui.Size = UDim2.new(12, 0, 4, 0)   -- MUITO MAIOR
    gui.StudsOffset = Vector3.new(0, 5, 0)
    gui.AlwaysOnTop = true
    gui.MaxDistance = 15000   -- ESP aparece MUITO LONGE

    -- FOTO
    local img = Instance.new("ImageLabel")
    img.Name = "IMG"
    img.Size = UDim2.new(0.35, 0, 1, 0) -- imagem muito grande
    img.Position = UDim2.new(0, 0, 0, 0)
    img.BackgroundTransparency = 1
    img.Parent = gui

    local ok, thumb = pcall(function()
        return Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
    end)
    if ok then img.Image = thumb end

    -- TEXTO
    local txt = Instance.new("TextLabel")
    txt.Name = "TXT"
    txt.Size = UDim2.new(0.65, 0, 1, 0)
    txt.Position = UDim2.new(0.35, 0, 0, 0)
    txt.BackgroundTransparency = 1
    txt.TextScaled = true
    txt.Font = Enum.Font.GothamBold
    txt.TextXAlignment = Enum.TextXAlignment.Left
    txt.TextStrokeTransparency = 0.3
    txt.Parent = gui
    txt.Text = player.Name .. " | 0m"
    txt.TextColor3 = Color3.fromRGB(150, 0, 200)

    return gui, txt
end

-- loop de atualização
RunService.RenderStepped:Connect(function()
    if not _G.ESPPlayers then return end

    local char = LP.Character
    local myRoot = char and char:FindFirstChild("HumanoidRootPart")
    if not myRoot then return end

    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LP and plr.Character then
            local root = plr.Character:FindFirstChild("HumanoidRootPart")
            if root then
                local gui, txt = CreateBFESP(plr)
                if gui and txt then
                    local dist = math.floor((root.Position - myRoot.Position).Magnitude)
                    txt.Text = plr.Name .. " | " .. dist .. "m"

                    if dist >= 5000 then
                        txt.TextColor3 = Color3.fromRGB(255, 0, 0)
                    else
                        txt.TextColor3 = Color3.fromRGB(160, 0, 255)
                    end
                end
            end
        end
    end
end)
