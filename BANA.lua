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
