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

local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")

-- Propriedades do ScreenGui
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "MovableImageLabelGui"

-- Propriedades do ImageLabel
ImageLabel.Parent = ScreenGui
ImageLabel.Name = "MovableImageLabel"
ImageLabel.Size = UDim2.new(0, 50, 0, 50) -- Pequeno e quadrado
ImageLabel.Position = UDim2.new(0.5, -25, 0.5, -25) -- Centralizado na tela
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- Cor de fundo
ImageLabel.Image = "rbxassetid://1234567890" -- Substitua pelo ID da sua imagem
ImageLabel.BorderSizePixel = 0

-- Opcional: Bordas arredondadas (remova se não quiser)
UICorner.CornerRadius = UDim.new(0, 8) -- Arredondamento leve
UICorner.Parent = ImageLabel

-- Função para tornar o ImageLabel móvel
local UIS = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    ImageLabel.Position = UDim2.new(
        startPos.X.Scale, startPos.X.Offset + delta.X,
        startPos.Y.Scale, startPos.Y.Offset + delta.Y
    )
end

ImageLabel.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = ImageLabel.Position

        input.Changed:Connect(function()

local Tab = Window:AddTab({ Title = "Teleporte", Icon = "🏙️" })
--[[
    Title = String
    Icon = String
]]
