local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Slayer HuB" .. Fluent.Version,
    SubTitle = "by FJN,Wendel, Lorenzo",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})
--[[
   Title = |Slayer Hub Premium 
   SubTitle = String
   TabWidth = Value
   Size = UDim2 Value
   Acrylic = Boolean
   Theme = String
   MinimizeKey = String
]]

local Tab = Window:CreateTab(" 🏠 |Main", nil) -- Title, Image

local Toggle = Tab:CreateToggle({
   Name = "Aimbot Skill Players",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value then
-- Variáveis Globais para configuração do Aimbot
_G.Aimbot_Skill_Fov = true -- Aimbot ativado automaticamente
_G.Select_Size_Fov = 250 -- Tamanho do FOV
_G.Show_Fov = false -- Exibir o círculo de FOV (false para invisível)
_G.Aim_Players = nil -- Jogador alvo
_G.Min_Distance = 1 -- Distância mínima para o alvo
_G.Max_Distance = 1000 -- Distância máxima para o alvo

local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()

-- Função para detectar e mirar no jogador mais próximo dentro do FOV e distância
spawn(function()
    while wait() do
        if _G.Aimbot_Skill_Fov then
            pcall(function()
                local MaxDist = math.huge
                for _, v in pairs(game:GetService("Players"):GetPlayers()) do
                    if v ~= lp and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        local humanoidRootPart = v.Character.HumanoidRootPart
                        local playerPos = humanoidRootPart.Position
                        local camera = game.Workspace.CurrentCamera
                        local distance = (lp.Character.HumanoidRootPart.Position - playerPos).Magnitude

                        -- Verifica se o jogador está dentro da distância especificada e visível
                        if distance >= _G.Min_Distance and distance <= _G.Max_Distance then
                            local screenPos, isVisible = camera:WorldToScreenPoint(playerPos)
                            if isVisible then
                                local mousePos = Vector2.new(mouse.X, mouse.Y)
                                local targetPos = Vector2.new(screenPos.X, screenPos.Y)
                                local fovDist = (targetPos - mousePos).Magnitude
                                
                                -- Verifica se está dentro do FOV e é o mais próximo
                                if fovDist < MaxDist and fovDist <= _G.Select_Size_Fov then
                                    MaxDist = fovDist
                                    _G.Aim_Players = v
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

-- Hook para redirecionar a mira do aimbot
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.Aimbot_Skill_Fov and _G.Aim_Players and _G.Aim_Players.Character then
                        args[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)

-- Criar o círculo de FOV na tela
local Circle = Drawing.new("Circle")
Circle.Color = Color3.fromRGB(0, 244, 0) -- Cor do círculo (verde)
Circle.Thickness = 1
Circle.Radius = _G.Select_Size_Fov
Circle.NumSides = 460
Circle.Filled = false
Circle.Transparency = 1

-- Atualizar o círculo de FOV conforme o mouse se move
game:GetService("RunService").Stepped:Connect(function()
    Circle.Radius = _G.Select_Size_Fov
    Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
    Circle.Visible = _G.Show_Fov -- Círculo invisível
end)

Value = true

elseif not Value then
-- Variáveis Globais para configuração do Aimbot
_G.Aimbot_Skill_Fov = false -- Aimbot ativado automaticamente
_G.Select_Size_Fov = 250 -- Tamanho do FOV
_G.Show_Fov = false -- Exibir o círculo de FOV (false para invisível)
_G.Aim_Players = nil -- Jogador alvo
_G.Min_Distance = 1 -- Distância mínima para o alvo
_G.Max_Distance = 1000 -- Distância máxima para o alvo

local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()

-- Função para detectar e mirar no jogador mais próximo dentro do FOV e distância
spawn(function()
    while wait() do
        if _G.Aimbot_Skill_Fov then
            pcall(function()
                local MaxDist = math.huge
                for _, v in pairs(game:GetService("Players"):GetPlayers()) do
                    if v ~= lp and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        local humanoidRootPart = v.Character.HumanoidRootPart
                        local playerPos = humanoidRootPart.Position
                        local camera = game.Workspace.CurrentCamera
                        local distance = (lp.Character.HumanoidRootPart.Position - playerPos).Magnitude

                        -- Verifica se o jogador está dentro da distância especificada e visível
                        if distance >= _G.Min_Distance and distance <= _G.Max_Distance then
                            local screenPos, isVisible = camera:WorldToScreenPoint(playerPos)
                            if isVisible then
                                local mousePos = Vector2.new(mouse.X, mouse.Y)
                                local targetPos = Vector2.new(screenPos.X, screenPos.Y)
                                local fovDist = (targetPos - mousePos).Magnitude
                                
                                -- Verifica se está dentro do FOV e é o mais próximo
                                if fovDist < MaxDist and fovDist <= _G.Select_Size_Fov then
                                    MaxDist = fovDist
                                    _G.Aim_Players = v
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

-- Hook para redirecionar a mira do aimbot
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.Aimbot_Skill_Fov and _G.Aim_Players and _G.Aim_Players.Character then
                        args[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)

-- Criar o círculo de FOV na tela
local Circle = Drawing.new("Circle")
Circle.Color = Color3.fromRGB(0, 244, 0) -- Cor do círculo (verde)
Circle.Thickness = 1
Circle.Radius = _G.Select_Size_Fov
Circle.NumSides = 460
Circle.Filled = false
Circle.Transparency = 1

-- Atualizar o círculo de FOV conforme o mouse se move
game:GetService("RunService").Stepped:Connect(function()
    Circle.Radius = _G.Select_Size_Fov
    Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
    Circle.Visible = _G.Show_Fov -- Círculo invisível
end)

Value = false
end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Walk on Water",
   CurrentValue = false,
   Flag = "Walk on Water", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value then
-- Configuração inicial
_G.WalkonWater = true -- Defina como 'true' para ativar ou 'false' para desativar

-- Tamanho padrão e tamanho para caminhar na água
local normalSize = Vector3.new(1000, 80, 1000) -- Tamanho normal da água
local walkableSize = Vector3.new(1000, 112, 1000) -- Tamanho quando 'Walk on Water' está ativo

-- Função principal
spawn(function()
    while task.wait(0.1) do -- Pequena pausa para evitar sobrecarga
        pcall(function()
            -- Verificar se o recurso 'Walk on Water' está ativo
            local waterPlane = game:GetService("Workspace").Map:FindFirstChild("WaterBase-Plane")
            if waterPlane then
                if _G.WalkonWater then
                    waterPlane.Size = walkableSize -- Aumentar o tamanho para permitir caminhar
                else
                    waterPlane.Size = normalSize -- Retornar ao tamanho normal
                end
            end
        end)
    end
end)


Value = true

elseif not Value then

-- Configuração inicial
_G.WalkonWater = false -- Defina como 'true' para ativar ou 'false' para desativar

-- Tamanho padrão e tamanho para caminhar na água
local normalSize = Vector3.new(1000, 80, 1000) -- Tamanho normal da água
local walkableSize = Vector3.new(1000, 112, 1000) -- Tamanho quando 'Walk on Water' está ativo

-- Função principal
spawn(function()
    while task.wait(0.1) do -- Pequena pausa para evitar sobrecarga
        pcall(function()
            -- Verificar se o recurso 'Walk on Water' está ativo
            local waterPlane = game:GetService("Workspace").Map:FindFirstChild("WaterBase-Plane")
            if waterPlane then
                if _G.WalkonWater then
                    waterPlane.Size = walkableSize -- Aumentar o tamanho para permitir caminhar
                else
                    waterPlane.Size = normalSize -- Retornar ao tamanho normal
                end
            end
        end)
    end
end)

Value = false
end
   end,
})

local player = game.Players.LocalPlayer
local runService = game:GetService("RunService")
local speed = 16 -- Velocidade inicial padrão (pode ser alterada pelo slider)

-- Função para aplicar velocidade
local function applySpeed(humanoid)
    if humanoid and humanoid.Health > 0 then
        humanoid.WalkSpeed = speed
    end
end

-- Função para configurar o personagem e manter a velocidade após respawn
local function setupCharacter(character)
    local humanoid = character:WaitForChild("Humanoid")
    
    -- Aplicar velocidade inicial
    applySpeed(humanoid)

    -- Garantir que a velocidade seja restaurada se alterada
    humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if humanoid.WalkSpeed ~= speed then
            applySpeed(humanoid)
        end
    end)

    -- Reaplicar velocidade após a morte
    humanoid.Died:Connect(function()
        humanoid.WalkSpeed = 16 -- Velocidade padrão ao morrer
    end)
end

-- Configurar o personagem atual
if player.Character then
    setupCharacter(player.Character)
end

-- Configurar o personagem após respawn
player.CharacterAdded:Connect(setupCharacter)

-- Atualizar a velocidade com base no slider
local Slider = Tab:CreateSlider({
    Name = "Walk Speed",
    Range = {0, 500},
    Increment = 10,
    Suffix = " Speed",
    CurrentValue = 16,
    Flag = "Slider1",
    Callback = function(Value)
        speed = Value -- Atualizar a velocidade dinamicamente
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            applySpeed(player.Character:FindFirstChild("Humanoid"))
        end
    end,
})

-- Anti-interrupção constante
runService.Heartbeat:Connect(function()
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        applySpeed(player.Character:FindFirstChild("Humanoid"))
    end
end)

local Button = Tab:CreateButton({
   Name = "Anti Lag",
   Callback = function()
   for i,v in next, (workspace:GetDescendants()) do
 if v:IsA("Part") then v.Material = Enum.Material.SmoothPlastic
 end
 end
   end,
})

local Tab = Window:CreateTab("💰 | Shop", nil) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Buy Dark Step",
   Callback = function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
 
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Eletric",
   Callback = function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
 
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Water Kung fu",
   Callback = function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
 
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Dragon Claw",
   Callback = function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
 
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Super human",
   Callback = function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
 
   end,
})


local Button = Tab:CreateButton({
   Name = "Buy Black leg",
   Callback = function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Sharkman Karatê",
   Callback = function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
 
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Eletric Claw",
   Callback = function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
 
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Dragon Talon",
   Callback = function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
 
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy God Human",
   Callback = function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
 
   end,
})

local Button = Tab:CreateButton({
   Name = "Buy Sanguíne Art",
   Callback = function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
 
   end,
})

local Tab = Window:CreateTab(" 🍎 | Fruits", nil) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Random Fruit",
   Callback = function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
 
   end,
})
