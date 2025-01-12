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

-- Criação da GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Button = Instance.new("TextButton")

-- Configurações da GUI
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "CustomInterface"

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)

Button.Parent = Frame
Button.Text = "Ir para o Segundo Mar"
Button.Size = UDim2.new(0, 180, 0, 50)
Button.Position = UDim2.new(0, 10, 0, 25)
Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.SourceSans
Button.TextSize = 20

-- Ação do botão
Button.MouseButton1Click:Connect(function()
    -- Código para teletransportar o jogador para o segundo mar
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    if character then
        local secondSeaPosition = Vector3.new(0, 100, 0) -- Altere para as coordenadas do Segundo Mar
        character:SetPrimaryPartCFrame(CFrame.new(secondSeaPosition))
        print("Você foi teletransportado para o Segundo Mar!")
    end
end)
