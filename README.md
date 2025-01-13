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
    print("Toggle changed:", Options.MyToggle.Valu
    -- Script de Auto Farm do Nível 1 até a Ilha da Prisão
repeat wait() until game:IsLoaded()

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local runService = game:GetService("RunService")

-- Configurações
local autoFarmEnabled = true
local farmDistance = 10 -- Distância acima do NPC
local farmHeight = 10 -- Altura para ficar acima do NPC

-- Dados de Missões e NPCs
local farmData = {
    {minLevel = 1, maxLevel = 10, npc = "Bandit", mission = "Bandit Quest"},
    {minLevel = 10, maxLevel = 30, npc = "Pirate", mission = "Pirate Quest"},
    {minLevel = 30, maxLevel = 60, npc = "Monkey", mission = "Monkey Quest"},
    {minLevel = 60, maxLevel = 75, npc = "Desert Bandit", mission = "Desert Bandit Quest"},
    {minLevel = 75, maxLevel = 120, npc = "Desert Officer", mission = "Desert Officer Quest"},
    {minLevel = 120, maxLevel = 150, npc = "Snow Bandit", mission = "Snow Bandit Quest"},
    {minLevel = 150, maxLevel = 200, npc = "Snowman", mission = "Snowman Quest"},
    {minLevel = 200, maxLevel = 275, npc = "Chief Warden", mission = "Prison Quest"}
}

-- Função para obter a missão correta
function getMission(level)
    for _, data in pairs(farmData) do
        if level >= data.minLevel and level <= data.maxLevel then
            return data
        end
    end
end

-- Função para mover até uma posição
function moveTo(position)
    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid then
        humanoid:MoveTo(position)
        repeat wait() until (character.HumanoidRootPart.Position - position).Magnitude <= 2
    end
end

-- Função para coletar missão
function collectMission(missionName)
    for _, npc in pairs(game.Workspace.NPCs:GetChildren()) do
        if npc.Name == missionName then
            moveTo(npc.HumanoidRootPart.Position)
            fireproximityprompt(npc.ProximityPrompt)
            wait(1)
        end
    end
end

-- Função para encontrar o NPC mais próximo
function getClosestNPC(target)
    local closestNPC = nil
    local shortestDistance = math.huge
    for _, npc in pairs(game.Workspace.Enemies:GetChildren()) do
        if npc.Name == target and npc:FindFirstChild("HumanoidRootPart") then
            local distance = (npc.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                closestNPC = npc
            end
        end
    end
    return closestNPC
end

-- Loop principal do Auto Farm
spawn(function()
    while autoFarmEnabled do
        local level = player.Data.Level.Value
        local missionData = getMission(level)

        if missionData then
            -- Atualiza a missão e o NPC alvo
            local currentMission = missionData.mission
            local targetNPC = missionData.npc

            -- Coleta a missão
            collectMission(currentMission)

            -- Encontra o NPC mais próximo
            local npc = getClosestNPC(targetNPC)
            if npc then
                local npcPosition = npc.HumanoidRootPart.Position + Vector3.new(0, farmHeight, 0)
                moveTo(npcPosition)

                -- Ataca o NPC enquanto estiver vivo
                repeat
                    character:FindFirstChildOfClass("Tool"):Activate()
                    wait(0.1)
                until not npc or npc.Humanoid.Health <= 0
            else
                wait(1) -- Espera até encontrar mais NPCs
            end
        else
            print("Nível fora do alcance do script.")
            wait(5)
        end
        wait(1)
    end
end)
end)
--[[
    Title = String
    Default = Boolean
]]
