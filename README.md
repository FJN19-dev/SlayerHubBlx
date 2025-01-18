if getgenv().hub then warn("Slayer Hub : Already executed!") return end
getgenv().hub = true

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local DeviceType = game:GetService("UserInputService").TouchEnabled and "Mobile" or "PC"
if DeviceType == "Mobile" then
    local ClickButton = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local ImageLabel = Instance.new("ImageLabel")
    local TextButton = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")
    local UICorner_2 = Instance.new("UICorner")

    ClickButton.Name = "ClickButton"
    ClickButton.Parent = game.CoreGui
    ClickButton.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ClickButton
    MainFrame.AnchorPoint = Vector2.new(1, 0)
    MainFrame.BackgroundTransparency = 0.8
    MainFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 38) 
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(1, -60, 0, 10)
    MainFrame.Size = UDim2.new(0, 45, 0, 45)

    UICorner.CornerRadius = UDim.new(1, 0)
    UICorner.Parent = MainFrame

    UICorner_2.CornerRadius = UDim.new(0, 10)
    UICorner_2.Parent = ImageLabel

    ImageLabel.Parent = MainFrame
    ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageLabel.BackgroundColor3 = Color3.new(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
    ImageLabel.Size = UDim2.new(0, 45, 0, 45)
    ImageLabel.Image = "rbxassetid://91062721750487" -- add image here

    TextButton.Parent = MainFrame
    TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
    TextButton.BackgroundTransparency = 1
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(0, 0, 0, 0)
    TextButton.Size = UDim2.new(0, 45, 0, 45)
    TextButton.AutoButtonColor = false
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = ""
    TextButton.TextColor3 = Color3.new(220, 125, 255)
    TextButton.TextSize = 20

    TextButton.MouseButton1Click:Connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "LeftControl", false, game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "LeftControl", false, game)
    end)
end

local Window = Fluent:CreateWindow({
    Title = "Slayer Hub",
    SubTitle = " (discord.gg/J37PW97j6a)", -- discord link
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Farme " }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

---test
local AttackList = {"Slow", "Normal", "Fast"}
local FastAttackSelected = "Normal"
local FastAttackDelay = 0.125
local FastAttack = false

-- Dropdown para selecionar a velocidade de ataque
local Dropdown = Tabs.Main:AddDropdown("Velocidade de Ataque", {
    Title = "Selecione a Velocidade de Ataque",
    Values = AttackList,
    Multi = false,  -- O usuÃ¡rio sÃ³ pode selecionar uma opÃ§Ã£o
    Default = 2,  -- PadrÃ£o Ã© "Normal"
    Callback = function(Value)
        FastAttackSelected = Value
        if FastAttackSelected == "Fast" then
            FastAttackDelay = 0.029
        elseif FastAttackSelected == "Normal Fast" then
            FastAttackDelay = 2
        elseif FastAttackSelected == "Super fast Atack" then
            FastAttackDelay = 0.0005
        end
    end
})

-- Toggle para ativar/desativar o Fast Attack
local Toggle = Tabs.Main:AddToggle("Fast Attack", {
    Title = "Fast Attack",
    Default = FastAttack,
    Callback = function(Value)
        FastAttack = Value
    end
})

-- FunÃ§Ã£o para atacar inimigos
local function attackEnemies(enemyTarget)
    local plr = game:GetService("Players").LocalPlayer
    local RegisterAttack = game:GetService("ReplicatedStorage").Modules.Net["RE/RegisterAttack"]
    local RegisterHit = game:GetService("ReplicatedStorage").Modules.Net["RE/RegisterHit"]
    local ShootGunEvent = game:GetService("ReplicatedStorage").Modules.Net["RE/ShootGunEvent"]
    local toolEquipped = plr.Character and plr.Character:FindFirstChildOfClass("Tool")

    if enemyTarget and toolEquipped and enemyTarget:IsA("BasePart") then
        local distance = (enemyTarget.Position - plr.Character.HumanoidRootPart.Position).Magnitude
        if distance < 55 then
            if toolEquipped.ToolTip == "Melee" or toolEquipped.ToolTip == "Sword" then
                RegisterAttack:FireServer(FastAttackDelay)
                RegisterHit:FireServer(enemyTarget, {})
            elseif toolEquipped.ToolTip == "Gun" then
                ShootGunEvent:FireServer(enemyTarget.Position, {[1] = enemyTarget})
            end
        end
    end
end

-- Loop para atacar inimigos
task.spawn(function()
    while task.wait(0.1) do
        if FastAttack then
            pcall(function()
                for _, Enemy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if Enemy:FindFirstChild("HumanoidRootPart") then
                        attackEnemies(Enemy.HumanoidRootPart)
                    end
                end
            end)
        end
    end
end)

-- Corrigido para usar a aba 'Main'
local Toggle = Tabs.Main:AddToggle("MyToggle", 
{
    Title = "Farm Narest", 
    Description = "Farmer npcs prÃ³ximos!",
    Default = false, -- esse "," Ã© necessÃ¡rio colocar em qualquer situaÃ§Ã£o 
    Callback = function(state)
        if state then
            print("Toggle On")
            _G.AutoNear = true  -- Ativa o voo e as aÃ§Ãµes
        else
            print("Toggle Off")
            _G.AutoNear = false  -- Desativa o voo e as aÃ§Ãµes
        end
    end 
})

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

-- FunÃ§Ã£o de ataque sem cooldown (autoclick)
function AttackNoCoolDown()
    -- Coloque aqui o cÃ³digo real de ataque, exemplo:
    -- game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RE/RegisterAttack"):FireServer(SelectWeapon)
    -- Se for um click simples, simule a aÃ§Ã£o de "click"
    game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RE/RegisterAttack"):FireServer(SelectWeapon)
end

-- FunÃ§Ã£o para ativar o Haki
function AutoHaki()
    -- CÃ³digo para ativar o Haki vai aqui, exemplo:
    -- game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RE/ActivateHaki"):FireServer()
end

-- FunÃ§Ã£o para equipar a arma ou fruta
function EquipTool(weapon)
    local character = Players.LocalPlayer.Character
    if character and weapon then
        local tool = character:FindFirstChild(weapon)
        if tool then
            tool.Parent = character
        end
    end
end

-- FunÃ§Ã£o de movimento (Tween)
function TweenMovement(targetCFrame)
    local character = Players.LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = character.HumanoidRootPart
        local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
        local goal = {CFrame = targetCFrame}
        local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)
        tween:Play()
    end
end

-- FunÃ§Ã£o para voar sobre os NPCs
function FlyAboveNPC(npc)
    local character = Players.LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        -- Definir uma altura para o voo acima do NPC (por exemplo, 40 unidades acima do NPC)
        local targetPosition = npc.HumanoidRootPart.Position + Vector3.new(0, 60, 0)
        -- Move o personagem para essa posiÃ§Ã£o (voando acima)
        TweenMovement(CFrame.new(targetPosition))
    end
end

-- VariÃ¡veis globais para controle
_G.AutoNear = false  -- Inicialmente desativado
_G.Fast_Delay = 0.0005 -- Ajuste de acordo com o tipo de ataque
SelectWeapon = "Melee"  -- Exemplo de arma, pode ser alterado conforme necessÃ¡rio

-- Definindo a velocidade do personagem para 300
local character = Players.LocalPlayer.Character
if character and character:FindFirstChild("Humanoid") then
    character.Humanoid.WalkSpeed = 300
end

-- Iniciando o loop para capturar e atacar mobs
spawn(function()
    while wait(0.1) do
        if _G.AutoNear then
            pcall(function()
                for _, v in pairs(Workspace.Enemies:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if (Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 5000 then
                            repeat
                                wait(_G.Fast_Delay)
                                AttackNoCoolDown()  -- Realiza o ataque continuamente (autoclick)
                                AutoHaki()           -- Ativa o Haki
                                EquipTool(SelectWeapon)  -- Equipa a arma ou fruta

                                -- Movimentando para a posiÃ§Ã£o do mob usando Tween
                                -- Voa sobre o NPC, ajustando a altura (40 unidades acima do NPC)
                                FlyAboveNPC(v)

                                -- Controlando o mob
                                v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name

                                -- Espera atÃ© que o mob morra ou o AutoNear seja desativado
                            until not _G.AutoNear or not v.Parent or v.Humanoid.Health <= 0 or not Workspace.Enemies:FindFirstChild(v.Name)
                        end
                    end
                end
            end)
        end
    end
end)

  -- Adicionando Toggle para Bring Mob
local ToggleBringMob = Tabs.Main:AddToggle("ToggleBringMob", {
    Title = "Enable Bring Mob / Magnet", 
    Description = "Toggles the bring mob feature", 
    Default = true 
})

ToggleBringMob:OnChanged(function(Value)
    _G.BringMob = Value  -- Armazena o estado do toggle
end)

-- FunÃ§Ã£o principal para controlar o movimento dos NPCs
spawn(function()
    while wait() do
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.BringMob then  -- Se o toggle estiver ativado
                    if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        -- Verifica se o NPC Ã© o "Factory Staff" ou o NPC especÃ­fico monitorado
                        if v.Name == "Factory Staff" then
                            -- Se a distÃ¢ncia entre o NPC e a posiÃ§Ã£o de farm for menor que 300, traz o NPC
                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 300 then
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                v.HumanoidRootPart.CFrame = FarmPos  -- Coloca o NPC na posiÃ§Ã£o de farm
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()  -- Remove o Animator se houver
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)  -- Ajusta o raio de simulaÃ§Ã£o
                            end
                        elseif v.Name == MonFarm then
                            -- Para outros NPCs monitorados, realiza a mesma aÃ§Ã£o
                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 300 then
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                v.HumanoidRootPart.CFrame = FarmPos  -- Coloca o NPC na posiÃ§Ã£o de farm
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()  -- Remove o Animator se houver
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)  -- Ajusta o raio de simulaÃ§Ã£o
                            end
                        end
                    end
                end
            end
        end)
    end
end)

-- Adicionando Toggle principal para o sistema
local Toggle = Tab:AddToggle("MyToggle", {
    Title = "Toggle", 
    Description = "Toggle description",
    Default = false,  -- Definido como desativado por padrÃ£o
    Callback = function(state)
        if state then
            print("Toggle On")  -- Mensagem quando o toggle Ã© ativado
        else
            print("Toggle Off")  -- Mensagem quando o toggle Ã© desativado
        end
    end 
})
           

            task.spawn(function()
                while task.wait() do
             if _G.BringMob and bringmob then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                if InMyNetWork(v.HumanoidRootPart) then
                v.HumanoidRootPart.CFrame = FarmPos
                v.Humanoid.JumpPower = 0
                v.Humanoid.WalkSpeed = 0
                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                v.HumanoidRootPart.CanCollide = false
                v.Head.CanCollide = false
                if v.Humanoid:FindFirstChild("Animator") then
                v.Humanoid.Animator:Destroy()
                end
                end
                end
                end
                end)
              end
              end
              end)
            
            task.spawn(function()
              while true do wait()
              if setscriptable then
              setscriptable(game.Players.LocalPlayer,"SimulationRadius",true)
              end
              if sethiddenproperty then
              sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
              end
              end
              end)
            
            function InMyNetWork(object)
            if isnetworkowner then
            return isnetworkowner(object)
            else
              if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
            return true
            end
            return false
            end
            end
     
local Tab = Window:AddTab({ Title = "🛒|Shop", Icon = "" })
--[[
    Title = String
    Icon = String
]]
Tab:AddButton({
   Title = "Darkstep V1",
   Description = "Comprar Darkstep",
   Callback = function()
       print("Clicked!")
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDarkstepV1")
   end
})
--[[
    Title = String
    Description = String
    Callback = function
]]

-- // // // Services // // // --
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local HttpService = game:GetService("HttpService")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local CoreGui = game:GetService('StarterGui')
local ContextActionService = game:GetService('ContextActionService')
local UserInputService = game:GetService('UserInputService')

-- // // // Locals // // // --
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
local UserPlayer = HumanoidRootPart:WaitForChild("user")
local ActiveFolder = Workspace:FindFirstChild("active")
local FishingZonesFolder = Workspace:FindFirstChild("zones"):WaitForChild("fishing")
local TpSpotsFolder = Workspace:FindFirstChild("world"):WaitForChild("spawns"):WaitForChild("TpSpots")
local NpcFolder = Workspace:FindFirstChild("world"):WaitForChild("npcs")
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui", PlayerGui)
local shadowCountLabel = Instance.new("TextLabel", screenGui)
local RenderStepped = RunService.RenderStepped
local WaitForSomeone = RenderStepped.Wait

