local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Slayer Hub [Premium]" .. Fluent.Version,
    SubTitle = "by FJN,Wendel, Lorenzo",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})
--[[
   Title = String
   SubTitle = String
   TabWidth = Value
   Size = UDim2 Value
   Acrylic = Boolean
   Theme = String
   MinimizeKey = String
]]

local Tab = Window:AddTab({ Title = "🐲 Farme", Icon = "" })
--[[
    Title = String
    Icon = String
]]

local Toggle = Tab:AddToggle("MyToggle", {Title = "✊ Farme Lv", Default = false })

Toggle:OnChanged(function(Value)
    print("Toggle changed:", Value)
    -- Script de Auto Farm até a Ilha da Prisão
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local virtualUser = game:GetService("VirtualUser")
local runService = game:GetService("RunService")

-- Configurações
local farmDistance = 5 -- Distância para atacar o NPC
local quests = {
    {
        questName = "BanditQuest1",
        questNPC = "Bandit",
        questPosition = Vector3.new(1060, 16, 1530),
        npcName = "Bandit",
        requiredLevel = 0
    },
    {
        questName = "MonkeyQuest1",
        questNPC = "Monkey",
        questPosition = Vector3.new(-1299, 5, 450),
        npcName = "Monkey",
        requiredLevel = 10
    },
    {
        questName = "PirateQuest1",
        questNPC = "Pirate",
        questPosition = Vector3.new(-1121, 4, 3855),
        npcName = "Pirate",
        requiredLevel = 30
    },
    {
        questName = "DesertQuest1",
        questNPC = "Desert Bandit",
        questPosition = Vector3.new(897, 6, 4392),
        npcName = "Desert Bandit",
        requiredLevel = 60
    },
    {
        questName = "DesertQuest2",
        questNPC = "Desert Officer",
        questPosition = Vector3.new(1572, 5, 4375),
        npcName = "Desert Officer",
        requiredLevel = 90
    },
    {
        questName = "PrisonQuest1",
        questNPC = "Prisoner",
        questPosition = Vector3.new(4851, 5, 740),
        npcName = "Prisoner",
        requiredLevel = 120
    },
    {
        questName = "PrisonQuest2",
        questNPC = "Dangerous Prisoner",
        questPosition = Vector3.new(4851, 5, 740),
        npcName = "Dangerous Prisoner",
        requiredLevel = 150
        },
    {
        questName = "PrisonQuest1",
        questNPC = "Prisoner",
        questPosition = Vector3.new(4851, 5, 740),
        npcName = "Prisoner",
        requiredLevel = 120
    },
    {
        questName = "PrisonQuest2",
        questNPC = "Dangerous Prisoner",
        questPosition = Vector3.new(4851, 5, 740),
        npcName = "Dangerous Prisoner",
        requiredLevel = 150
    },
    {
        questName = "PrisonQuest3",
        questNPC = "Warden",
        questPosition = Vector3.new(4851, 5, 740),
        npcName = "Warden",
        requiredLevel = 200
    },
    {
        questName = "PrisonQuest3",
        questNPC = "Chief Warden",
        questPosition = Vector3.new(4851, 5, 740),
        npcName = "Chief Warden",
        requiredLevel = 220
    },
    {
        questName = "PrisonQuest3",
        questNPC = "Swan",
        questPosition = Vector3.new(4851, 5, 740),
        npcName = "Swan",
        requiredLevel = 250
    },
    {
        questName = "SkyQuest1",
        questNPC = "Sky Bandit",
        questPosition = Vector3.new(-4840, 717, -2621),
        npcName = "Sky Bandit",
        requiredLevel = 275
    },
    {
        questName = "SkyQuest2",
        questNPC = "Dark Master",
        questPosition = Vector3.new(-4972, 903, -2923),
        npcName = "Dark Master",
        requiredLevel = 300
    },
    {
        questName = "MagmaQuest1",
        questNPC = "Military Soldier",
        questPosition = Vector3.new(-5229, 12, 8464),
        npcName = "Military Soldier",
        requiredLevel = 375
    },
    {
        questName = "MagmaQuest2",
        questNPC = "Military Spy",
        questPosition = Vector3.new(-5229, 12, 8464),
        npcName = "Military Spy",
        requiredLevel = 400
    },
    {
        questName = "MagmaQuest3",
        questNPC = "Magma Admiral",
        questPosition = Vector3.new(-5229, 12, 8464),
        npcName = "Magma Admiral",
        requiredLevel = 450
    },
    {
        questName = "UnderwaterQuest1",
        questNPC = "Fishman Warrior",
        questPosition = Vector3.new(61163, 18, 1583),
        npcName = "Fishman Warrior",
        requiredLevel = 475
    },
    {
        questName = "UnderwaterQuest2",
        questNPC = "Fishman Commando",
        questPosition = Vector3.new(61163, 18, 1583),
        npcName = "Fishman Commando",
        requiredLevel = 500
    }
}

-- Função para pegar a missão
local function startQuest(quest)
    local npc = workspace.NPCs:FindFirstChild(quest.questNPC)
    if npc then
        humanoidRootPart.CFrame = CFrame.new(quest.questPosition)
        wait(1)
        fireclickdetector(npc:FindFirstChild("ClickDetector"))
        wait(0.5)
        fireclickdetector(npc:FindFirstChild("ClickDetector"))
    end
end

-- Função para farmar NPCs
local function farmNPCs(quest)
    for _, enemy in pairs(workspace.Enemies:GetChildren()) do
        if enemy.Name == quest.npcName and enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
            repeat
                humanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame * CFrame.new(0, 0, farmDistance)
                virtualUser:CaptureController()
                virtualUser:Button1Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(0.1)
            until enemy.Humanoid.Health <= 0 or not quest
        end
    end
end

-- Loop principal
while true do
    for _, quest in ipairs(quests) do
        if player.Data.Level.Value >= quest.requiredLevel then
            pcall(function()
                startQuest(quest)
                farmNPCs(quest)
            end)
        end
        wait(1)
    end
end
end)
--[[
    Title = String
    Default = Boolean
]]

local Tab = Window:AddTab({ Title = "⚓ Itens", Icon = "" })
--[[
    Title = String
    Icon = String
]]

local Tab = Window:AddTab({ Title = "🏝️ Mar", Icon = "" })
--[[
    Title = String
    Icon = String
]]

local Tab = Window:AddTab({ Title = "🗽 Teleporte", Icon = "🏙️" })
--[[
    Title = String
    Icon = String
]]

local Toggle = Tab:AddToggle("MyToggle", {Title= "🌉. Teleporte Sea 2", Default = false })

Toggle:OnChanged(function(Value)
    print("Toggle changed:", Value)
    -- Configuração do teleporte
local requiredLevel = 700 -- Nível mínimo para ir ao Sea 2
local sea2Position = CFrame.new(0, 10, 0) -- Substitua com as coordenadas exatas do Sea 2 no jogo

-- Verifica o nível do jogador e teleporta
local player = game.Players.LocalPlayer
local stats = player:FindFirstChild("Stats")
local humanoidRootPart = player.Character:WaitForChild("HumanoidRootPart")

if stats and stats:FindFirstChild("Level") then
    local playerLevel = stats.Level.Value
    if playerLevel >= requiredLevel then
        print("Teletransportando para o Sea 2...")
        humanoidRootPart.CFrame = sea2Position
    else
        warn("Você precisa ser pelo menos nível 700 para ir ao Sea 2!")
    end
else
    warn("Erro ao verificar o nível do jogador!")
end
end)
--[[
    Title = String
    Default = Boolean
]]


local Toggle = Tab:AddToggle("MyToggle", {Title = "🏙️ Teleporte Sea 3", Default = false })

Toggle:OnChanged(function(Value)
    print("Toggle changed:", Value)
    -- Script para Teleporte ao Sea 3
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Coordenadas do Sea 3
local sea3TeleportPosition = Vector3.new(3874, 15, -3491) -- Altere se necessário

-- Verificar nível do jogador
local requiredLevel = 1500
if player.Data.Level.Value >= requiredLevel then
    humanoidRootPart.CFrame = CFrame.new(sea3TeleportPosition)
    print("Você foi teleportado para o Sea 3!")
else
    print("Você precisa ser nível 1500 para ir ao Sea 3.")
end
end)
--[[
    Title = String
    Default = Boolean
]]
local Tab = Window:AddTab({ Title = "🍎 Fruta", Icon = "" })
--[[
    Title = String
    Icon = String
]]
local Tab = Window:AddTab({ Title = "🛒Shop", Icon = "" })
--[[
    Title = String
    Icon = String
]]
