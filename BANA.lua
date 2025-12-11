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

-- CONFIGURAÇÕES INICIAIS
_G.AutoFishing = false
_G.SelectedBait = "Basic Bait"
_G.SelectedRod = "Fishing Rod"

----------------------------------------------------
---------------- CRIAÇÃO DOS ELEMENTOS -------------
----------------------------------------------------

-- TOGGLE AUTO-FISHING
local Toggle = Tabs.Main:AddToggle("MyToggle", {
    Title = "Auto Fishing",
    Default = false
})

Toggle:OnChanged(function(state)
    _G.AutoFishing = state
end)

-- DROPDOWN BAITS
local DropdownBait = Tabs.Main:AddDropdown("BaitDropdown", {
    Title = "Select Fishing Lure",
    Values = {
        "Basic Bait", "Kelp Bait", "Good Bait",
        "Abyssal Bait", "Frozen Bait", "Epic Bait", "Carnivore Bait"
    },
    Multi = false,
    Default = "Basic Bait",
})

DropdownBait:OnChanged(function(value)
    _G.SelectedBait = value
    local fishFolder = game.ReplicatedStorage:WaitForChild("FishReplicated")
    local fishRequest = fishFolder:WaitForChild("FishingRequest")
    fishRequest:InvokeServer("SelectBait", value)
end)

-- DROPDOWN RODS
local DropdownRod = Tabs.Main:AddDropdown("RodDropdown", {
    Title = "Select Fishing Rod",
    Values = {
        "Fishing Rod", "Gold Rod", "Shark Rod",
        "Shell Rod", "Treasure Rod"
    },
    Multi = false,
    Default = "Fishing Rod",
})

DropdownRod:OnChanged(function(value)
    _G.SelectedRod = value
end)

----------------------------------------------------
------------------ SISTEMA AUTO-FISH ---------------
----------------------------------------------------

local plr = game.Players.LocalPlayer
local fishFolder = game.ReplicatedStorage:WaitForChild("FishReplicated")
local fishRequest = fishFolder:WaitForChild("FishingRequest")
local maxDistance = require(fishFolder.FishingClient.Config).Rod.MaxLaunchDistance
local getWaterHeight = require(game.ReplicatedStorage.Util.GetWaterHeightAtLocation)

task.spawn(function()
    while task.wait() do
        if _G.AutoFishing then

            local char = plr.Character
            if not char then continue end

            local hrp = char:FindFirstChild("HumanoidRootPart")
            local tool = char:FindFirstChildOfClass("Tool")

            ----------------------------------------------------
            -- EQUIPA A VARA SELECIONADA
            ----------------------------------------------------
            if _G.SelectedRod and (not tool or tool.Name ~= _G.SelectedRod) then
                local rod = plr.Backpack:FindFirstChild(_G.SelectedRod)
                if rod then
                    char.Humanoid:EquipTool(rod)
                    tool = rod
                end
            end

            if hrp and tool then
                ----------------------------------------------------
                -- TRAÇA A LINHA NO DIREÇÃO DO PERSONAGEM
                ----------------------------------------------------
                local waterY = getWaterHeight(hrp.Position)

                local _, castPos = workspace:FindPartOnRayWithIgnoreList(
                    Ray.new(char.Head.Position, hrp.CFrame.LookVector * maxDistance),
                    {char, workspace.Characters, workspace.Enemies}
                )

                if castPos then
                    castPos = Vector3.new(castPos.X, math.max(castPos.Y, waterY), castPos.Z)
                end

                ----------------------------------------------------
                -- ESTADOS DO ITEM (VARA)
                ----------------------------------------------------
                local state = tool:GetAttribute("State")
                local serverState = tool:GetAttribute("ServerState")

                ----------------------------------------------------
                -- LANÇA A LINHA
                ----------------------------------------------------
                if (state == "ReeledIn" or serverState == "ReeledIn") and castPos then
                    fishRequest:InvokeServer("StartCasting")
                    task.wait(0,3)
                    fishRequest:InvokeServer("CastLineAtLocation", castPos, 100, true)

                ----------------------------------------------------
                -- PEIXE MORDENDO -> PUXAR
                ----------------------------------------------------
                elseif serverState == "Biting" then
                    fishRequest:InvokeServer("Catching", true)
                    task.wait(0.1)
                    fishRequest:InvokeServer("Catch", 1)
                end
            end
        end
    end
end)
