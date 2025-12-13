_G.AutoBartilo = false

Tabs.Quest:AddToggle("AutoBartilo", {
    Title = "Auto Bartilo Quest",
    Default = false
}):OnChanged(function(v)
    _G.AutoBartilo = v
end)

spawn(function()

    local Players = game:GetService("Players")
    local Rep = game:GetService("ReplicatedStorage")
    local Workspace = game:GetService("Workspace")
    local VirtualUser = game:GetService("VirtualUser")

    local LocalPlayer = Players.LocalPlayer

    ------------------------------------------------
    -- FUNÇÕES SEGURAS
    ------------------------------------------------
    function EquipWeapon() end
    function AutoHaki() end

    ------------------------------------------------
    -- MOVE CFRAME (FUNCIONA NO BF)
    ------------------------------------------------
    local function MoveTo(cf)
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        hrp.CFrame = cf
    end

    ------------------------------------------------
    -- ANTI DESPAWN / ANTI SERVER LIMIT
    ------------------------------------------------
    spawn(function()
        while task.wait() do
            if _G.AutoBartilo then
                pcall(function()
                    sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
                    sethiddenproperty(LocalPlayer, "MaxSimulationRadius", math.huge)
                end)
            end
        end
    end)

    ------------------------------------------------
    -- PROGRESSO DO BARTILO
    ------------------------------------------------
    local function BartiloProgress()
        local ok, res = pcall(function()
            return Rep.Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
        end)
        return ok and res or 0
    end

    ------------------------------------------------
    -- LOOP PRINCIPAL
    ------------------------------------------------
    while task.wait(0.1) do
        if not _G.AutoBartilo then continue end

        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        local hum = char and char:FindFirstChild("Humanoid")
        if not hrp or not hum then continue end

        hum.Sit = false

        local progress = BartiloProgress()

        ------------------------------------------------
        -- PROGRESS 0 → SWAN PIRATES
        ------------------------------------------------
        if progress == 0 then
            local QuestGui = LocalPlayer.PlayerGui.Main.Quest
            local FoundMob = false

            if QuestGui.Visible and QuestGui.Container.QuestTitle.Title.Text:find("Swan") then
                for _,mob in pairs(Workspace.Enemies:GetChildren()) do
                    if mob.Name:find("Swan Pirate")
                    and mob:FindFirstChild("Humanoid")
                    and mob:FindFirstChild("HumanoidRootPart")
                    and mob.Humanoid.Health > 0 then

                        FoundMob = true

                        repeat task.wait()

                            EquipWeapon()
                            AutoHaki()

                            local mobHRP = mob.HumanoidRootPart

                            -- FICA ACIMA DO MOB
                            MoveTo(mobHRP.CFrame * CFrame.new(0,25,0))

                            -- 🔥 BRING 🔥
                            for _,other in pairs(Workspace.Enemies:GetChildren()) do
                                if other.Name:find("Swan Pirate")
                                and other ~= mob
                                and other:FindFirstChild("HumanoidRootPart")
                                and other:FindFirstChild("Humanoid")
                                and other.Humanoid.Health > 0 then
                                    pcall(function()
                                        other.HumanoidRootPart.CFrame = mobHRP.CFrame
                                    end)
                                end
                            end

                            mobHRP.CanCollide = false
                            mobHRP.Size = Vector3.new(60,60,60)
                            mobHRP.Transparency = 1

                            VirtualUser:CaptureController()
                            VirtualUser:Button1Down(Vector2.new(500,500))

                        until not _G.AutoBartilo
                        or mob.Humanoid.Health <= 0
                        or not QuestGui.Visible
                    end
                end

                -- NÃO ACHOU MOB → VAI PRA ÁREA
                if not FoundMob then
                    MoveTo(CFrame.new(1068.6643, 137.6143, 1322.1061))
                end
            else
                -- PEGA QUEST
                MoveTo(CFrame.new(-456,73,300))
                task.wait(1)
                Rep.Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
            end

        ------------------------------------------------
        -- PROGRESS 1 → JEREMY (BOSS)
        ------------------------------------------------
        elseif progress == 1 then
            local boss = Workspace.Enemies:FindFirstChild("Jeremy")

            if boss and boss:FindFirstChild("HumanoidRootPart") then
                repeat task.wait()

                    MoveTo(boss.HumanoidRootPart.CFrame * CFrame.new(0,25,0))

                    boss.HumanoidRootPart.CanCollide = false
                    boss.HumanoidRootPart.Size = Vector3.new(60,60,60)
                    boss.HumanoidRootPart.Transparency = 1

                    VirtualUser:CaptureController()
                    VirtualUser:Button1Down(Vector2.new(500,500))

                until not _G.AutoBartilo or boss.Humanoid.Health <= 0
            else
                MoveTo(CFrame.new(2099,448,649))
            end

        ------------------------------------------------
        -- PROGRESS 2 → LABIRINTO
        ------------------------------------------------
        elseif progress == 2 then
            local steps = {
                Vector3.new(-1850,13,1750),
                Vector3.new(-1858,19,1712),
                Vector3.new(-1803,16,1750),
                Vector3.new(-1858,16,1724),
                Vector3.new(-1869,15,1681),
                Vector3.new(-1800,16,1684),
                Vector3.new(-1819,14,1717),
                Vector3.new(-1813,14,1724)
            }

            for _,pos in ipairs(steps) do
                MoveTo(CFrame.new(pos))
                task.wait(1)
            end
        end
    end
end)
