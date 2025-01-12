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


local Tab = Window:AddTab({ Title = "Teleporte", Icon = "🏙️" })
--[[
    Title = String
    Icon = String
]]

-- Script: Botão para viajar ao Sea 2
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

-- Função para mover até o NPC
local function moveTo(position)
    local humanoid = char:WaitForChild("Humanoid")
    humanoid:MoveTo(position)
    humanoid.MoveToFinished:Wait()
end

-- Função para interagir com o NPC
local function interactWithNPC(npc)
    fireclickdetector(npc:FindFirstChild("ClickDetector"))
end

-- Função principal para ir ao Sea 2
local function goToSea2()
    local levelRequired = 700 -- Nível necessário para ir ao Sea 2
    if player.Data.Level.Value < levelRequired then
        warn("Você precisa estar no nível " .. levelRequired .. " para ir ao Segundo Mar.")
        return
    end

    -- Localização do NPC que transporta para o Segundo Mar
    local sea2NPC = nil
    for _, npc in pairs(workspace:GetDescendants()) do
        if npc:IsA("Model") and npc:FindFirstChild("NameTag") and npc.NameTag.Text == "Sea 2 NPC" then
            sea2NPC = npc
            break
        end
    end

    if not sea2NPC then
        warn("NPC para o Segundo Mar não encontrado.")
        return
    end

    -- Mover até o NPC e interagir
    moveTo(sea2NPC.PrimaryPart.Position)
    interactWithNPC(sea2NPC)

    -- Confirmar a viagem
    wait(2)
    local gui = player.PlayerGui:FindFirstChild("Sea2ConfirmationGUI")
    if gui then
        gui.ConfirmButton.MouseButton1Click:Fire()
        print("Viajando para o Segundo Mar...")
    else
        warn("Não foi possível encontrar o botão de confirmação.")
    end
end

-- Criar botão na tela
local screenGui = Instance.new("ScreenGui", player.PlayerGui)
local button = Instance.new("TextButton", screenGui)

button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0.5, -100, 0.9, -25)
button.BackgroundColor3 = Color3.fromRGB(0, 128, 255)
button.Text = "Ir para o Segundo Mar"
button.TextSize = 20
button.TextColor3 = Color3.new(1, 1, 1)

-- Conectar a função ao botão
button.MouseButton1Click:Connect(function()
    goToSea2()
end)
