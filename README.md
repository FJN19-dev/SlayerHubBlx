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
    local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local runService = game:GetService("RunService")

-- Configurações
local autoFarm = true
local currentMission = nil
local targetNPC = nil
local farmDistance = 10

-- Lista de NPCs e Missões por Nível
local farmData = {
    {minLevel = 0, maxLevel = 10, npc = "Bandit", mission = "Bandit Quest"},
    {minLevel = 10, maxLevel = 30, npc = "Pirate", mission = "Pirate Quest"},
    {minLevel = 30, maxLevel = 60, npc = "Monkey", mission = "Monkey Quest"},
    {minLevel = 60, maxLevel = 120, npc = "Desert Bandit", mission = "Desert Bandit Quest"},
    {minLevel = 120, maxLevel = 200, npc = "Snow Bandit", mission = "Snow Bandit Quest"},
    {minLevel = 200, maxLevel = 300, npc = "Sky Bandit", mission = "Sky Bandit Quest"},
    {minLevel = 300, maxLevel = 700, npc = "Magma Admiral", mission = "Magma Admiral Quest"}
}

-- Função para detectar a missão correta
function getMission(level)
    for _, data in pairs(farmData) do
        if level >= data.minLevel and level <= data.maxLevel then
            return data
        end
    end
end

-- Função para ir até um local
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

-- Função para encontrar NPCs
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

-- Loop principal de Auto Farm
spawn(function()
    while autoFarm do
        local level = player.Data.Level.Value
        local missionData = getMission(level)
        
        if missionData then
            -- Atualiza o alvo e a missão
            currentMission = missionData.mission
            targetNPC = missionData.npc

            -- Coleta a missão
            collectMission(currentMission)

            -- Derrota NPCs
            local npc = getClosestNPC(targetNPC)
            if npc then
                moveTo(npc.HumanoidRootPart.Position + Vector3.new(0, farmDistance, 0))
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
