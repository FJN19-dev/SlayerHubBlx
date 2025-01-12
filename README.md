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

local Toggle = Tab:AddToggle("MyToggle", {Title = "Teleporta Mar 2 🗽", Default = false })

Toggle:OnChanged(function(Value)
    print("Toggle changed:", Value)
 -- Script de Teleporte para o Segundo Mar (Sea 2)
local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

if humanoidRootPart then
    -- Coordenadas do Sea 2 (altere se necessário)
    humanoidRootPart.CFrame = CFrame.new(2200, 10, 3800)
    print("Teleportado para o Sea 2!")
else
    warn("HumanoidRootPart não encontrado! Certifique-se de que seu personagem está carregado.")
end)
--[[
    Title = String
    Default = Boolean
]]

local Toggle = Tab:AddToggle("MyToggle", {Title = "🏙️Teleporta Mar 3", Default = false })

Toggle:OnChanged(function(Value)
    print("Toggle changed:", Value)
-- Script de Teleporte para o Terceiro Mar (Sea 3) com verificação de nível
local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
local level = player.Data.Level.Value -- Substitua "Data.Level" se a hierarquia for diferente

-- Nível necessário para ir ao Sea 3
local requiredLevel = 1500

if level >= requiredLevel then
    if humanoidRootPart then
        -- Coordenadas do Sea 3 (ajuste se necessário)
        humanoidRootPart.CFrame = CFrame.new(4000, 10, 7000) -- Altere as coordenadas caso necessário
        print("Teleportado para o Sea 3!")
    else
        warn("HumanoidRootPart não encontrado! Certifique-se de que seu personagem está carregado.")
    end
else
    warn("Você precisa ser nível " .. requiredLevel .. " para teleportar para o Sea 3!")
 end
end)
--[[
    Title = String
    Default = Boolean
]]
