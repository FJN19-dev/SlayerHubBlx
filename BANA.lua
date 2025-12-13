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
    Title = "Auto Bartilo Quest (Safe)",
    Default = false
}):OnChanged(function(v)
    _G.AutoBartilo = v
end)

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Rep = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")
local LocalPlayer = Players.LocalPlayer

local LastBring = 0
local LastAttack = 0

-- SAFE MOVE (LERP)
local function SafeMove(cf)
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    hrp.CFrame = hrp.CFrame:Lerp(cf, 0.15)
end

-- FUNÇÕES BÁSICAS
function AutoHaki()
    if not LocalPlayer.Character:FindFirstChild("HasBuso") then
        pcall(function()
            Rep.Remotes.CommF_:InvokeServer("Buso")
        end)
    end
end

function EquipWeapon(weapon)
    local char = LocalPlayer.Character
    if not char then return end
    for _,v in pairs(LocalPlayer.Backpack:GetChildren()) do
        if v.Name == weapon then
            char.Humanoid:EquipTool(v)
        end
    end
end

-- SET SIMULATION (1x)
pcall(function()
    sethiddenproperty(LocalPlayer, "SimulationRadius", 1000)
    sethiddenproperty(LocalPlayer, "MaxSimulationRadius", 1000)
end)

-- PROGRESSO DO BARTILO
local function BartiloProgress()
    local ok, res = pcall(function()
        return Rep.Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
    end)
    return ok and res or 0
end

-- LOOP PRINCIPAL
spawn(function()
    RunService.Heartbeat:Connect(function()
        if not _G.AutoBartilo then return end

        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        local hum = char and char:FindFirstChild("Humanoid")
        if not hrp or not hum then return end

        hum.Sit = false
        AutoHaki()
        EquipWeapon(_G.SelectWeapon)

        local progress = BartiloProgress()

        ----------------------------------------
        -- SWAN PIRATES (PROGRESS 0)
        ----------------------------------------
        if progress == 0 then
            local QuestGui = LocalPlayer.PlayerGui.Main.Quest
            local TargetMob

            if QuestGui.Visible and QuestGui.Container.QuestTitle.Title.Text:find("Swan") then
                for _,mob in pairs(Workspace.Enemies:GetChildren()) do
                    if mob.Name:find("Swan Pirate")
                    and mob:FindFirstChild("HumanoidRootPart")
                    and mob.Humanoid.Health > 0 then
                        TargetMob = mob
                        break
                    end
                end

                if TargetMob then
                    local mobHRP = TargetMob.HumanoidRootPart
                    local mobHum = TargetMob.Humanoid

                    repeat task.wait(0.1)
                        -- MOVE ACIMA DO MOB
                        SafeMove(mobHRP.CFrame * CFrame.new(0,20,0))

                        -- BRING
                        if tick() - LastBring > 1 then
                            LastBring = tick()
                            for _,other in pairs(Workspace.Enemies:GetChildren()) do
                                if other ~= TargetMob
                                and other.Name:find("Swan Pirate")
                                and other:FindFirstChild("HumanoidRootPart")
                                and other.Humanoid.Health > 0 then
                                    pcall(function()
                                        other.HumanoidRootPart.CFrame = mobHRP.CFrame
                                    end)
                                end
                            end
                        end

                        -- ATAQUE
                        if tick() - LastAttack > 0.25 then
                            LastAttack = tick()
                            VirtualUser:CaptureController()
                            VirtualUser:Button1Down(Vector2.new(500,500))
                        end

                    until not _G.AutoBartilo or mobHum.Health <= 0 or not mobHRP.Parent
                else
                    SafeMove(CFrame.new(1068.6643, 137.6143, 1322.1061))
                end
            else
                SafeMove(CFrame.new(-456,73,300))
                Rep.Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
            end

        ----------------------------------------
        -- JEREMY [Lv.850][Boss] (PROGRESS 1)
        ----------------------------------------
        elseif progress == 1 then
            local boss = Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]")
            if boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") then
                local mobHRP = boss.HumanoidRootPart
                local mobHum = boss.Humanoid

                repeat
                    task.wait(0.1)
                    -- MOVE ACIMA
                    SafeMove(mobHRP.CFrame * CFrame.new(0,25,0))

                    -- BRING (se houver outro boss raro do mesmo nome)
                    if tick() - LastBring > 1 then
                        LastBring = tick()
                        for _,other in pairs(Workspace.Enemies:GetChildren()) do
                            if other ~= boss
                            and other.Name == "Jeremy [Lv. 850] [Boss]"
                            and other:FindFirstChild("HumanoidRootPart")
                            and other.Humanoid.Health > 0 then
                                pcall(function()
                                    other.HumanoidRootPart.CFrame = mobHRP.CFrame
                                end)
                            end
                        end
                    end

                    -- ATAQUE
                    if tick() - LastAttack > 0.25 then
                        LastAttack = tick()
                        VirtualUser:CaptureController()
                        VirtualUser:Button1Down(Vector2.new(500,500))
                    end

                until not _G.AutoBartilo or mobHum.Health <= 0 or not mobHRP.Parent
            else
                SafeMove(CFrame.new(2099,448,649))
            end

        ----------------------------------------
        -- LABIRINTO (PROGRESS 2)
        ----------------------------------------
        elseif progress == 2 then
            SafeMove(CFrame.new(-1850,13,1750))
        end
    end)
end)
