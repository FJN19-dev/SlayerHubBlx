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

local Toggle = Tab:AddToggle("MyToggle", {Title = "Farm level", Default = false })

Toggle:OnChanged(function()
    print("Toggle changed:", Options.MyToggle.Value)
    -- Auto Farm do nível 1 ao 400 com missões e ataques
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local runService = game:GetService("RunService")
local replicatedStorage = game:GetService("ReplicatedStorage")

-- Configurações
local quests = {
    {
        questName = "BanditQuest1",
        questNPC = "Quest Giver",
        questPosition = Vector3.new(1060, 16, 1545),
        npcName = "Bandit",
        requiredLevel = 1
    },
    {
        questName = "JungleQuest",
        questNPC = "Adventurer",
        questPosition = Vector3.new(-1601, 36, 152),
        npcName = "Monkey",
        requiredLevel = 10
    },
    {
        questName = "JungleQuest",
        questNPC = "Adventurer",
        questPosition = Vector3.new(-1601, 36, 152),
        npcName = "Gorilla",
        requiredLevel = 15
    },
    {
        questName = "BuggyQuest1",
        questNPC = "Rich Man",
        questPosition = Vector3.new(-1140, 4, 3826),
        npcName = "Pirate",
        requiredLevel = 30
    }
}

-- Função para pegar a missão
local function startQuest(quest)
    humanoidRootPart.CFrame = CFrame.new(quest.questPosition) -- Vai até o NPC
    wait(1)

    for _, npc in pairs(workspace.NPCs:GetChildren()) do
        if npc.Name == quest.questNPC then
            local proximityPrompt = npc:FindFirstChildOfClass("ProximityPrompt")
            if proximityPrompt then
                fireproximityprompt(proximityPrompt) -- Ativa o prompt de interação
                wait(0.5)
                print("Missão aceita:", quest.questName)
                return true
            end
        end
    end

    print("Falha ao pegar a missão:", quest.questName)
    return false
end

-- Função para farmar NPCs
local function farmNPCs(quest)
    for _, enemy in pairs(workspace.Enemies:GetChildren()) do
        if enemy.Name == quest.npcName and enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
            repeat
                humanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0) -- Fica acima do NPC
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
                if startQuest(quest) then
                    farmNPCs(quest)
                end
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
