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


local Toggle = Tab:AddToggle("MyToggle", {Title = "Farme Level", Default = false })

Toggle:OnChanged(function(Value)
    print("Toggle changed:", Value)
    -- Auto Farm do nível 1 ao 400 - Blox Fruits
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local virtualUser = game:GetService("VirtualUser")
local runService = game:GetService("RunService")

-- Configurações
local quests = {
    {
        questName = "BanditQuest1",
        questNPC = "Bandit",
        questPosition = Vector3.new(1060, 16, 1545),
        npcName = "Bandit",
        requiredLevel = 1
    },
    {
        questName = "JungleQuest",
        questNPC = "Monkey",
        questPosition = Vector3.new(-1601, 36, 152),
        npcName = "Monkey",
        requiredLevel = 10
    },
    {
        questName = "JungleQuest",
        questNPC = "Gorilla",
        questPosition = Vector3.new(-1601, 36, 152),
        npcName = "Gorilla",
        requiredLevel = 15
    },
    {
        questName = "BuggyQuest1",
        questNPC = "Pirate",
        questPosition = Vector3.new(-1140, 4, 3826),
        npcName = "Pirate",
        requiredLevel = 30
    },
    {
        questName = "BuggyQuest1",
        questNPC = "Brute",
        questPosition = Vector3.new(-1140, 4, 3826),
        npcName = "Brute",
        requiredLevel = 40
    },
    {
        questName = "BuggyQuest2",
        questNPC = "Buggy",
        questPosition = Vector3.new(-1140, 4, 3826),
        npcName = "Buggy",
        requiredLevel = 55
    },
    {
        questName = "DesertQuest",
        questNPC = "Desert Bandit",
        questPosition = Vector3.new(896, 6, 4391),
        npcName = "Desert Bandit",
        requiredLevel = 60
    },
    {
        questName = "DesertQuest",
        questNPC = "Desert Officer",
        questPosition = Vector3.new(896, 6, 4391),
        npcName = "Desert Officer",
        requiredLevel = 75
    },
    {
        questName = "FrozenQuest",
        questNPC = "Snow Bandit",
        questPosition = Vector3.new(1196, 87, -1260),
        npcName = "Snow Bandit",
        requiredLevel = 90
    },
    {
        questName = "FrozenQuest",
        questNPC = "Snowman",
        questPosition = Vector3.new(1196, 87, -1260),
        npcName = "Snowman",
        requiredLevel = 100
    },
    {
        questName = "MarineQuest",
        questNPC = "Chief Petty Officer",
        questPosition = Vector3.new(-4966, 10, 4362),
        npcName = "Chief Petty Officer",
        requiredLevel = 120
    },
    {
        questName = "MarineQuest",
        questNPC = "Vice Admiral",
        questPosition = Vector3.new(-4966, 10, 4362),
        npcName = "Vice Admiral",
        requiredLevel = 130
    },
    {
        questName = "SkyQuest1",
        questNPC = "Sky Bandit",
        questPosition = Vector3.new(-4840, 717, -2621),
        npcName = "Sky Bandit",
        requiredLevel = 150
    },
    {
        questName = "SkyQuest2",
        questNPC = "Dark Master",
        questPosition = Vector3.new(-4972, 903, -2923),
        npcName = "Dark Master",
        requiredLevel = 190
    },
    {
        questName = "MagmaQuest1",
        questNPC = "Military Soldier",
        questPosition = Vector3.new(-5229, 12, 8464),
        npcName = "Military Soldier",
        requiredLevel = 250
    },
    {
        questName = "MagmaQuest2",
        questNPC = "Military Spy",
        questPosition = Vector3.new(-5229, 12, 8464),
        npcName = "Military Spy",
        requiredLevel = 300
    },
    {
        questName = "UnderwaterQuest1",
        questNPC = "Fishman Warrior",
        questPosition = Vector3.new(61163, 18, 1583),
        npcName = "Fishman Warrior",
        requiredLevel = 375
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
                humanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0) -- Fica acima do NPC
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
