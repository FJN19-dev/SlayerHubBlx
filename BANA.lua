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

local TweenService = game:GetService("TweenService")

function topos(cf)
    pcall(function()
        local Char = game.Players.LocalPlayer.Character
        local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
        if not HRP then return end

        local distance = (HRP.Position - cf.Position).Magnitude
        local speed = math.clamp(distance / 300, 0.1, 1)

        local tweenInfo = TweenInfo.new(
            speed,
            Enum.EasingStyle.Linear,
            Enum.EasingDirection.Out
        )

        local tween = TweenService:Create(HRP, tweenInfo, {CFrame = cf})
        tween:Play()
        tween.Completed:Wait()
    end)
end



function AutoHaki()
    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
        local args = {
            [1] = "Buso"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end

function EquipWeapon(weapon)
    local char = game.Players.LocalPlayer.Character
    if not char then return end

    for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.Name == weapon then
            char.Humanoid:EquipTool(v)
        end
    end
end

local weaponList = {}

for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(weaponList, v.Name)
    end
end

local SelectWeapon = Tabs.Main:AddDropdown("SelectWeapon", {
    Title = "Selecionar Arma",
    Values = weaponList,
    Multi = false,
    Default = weaponList[1]
})

SelectWeapon:OnChanged(function(value)
    _G.SelectWeapon = value
end)

_G.AutoBartilo = false

Tabs.Quest:AddToggle("AutoBartilo", {
    Title = "Auto Bartilo Quest",
    Default = false
}):OnChanged(function(v)
    _G.AutoBartilo = v
end)

spawn(function()

    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local Rep = game:GetService("ReplicatedStorage")
    local Workspace = game:GetService("Workspace")
    local TweenService = game:GetService("TweenService")
    local VirtualUser = game:GetService("VirtualUser")

    local CurrentTween

    ------------------------------------------------
    -- FUNÇÕES BÁSICAS (NÃO QUEBRAM SE NÃO EXISTIR)
    ------------------------------------------------
    function EquipWeapon() end
    function AutoHaki() end

    ------------------------------------------------
    -- TWEEN SEM TRAVAR
    ------------------------------------------------
    local function TweenTo(cf)
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end

        if CurrentTween then
            CurrentTween:Cancel()
        end

        local dist = (hrp.Position - cf.Position).Magnitude
        local time = math.clamp(dist / 250, 0.15, 0.6)

        CurrentTween = TweenService:Create(
            hrp,
            TweenInfo.new(time, Enum.EasingStyle.Linear),
            {CFrame = cf}
        )
        CurrentTween:Play()
    end

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
    while task.wait(0.15) do
        if not _G.AutoBartilo then continue end

        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        local hum = char and char:FindFirstChild("Humanoid")
        if not hrp or not hum then continue end

        hum.Sit = false
        hum:ChangeState(Enum.HumanoidStateType.Running)

        if LocalPlayer.Data.Level.Value < 800 then continue end

        local progress = BartiloProgress()

        ------------------------------------------------
        -- PROGRESS 0 → SWAN PIRATES
        ------------------------------------------------
        if progress == 0 then
            local QuestGui = LocalPlayer.PlayerGui.Main.Quest

            if QuestGui.Visible and QuestGui.Container.QuestTitle.Title.Text:find("Swan Pirate") then
                for _,mob in pairs(Workspace.Enemies:GetChildren()) do
                    if mob.Name == "Swan Pirate [Lv. 775]"
                    and mob:FindFirstChild("HumanoidRootPart")
                    and mob.Humanoid.Health > 0 then

                        repeat task.wait(0.1)

                            local mobHRP = mob.HumanoidRootPart

                            -- ACIMA DO MOB
                            TweenTo(mobHRP.CFrame * CFrame.new(0,25,0))

                            -- PUXA OUTROS
                            for _,other in pairs(Workspace.Enemies:GetChildren()) do
                                if other.Name == mob.Name
                                and other ~= mob
                                and other:FindFirstChild("HumanoidRootPart")
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
            else
                TweenTo(CFrame.new(-456,73,300))
                task.wait(1)
                Rep.Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
            end

        ------------------------------------------------
        -- PROGRESS 1 → JEREMY (BOSS)
        ------------------------------------------------
        elseif progress == 1 then
            local boss = Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]")

            if boss and boss:FindFirstChild("HumanoidRootPart") then
                repeat task.wait(0.1)

                    TweenTo(boss.HumanoidRootPart.CFrame * CFrame.new(0,25,0))

                    boss.HumanoidRootPart.CanCollide = false
                    boss.HumanoidRootPart.Size = Vector3.new(60,60,60)
                    boss.HumanoidRootPart.Transparency = 1

                    VirtualUser:CaptureController()
                    VirtualUser:Button1Down(Vector2.new(500,500))

                until not _G.AutoBartilo or boss.Humanoid.Health <= 0
            else
                TweenTo(CFrame.new(2099,448,649))
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
                TweenTo(CFrame.new(pos))
                task.wait(1)
            end
        end
    end
end)
