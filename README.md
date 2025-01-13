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
    -- Auto Farm do nível 1 ao 400 com missão e ataque
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local virtualUser = game:GetService("VirtualUser")
local runService = game:GetService("RunService")

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
    -- Adicione mais missões conforme necessário
}

-- Função para pegar a missão
local function startQuest(quest)
    humanoidRootPart.CFrame = CFrame.new(quest.questPosition)
    wait(1)
    for _, npc in pairs(workspace.NPCs:GetChildren()) do
        if npc.Name == quest.questNPC then
            local clickDetector = npc:FindFirstChild("ClickDetector")
            if clickDetector then
                fireclickdetector(clickDetector)
                wait(0.5)
                fireclickdetector(clickDetector) -- Confirmação da missão
                print("Missão aceita:", quest.questName)
            end
        end
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
