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
    Fish = Window:AddTab({ Title = "Pesca", Icon = "carrot" }),
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

-- Novo Toggle
local ToggleBartilo = Tab:AddToggle("AutoBartilo", {
    Title = "Auto Quest Sea Bartilo",
    Default = false
})

ToggleBartilo:OnChanged(function(Value)
    _G.AutoBartilo = Value
end)


---------------------------------------------------------------------
--  LOOP AUTO BARTILO
---------------------------------------------------------------------

spawn(function()
    pcall(function()
        while true do
            if not wait(0.1) then return end

            if _G.AutoBartilo then

                local player = game:GetService("Players").LocalPlayer
                local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

                local Level = player.Data.Level.Value
                local QuestProgress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")

                -- ===========================================================
                --   PARTE 1 – Caminho inicial da quest (Progress = 2)
                -- ===========================================================

                if Level >= 800 and QuestProgress == 2 then

                    local Path = {
                        CFrame.new(-1850.49329, 13.1789551, 1750.89685),
                        CFrame.new(-1858.87305, 19.3777466, 1712.01807),
                        CFrame.new(-1803.94324, 16.5789185, 1750.89685),
                        CFrame.new(-1858.55835, 16.8604317, 1724.79541),
                        CFrame.new(-1869.54224, 15.987854, 1681.00659),
                        CFrame.new(-1800.0979, 16.4978027, 1684.52368),
                        CFrame.new(-1819.26343, 14.795166, 1717.90625)
                    }

                    for _, cf in ipairs(Path) do
                        repeat
                            topos(cf)
                            wait()
                        until not _G.AutoBartilo or (hrp.Position - cf.Position).Magnitude <= 10
                        wait(1)
                    end

                    topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541))

                    continue
                end

                -- ===========================================================
                --   PARTE 2 – Jeremy
                -- ===========================================================

                if Level < 800 or QuestProgress ~= 1 then
                    if workspace.Enemies:FindFirstChild("Jeremy") then
                        for _, mob in ipairs(workspace.Enemies:GetChildren()) do
                            if mob.Name == "Jeremy" and mob:FindFirstChild("HumanoidRootPart") then
                                local originalCF = mob.HumanoidRootPart.CFrame

                                repeat
                                    task.wait()
                                    sethiddenproperty(player, "SimulationRadius", math.huge)

                                    mob.HumanoidRootPart.Transparency = 1
                                    mob.HumanoidRootPart.CanCollide = false
                                    mob.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    mob.HumanoidRootPart.CFrame = originalCF

                                    topos(originalCF * CFrame.new(0, 30, 0))

                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                until not mob.Parent or mob.Humanoid.Health <= 0 or not _G.AutoBartilo
                            end
                        end

                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then

                        repeat
                            topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                            wait()
                        until not _G.AutoBartilo or (hrp.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10

                        wait(1.1)
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")
                        wait(1)

                        repeat
                            topos(CFrame.new(2099.88159, 448.931, 648.997375))
                            wait()
                        until not _G.AutoBartilo or (hrp.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10

                        wait(2)

                    else
                        repeat
                            topos(CFrame.new(2099.88159, 448.931, 648.997375))
                            wait()
                        until not _G.AutoBartilo or (hrp.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                    end

                -- ===========================================================
                --   PARTE 3 – Swan Pirates
                -- ===========================================================

                elseif player.PlayerGui.Main.Quest.Visible
                and string.find(player.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates")
                and string.find(player.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") then

                    if workspace.Enemies:FindFirstChild("Swan Pirate") then
                        for _, mob in ipairs(workspace.Enemies:GetChildren()) do
                            if mob.Name == "Swan Pirate" and mob:FindFirstChild("HumanoidRootPart") then
                                pcall(function()
                                    StartBring = true
                                    repeat
                                        task.wait()
                                        sethiddenproperty(player, "SimulationRadius", math.huge)
                                        mob.HumanoidRootPart.Transparency = 1
                                        mob.HumanoidRootPart.CanCollide = false
                                        mob.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        topos(mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))

                                    until not mob.Parent or mob.Humanoid.Health <= 0 or not _G.AutoBartilo
                                    StartBring = false
                                end)
                            end
                        end
                    else
                        repeat
                            topos(CFrame.new(932.624451, 156.106079, 1180.27466))
                            wait()
                        until not _G.AutoBartilo or (hrp.Position - Vector3.new(932.624451, 156.106079, 1180.27466)).Magnitude <= 10
                    end

                -- ===========================================================
                --   PARTE 4 – Pegar Quest Bartilo
                -- ===========================================================
                else
                    repeat
                        topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                        wait()
                    until not _G.AutoBartilo or (hrp.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10

                    wait(1.1)
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
                end
            end
        end
    end)
end)
