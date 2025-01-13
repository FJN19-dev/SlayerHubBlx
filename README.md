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
    -- Configuração Principal
getgenv().AutoFarm = true -- Ativado por padrão

-- Função para pegar missões
local function pegarMissao(npcName, missao)
    local player = game.Players.LocalPlayer
    local humanoidRootPart = player.Character:WaitForChild("HumanoidRootPart")
    local npc = workspace.NPCs:FindFirstChild(npcName)

    if npc then
        humanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame
        wait(1)

        -- Solicitar a missão ao NPC
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", missao, 1)
        wait(1)
    end
end

-- Função para atacar os NPCs
local function atacarNPCs(npcFolder)
    local player = game.Players.LocalPlayer
    local humanoidRootPart = player.Character:WaitForChild("HumanoidRootPart")
    local npcs = workspace.Enemies:FindFirstChild(npcFolder)

    if npcs then
        for _, npc in pairs(npcs:GetChildren()) do
            if npc:FindFirstChild("Humanoid") and npc.Humanoid.Health > 0 then
                humanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame + Vector3.new(0, 0, 3)
                wait(0.2)

                -- Atacar o NPC
                repeat
                    game:GetService("VirtualUser"):CaptureController()
                    game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 0, 0))
                    wait(0.1)
                until npc.Humanoid.Health <= 0 or not getgenv().AutoFarm
            end
        end
    end
end

-- Função Principal de Farm
local function autoFarm()
    local player = game.Players.LocalPlayer

    while getgenv().AutoFarm do
        local level = player.Data.Level.Value

        pcall(function()
            if level >= 1 and level < 15 then
                pegarMissao("Bandit Quest Giver", "Bandit")
                atacarNPCs("Bandit")
            elseif level >= 15 and level < 30 then
                pegarMissao("Jungle Quest Giver", "Monkey")
                atacarNPCs("Monkey")
            elseif level >= 30 and level < 60 then
                pegarMissao("Jungle Quest Giver", "Gorilla")
                atacarNPCs("Gorilla")
            elseif level >= 60 and level < 100 then
                pegarMissao("Pirate Quest Giver", "Pirate")
                atacarNPCs("Pirate")
            elseif level >= 100 and level < 150 then
                pegarMissao("Desert Quest Giver", "Desert Bandit")
                atacarNPCs("Desert Bandit")
            elseif level >= 150 and level < 200 then
                pegarMissao("Desert Quest Giver", "Desert Officer")
                atacarNPCs("Desert Officer")
            else
                print("Auto Farm completo ou nível não configurado!")
                getgenv().AutoFarm = false
            end
        end)

        wait(1)
    end
end

-- Ativar o Auto Farm
spawn(autoFarm)

-- Tecla para Desativar
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.P then -- Pressione "P" para desativar
        getgenv().AutoFarm = false
        print("Auto Farm desativado!")
    end
end)
end)
--[[
    Title = String
    Default = Boolean
]]
