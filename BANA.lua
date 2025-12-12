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

function topos(Pos)
    pcall(function()
        local Char = game.Players.LocalPlayer.Character
        if Char and Char:FindFirstChild("HumanoidRootPart") then
            Char.HumanoidRootPart.CFrame = Char.HumanoidRootPart.CFrame:Lerp(Pos, 0.15)
        end
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

local ToggleBartilo = Tabs.Quest:AddToggle("AutoBartilo", {
    Title = "Auto Quest Bartilo",
    Default = false
})

ToggleBartilo:OnChanged(function(Value)
    _G.AutoBartilo = Value
end)

spawn(function()

    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local Rep = game:GetService("ReplicatedStorage")
    local VirtualUser = game:GetService("VirtualUser")
    local Workspace = game:GetService("Workspace")

    function GoTo(Pos)
        if typeof(Pos) == "Vector3" then Pos = CFrame.new(Pos) end
        repeat task.wait()
            if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
            topos(Pos)
        until (LocalPlayer.Character.HumanoidRootPart.Position - Pos.Position).Magnitude <= 10 or not _G.AutoBartilo
    end

    function Progress()
        local ok, result = pcall(function()
            return Rep.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")
        end)
        return ok and result or 0
    end

    while task.wait(0.1) do
        if _G.AutoBartilo then

            local Character = LocalPlayer.Character
            if not Character then continue end
            local HRP = Character:FindFirstChild("HumanoidRootPart")
            if not HRP then continue end

            local Level = LocalPlayer.Data.Level.Value
            if Level < 800 then continue end

            local progress = Progress()

            -----------------------------------------------------------
            -- PROGRESSO 0 → Matar Swan Pirates
            -----------------------------------------------------------
            if progress == 0 then

                local QuestGui = LocalPlayer.PlayerGui.Main.Quest
                local Title = QuestGui.Container.QuestTitle.Title.Text

                if QuestGui.Visible and string.find(Title, "Swan Pirates") then

                    local Enemies = Workspace.Enemies
                    local Mob = Enemies:FindFirstChild("Swan Pirate [Lv. 775]")

                    if Mob then
                        for _,v in pairs(Enemies:GetChildren()) do
                            if v.Name == "Swan Pirate [Lv. 775]" and v:FindFirstChild("HumanoidRootPart") then

                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()

                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)

                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,5))

                                    VirtualUser:CaptureController()
                                    VirtualUser:Button1Down(Vector2.new(500,500))

                                until not _G.AutoBartilo or v.Humanoid.Health <= 0 or not QuestGui.Visible

                            end
                        end
                    else
                        GoTo(Vector3.new(932, 156, 1180))
                    end

                else
                    GoTo(Vector3.new(-456,73,300))
                    task.wait(1)
                    Rep.Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
                end

            -----------------------------------------------------------
            -- PROGRESSO 1 → Matar Jeremy (Boss)
            -----------------------------------------------------------
            elseif progress == 1 then

                local Enemies = Workspace.Enemies
                local Boss = Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]")

                if Boss then
                    repeat task.wait()

                        EquipWeapon(_G.SelectWeapon)
                        AutoHaki()

                        Boss.HumanoidRootPart.CanCollide = false
                        Boss.HumanoidRootPart.Transparency = 1
                        Boss.HumanoidRootPart.Size = Vector3.new(60,60,60)

                        topos(Boss.HumanoidRootPart.CFrame * CFrame.new(5,10,5))

                        VirtualUser:CaptureController()
                        VirtualUser:Button1Down(Vector2.new(500,500))

                    until not _G.AutoBartilo or Boss.Humanoid.Health <= 0
                else
                    GoTo(Vector3.new(-456,73,300))
                    Rep.Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                    task.wait(1)
                    GoTo(Vector3.new(2099,448,649))
                    task.wait(1)
                end

            -----------------------------------------------------------
            -- PROGRESSO 2 → Labirinto dos botões
            -----------------------------------------------------------
            elseif progress == 2 then

                local Steps = {
                    Vector3.new(-1850,13,1750),
                    Vector3.new(-1858,19,1712),
                    Vector3.new(-1803,16,1750),
                    Vector3.new(-1858,16,1724),
                    Vector3.new(-1869,15,1681),
                    Vector3.new(-1800,16,1684),
                    Vector3.new(-1819,14,1717),
                    Vector3.new(-1813,14,1724)
                }

                for _,step in ipairs(Steps) do
                    GoTo(step)
                    task.wait(1)
                end

            end

        end
    end
end)
