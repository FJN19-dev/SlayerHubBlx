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

-- Referência ao jogador
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Função para teletransportar ao Segundo Mar
local function teleportToSea2()
    -- Coordenadas do Segundo Mar (ajuste conforme necessário)
    local sea2Position = Vector3.new(5000, 10, 5000)
    humanoidRootPart.CFrame = CFrame.new(sea2Position)
    print("Você foi teletransportado para o Segundo Mar!")
end

-- Atalho para executar a função
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then -- Pressione F para ir ao Segundo Mar
        teleportToSea2()
    end
end)
