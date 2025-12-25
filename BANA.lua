-- Serviços
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local TweenService = game:GetService("TweenService")

-- Criar GUI principal dos cards
local ScreenGuiCards = Instance.new("ScreenGui")
ScreenGuiCards.Parent = Player:WaitForChild("PlayerGui")
ScreenGuiCards.ResetOnSpawn = false


--------------------------------------------------------------------
-- FUNÇÃO PARA CRIAR UM CARD DE BOAS-VINDAS
--------------------------------------------------------------------
local function CreateWelcomeCard(mainText, subText, imageId)
    local Card = Instance.new("Frame")
    Card.Size = UDim2.new(0, 340, 0, 100)
    Card.Position = UDim2.new(0.5, -170, 0, -150)
    Card.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Card.BackgroundTransparency = 0.35
    Card.BorderSizePixel = 0
    Card.Parent = ScreenGuiCards

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 20)
    Corner.Parent = Card

    -- Imagem
    local Icon = Instance.new("ImageLabel")
    Icon.Parent = Card
    Icon.Size = UDim2.new(0, 70, 0, 70)
    Icon.Position = UDim2.new(0.5, -35, 0, -35)
    Icon.BackgroundTransparency = 1
    Icon.Image = imageId

    local Circle = Instance.new("UICorner")
    Circle.CornerRadius = UDim.new(1, 0)
    Circle.Parent = Icon

    -- Título
    local Title = Instance.new("TextLabel")
    Title.Parent = Card
    Title.Size = UDim2.new(1, 0, 0, 40)
    Title.Position = UDim2.new(0, 0, 0, 35)
    Title.BackgroundTransparency = 1
    Title.Text = mainText
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.Font = Enum.Font.GothamBold

    -- Subtítulo
    local Sub = Instance.new("TextLabel")
    Sub.Parent = Card
    Sub.Size = UDim2.new(1, 0, 0, 25)
    Sub.Position = UDim2.new(0, 0, 0, 70)
    Sub.BackgroundTransparency = 1
    Sub.Text = subText
    Sub.TextColor3 = Color3.fromRGB(220, 220, 220)
    Sub.TextScaled = true
    Sub.Font = Enum.Font.Gotham

    -- Animação de entrada
    TweenService:Create(Card, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        Position = UDim2.new(0.5, -170, 0, 40)
    }):Play()

    -- Espera 3 segundos
    task.wait(3)

    -- Animação de saída
    local fade = TweenService:Create(Card, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
        BackgroundTransparency = 1,
        Position = UDim2.new(0.5, -170, 0, -150)
    })
    fade:Play()

    fade.Completed:Connect(function()
        Card:Destroy()
    end)

    task.wait(0.8)
end


--------------------------------------------------------------------
-- CARD 1 — Welcome to Slayer Hub
--------------------------------------------------------------------
CreateWelcomeCard(
    "Welcome to Slayer Hub",
    "Loading Interface...",
    "rbxassetid://104989038209881"
)

--------------------------------------------------------------------
-- CARD 2 — Slayer Hub
--------------------------------------------------------------------
CreateWelcomeCard(
    "Slayer Hub",
    "Everyone Goes to Discord to",
    "rbxassetid://104989038209881"
)

local player = game:GetService("Players").LocalPlayer

local function PurpleBodyAura(character)
    -- Remove highlight antigo
    if character:FindFirstChild("PurpleAuraHighlight") then
        character.PurpleAuraHighlight:Destroy()
    end

    local highlight = Instance.new("Highlight")
    highlight.Name = "PurpleAuraHighlight"

    -- Cor do "corpo roxo"
    highlight.FillColor = Color3.fromRGB(170, 0, 255)
    highlight.FillTransparency = 0.35 -- quanto menor, mais roxo o corpo

    -- Contorno
    highlight.OutlineColor = Color3.fromRGB(200, 0, 255)
    highlight.OutlineTransparency = 0

    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = character
end

-- Aplica ao respawn
player.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid")
    PurpleBodyAura(character)
end)

-- Caso já exista
if player.Character then
    PurpleBodyAura(player.Character)
end



local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/FJN19-dev/Library-UI/refs/heads/main/RedzUi"))()

local Window = redzlib:MakeWindow({
  Title = "Slayer Hub : Blox Fruits",
  SubTitle = "by FJN",
  SaveFolder = "Slayer Hub"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://91062721750487", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})
    local St = Window:MakeTab({ "Status", "user-cog" })
    local Main = Window:MakeTab({ "Main", "armchair" })
    local Sub = Window:MakeTab({ "Sub Farm", "swords" })
    local Quest = Window:MakeTab({ "Quest/Items", "scroll" })
    local Fish = Window:MakeTab({ "Pesca", "carrot" })
    local PlayersTab = Window:MakeTab({ "Players/ESP", "user" })
    local Teleport = Window:MakeTab({ "Teleporte", "wand" })
    local Sea = Window:MakeTab({ "Sea Event", "waves" })
    local Other = Window:MakeTab({ "Draco", "" })
    local Fruit = Window:MakeTab({ "Fruit/Raid", "cherry" })
    local Race = Window:MakeTab({ "Race", "chevrons-right" })
    local Shop = Window:MakeTab({ "Shop", "shopping-cart" })
    local Misc = Window:MakeTab({ "Misc", "list-plus" })
    local Settings = Window:MakeTab({ "Setting", "settings" })
    


-- =========================
-- DETECTA SEA
-- =========================
local placeId = game.PlaceId
local First_Sea = false
local Second_Sea = false
local Third_Sea = false
local Dungeon = false

if placeId == 2753915549 then
    First_Sea = true
elseif placeId == 79091703265657 then
    Second_Sea = true
elseif placeId == 100117331123089 then
    Third_Sea = true
elseif placeId == 73902483975735 then
    Dungeon = true
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end

-- ===== SERVICES =====
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Player = Players.LocalPlayer

-- ===== REMOTE =====
local Remotes = ReplicatedStorage:FindFirstChild("Remotes")
local CommF = Remotes and Remotes:FindFirstChild("CommF_")

-- ===== GUI =====
local PlayerGui = Player:WaitForChild("PlayerGui", 10)
local MainGui = PlayerGui and PlayerGui:FindFirstChild("Main")

-- ===== WORLD =====
local World1, World2, World3, Dungeon = false, false, false, false

if placeId == 2753915549 then
    World1 = true
elseif placeId == 79091703265657 then
    World2 = true
elseif placeId == 100117331123089 then
    World3 = true
elseif placeId == 73902483975735 then
    Dungeon = true
end

-- ===== CHARACTER =====
repeat
    task.wait()
until Player.Character
function CheckQuest()
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel >= 1 and MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif MyLevel >= 10 and MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel >= 15 and MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel >= 30 and MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel >= 40 and MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel >= 60 and MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel >= 75 and MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel >= 90 and MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif MyLevel >= 100 and MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif MyLevel >= 120 and MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel >= 150 and MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel >= 175 and MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel >= 190 and MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel >= 210 and MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel >= 250 and MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel >= 275 and MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel >= 300 and MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel >= 325 and MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel >= 375 and MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel >= 400 and MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel >= 450 and MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel >= 475 and MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif MyLevel >= 525 and MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel >= 550 and MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif MyLevel >= 625 and MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif World2 then
        if MyLevel >= 700 and MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel >= 725 and MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel >= 775 and MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel >= 800 and MyLevel <= 874 then
            Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif MyLevel >= 875 and MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel >= 900 and MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif MyLevel >= 950 and MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel >= 975 and MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel >= 1000 and MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel >= 1050 and MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel >= 1100 and MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel >= 1125 and MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel >= 1175 and MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel >= 1200 and MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel >= 1250 and MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1275 and MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end             
        elseif MyLevel >= 1300 and MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1325 and MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1350 and MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1375 and MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel >= 1425 and MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054, 240, -10146)
            CFrameMon = CFrame.new(-3291, 252, -10501)
        end
    elseif World3 then
        if MyLevel >= 1500 and MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel >= 1525 and MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel >= 1575 and MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "DragonCrewQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
            CFrameMon = CFrame.new(6920.71435546875, 56.15597152709961, -942.5044555664062)
        elseif MyLevel >= 1600 and MyLevel <= 1624 then 
            Mon = "Dragon Crew Archer"
            NameQuest = "DragonCrewQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
            CFrameMon = CFrame.new(6817.91259765625, 484.804443359375, 513.4141235351562)
        elseif MyLevel >= 1625 and MyLevel <= 1649 then
            Mon = "Hydra Enforcer"
            NameQuest = "VenomCrewQuest"
            LevelQuest = 1
            NameMon = "Hydra Enforcer"
            CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
            CFrameMon = CFrame.new(4584.69287109375, 1002.6435546875, 705.7958984375)
        elseif MyLevel >= 1650 and MyLevel <= 1699 then 
            Mon = "Venomous Assailant"
            NameQuest = "VenomCrewQuest"
            LevelQuest = 2
            NameMon = "Venomous Assailant"
            CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
            CFrameMon = CFrame.new(4638.78564453125, 1078.94091796875, 881.8002319335938)        
        elseif MyLevel >= 1700 and MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel >= 1725 and MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel >= 1775 and MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel >= 1800 and MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
        elseif MyLevel >= 1825 and MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel >= 1850 and MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel >= 1900 and MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel >= 1925 and MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel >= 1975 and MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel >= 2000 and MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel >= 2025 and MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel >= 2050 and MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel >= 2075 and MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel >= 2100 and MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel >= 2125 and MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel >= 2150 and MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel >= 2200 and MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel >= 2225 and MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel >= 2250 and MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel >= 2275 and MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel >= 2300 and MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel >= 2325 and MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel >= 2350 and MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel >= 2375 and MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel >= 2400 and MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel >= 2425 and MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)            
        elseif MyLevel >= 2450 and MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
        elseif MyLevel >= 2475 and MyLevel <= 2524 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
        elseif MyLevel >= 2525 and MyLevel <= 2550 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375)
        elseif MyLevel >= 2550 and MyLevel <= 2574 then
            Mon = "Serpent Hunter"
            LevelQuest = 1
            NameQuest = "TikiQuest3"
            NameMon = "Serpent Hunter"
            CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-16521.0625, 106.09285, 1488.78467, 0.469467044, 0, 0.882950008, 0, 1, 0, -0.882950008, 0, 0.469467044)
        elseif MyLevel >= 2575 and MyLevel <= 2599 then
            Mon = "Skull Slayer"
            LevelQuest = 2
            NameQuest = "TikiQuest3"
            NameMon = "Skull Slayer"
            CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, 0, -0.0348687991, 0, 1, 0, 0.0348687991, 0, -0.999392271)
        elseif MyLevel >= 2600 and MyLevel <= 2624 then
            Mon = "Reef Bandit"
            LevelQuest = 1
            NameQuest = "SubmergedQuest1"
            NameMon = "Reef Bandit"
            CFrameQuest = CFrame.new(10882.264, -2086.322, 10034.226)
            CFrameMon = CFrame.new(10736.6191, -2087.8439, 9338.4882)
        elseif MyLevel >= 2625 and MyLevel <= 2649 then
            Mon = "Coral Pirate"
            LevelQuest = 2
            NameQuest = "SubmergedQuest1"
            NameMon = "Coral Pirate"
            CFrameQuest = CFrame.new(10882.264, -2086.322, 10034.226)
            CFrameMon = CFrame.new(10965.1025, -2158.8842, 9177.2597)
        elseif MyLevel >= 2650 and MyLevel <= 2674 then
            Mon = "Sea Chanter"
            LevelQuest = 1
            NameQuest = "SubmergedQuest2"
            NameMon = "Sea Chanter"
            CFrameQuest = CFrame.new(10882.264, -2086.322, 10034.226)
            CFrameMon = CFrame.new(10621.0342, -2087.8440, 10102.0332)
        elseif MyLevel >= 2675 and MyLevel <= 2699 then
            Mon = "Ocean Prophet"
            LevelQuest = 2
            NameQuest = "SubmergedQuest2"
            NameMon = "Ocean Prophet"
            CFrameQuest = CFrame.new(10882.264, -2086.322, 10034.226)
            CFrameMon = CFrame.new(11056.1445, -2001.6717, 10117.4493)
        elseif MyLevel >= 2700 and MyLevel <= 2724 then
            Mon = "High Disciple"
            LevelQuest = 1
            NameQuest = "SubmergedQuest3"
            NameMon = "High Disciple"
            CFrameQuest = CFrame.new(9636.52441, -1992.19507, 9609.52832)
            CFrameMon = CFrame.new(9828.087890625, -1940.908935546875, 9693.0634765625)
        elseif MyLevel >= 2725 and MyLevel <= 2800 then
            Mon = "Grand Devotee"
            LevelQuest = 2
            NameQuest = "SubmergedQuest3"
            NameMon = "Grand Devotee"
            CFrameQuest = CFrame.new(9636.52441, -1992.19507, 9609.52832)
            CFrameMon = CFrame.new(9557.5849609375, -1928.0404052734375, 9859.1826171875)
      end
    end
end

local id = game.PlaceId
if id == 2753915549 then
    World1 = true
elseif id == 79091703265657 then
    World2 = true
elseif id == 100117331123089 then
    World3 = true
elseif id == 73902483975735 then
    Dungeon = true
else
    game:Shutdown()
end


First_Sea = false
Second_Sea = false
Third_Sea = false
Dungeon = false

local placeId = game.PlaceId
if placeId == 2753915549 then
    First_Sea = true
elseif placeId == 79091703265657 then
    Second_Sea = true
elseif placeId == 100117331123089 then
    Third_Sea = true
elseif placeId == 73902483975735 then
    Dungeon = true
end

--// Select Island
if First_Sea then
AreaList = {
  'Jungle', 'Buggy', 'Desert', 'Snow', 'Marine', 'Sky', 'Prison', 'Colosseum', 'Magma', 'Fishman', 'Sky Island', 'Fountain'
} elseif Second_Sea then
AreaList = {
  'Area 1', 'Area 2', 'Zombie', 'Marine', 'Snow Mountain', 'Ice fire', 'Ship', 'Frost', 'Forgotten'
} elseif Third_Sea then
AreaList = {
  'Pirate Port', 'Amazon', 'Marine Tree', 'Deep Forest', 'Haunted Castle', 'Nut Island', 'Ice Cream Island', 'Cake Island', 'Choco Island', 'Candy Island','Tiki Outpost'
}
end

--// Check Boss Quest
function CheckBossQuest()
if First_Sea then
if SelectBoss == "The Gorilla King" then
BossMon = "The Gorilla King"
NameBoss = 'The Gorrila King'
NameQuestBoss = "JungleQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$2,000\n7,000 Exp."
CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
elseif SelectBoss == "Bobby" then
BossMon = "Bobby"
NameBoss = 'Bobby'
NameQuestBoss = "BuggyQuest1"
QuestLvBoss = 3
RewardBoss = "Reward:\n$8,000\n35,000 Exp."
CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
elseif SelectBoss == "The Saw" then
BossMon = "The Saw"
NameBoss = 'The Saw'
CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
elseif SelectBoss == "Yeti" then
BossMon = "Yeti"
NameBoss = 'Yeti'
NameQuestBoss = "SnowQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$10,000\n180,000 Exp."
CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
elseif SelectBoss == "Mob Leader" then
BossMon = "Mob Leader"
NameBoss = 'Mob Leader'
CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
elseif SelectBoss == "Vice Admiral" then
BossMon = "Vice Admiral"
NameBoss = 'Vice Admiral'
NameQuestBoss = "MarineQuest2"
QuestLvBoss = 2
RewardBoss = "Reward:\n$10,000\n180,000 Exp."
CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
elseif SelectBoss == "Saber Expert" then
NameBoss = 'Saber Expert'
BossMon = "Saber Expert"
CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
elseif SelectBoss == "Warden" then
BossMon = "Warden"
NameBoss = 'Warden'
NameQuestBoss = "ImpelQuest"
QuestLvBoss = 1
RewardBoss = "Reward:\n$6,000\n850,000 Exp."
CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.49946401e-06, 0.975376427, -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, 0.220546961)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif SelectBoss == "Chief Warden" then
BossMon = "Chief Warden"
NameBoss = 'Chief Warden'
NameQuestBoss = "ImpelQuest"
QuestLvBoss = 2
RewardBoss = "Reward:\n$10,000\n1,000,000 Exp."
CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif SelectBoss == "Swan" then
BossMon = "Swan"
NameBoss = 'Swan'
NameQuestBoss = "ImpelQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n1,600,000 Exp."
CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif SelectBoss == "Magma Admiral" then
BossMon = "Magma Admiral"
NameBoss = 'Magma Admiral'
NameQuestBoss = "MagmaQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n2,800,000 Exp."
CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
elseif SelectBoss == "Fishman Lord" then
BossMon = "Fishman Lord"
NameBoss = 'Fishman Lord'
NameQuestBoss = "FishmanQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n4,000,000 Exp."
CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
elseif SelectBoss == "Wysper" then
BossMon = "Wysper"
NameBoss = 'Wysper'
NameQuestBoss = "SkyExp1Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n4,800,000 Exp."
CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
elseif SelectBoss == "Thunder God" then
BossMon = "Thunder God"
NameBoss = 'Thunder God'
NameQuestBoss = "SkyExp2Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n5,800,000 Exp."
CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
elseif SelectBoss == "Cyborg" then
BossMon = "Cyborg"
NameBoss = 'Cyborg'
NameQuestBoss = "FountainQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n7,500,000 Exp."
CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
elseif SelectBoss == "Ice Admiral" then
BossMon = "Ice Admiral"
NameBoss = 'Ice Admiral'
CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
elseif SelectBoss == "Greybeard" then
BossMon = "Greybeard"
NameBoss = 'Greybeard'
CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
end
end
if Second_Sea then
if SelectBoss == "Diamond" then
BossMon = "Diamond"
NameBoss = 'Diamond'
NameQuestBoss = "Area1Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n9,000,000 Exp."
CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
elseif SelectBoss == "Jeremy" then
BossMon = "Jeremy"
NameBoss = 'Jeremy'
NameQuestBoss = "Area2Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n11,500,000 Exp."
CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
elseif SelectBoss == "Fajita" then
BossMon = "Fajita"
NameBoss = 'Fajita'
NameQuestBoss = "MarineQuest3"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n15,000,000 Exp."
CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
elseif SelectBoss == "Don Swan" then
BossMon = "Don Swan"
NameBoss = 'Don Swan'
CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
elseif SelectBoss == "Smoke Admiral" then
BossMon = "Smoke Admiral"
NameBoss = 'Smoke Admiral'
NameQuestBoss = "IceSideQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n25,000,000 Exp."
CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
elseif SelectBoss == "Awakened Ice Admiral" then
BossMon = "Awakened Ice Admiral"
NameBoss = 'Awakened Ice Admiral'
NameQuestBoss = "FrostQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n36,000,000 Exp."
CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
elseif SelectBoss == "Tide Keeper" then
BossMon = "Tide Keeper"
NameBoss = 'Tide Keeper'
NameQuestBoss = "ForgottenQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$12,500\n38,000,000 Exp."
CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
elseif SelectBoss == "Darkbeard" then
BossMon = "Darkbeard"
NameBoss = 'Darkbeard'
CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
elseif SelectBoss == "Cursed Captain" then
BossMon = "Cursed Captain"
NameBoss = 'Cursed Captain'
CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
elseif SelectBoss == "Order" then
BossMon = "Order"
NameBoss = 'Order'
CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
end
end
if Third_Sea then
if SelectBoss == "Stone" then
BossMon = "Stone"
NameBoss = 'Stone'
NameQuestBoss = "PiratePortQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n40,000,000 Exp."
CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
elseif SelectBoss == "Island Empress" then
BossMon = "Island Empress"
NameBoss = 'Island Empress'
NameQuestBoss = "AmazonQuest2"
QuestLvBoss = 3
RewardBoss = "Reward:\n$30,000\n52,000,000 Exp."
CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
elseif SelectBoss == "Kilo Admiral" then
BossMon = "Kilo Admiral"
NameBoss = 'Kilo Admiral'
NameQuestBoss = "MarineTreeIsland"
QuestLvBoss = 3
RewardBoss = "Reward:\n$35,000\n56,000,000 Exp."
CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
elseif SelectBoss == "Captain Elephant" then
BossMon = "Captain Elephant"
NameBoss = 'Captain Elephant'
NameQuestBoss = "DeepForestIsland"
QuestLvBoss = 3
RewardBoss = "Reward:\n$40,000\n67,000,000 Exp."
CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
elseif SelectBoss == "Beautiful Pirate" then
BossMon = "Beautiful Pirate"
NameBoss = 'Beautiful Pirate'
NameQuestBoss = "DeepForestIsland2"
QuestLvBoss = 3
RewardBoss = "Reward:\n$50,000\n70,000,000 Exp."
CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
elseif SelectBoss == "Cake Queen" then
BossMon = "Cake Queen"
NameBoss = 'Cake Queen'
NameQuestBoss = "IceCreamIslandQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$30,000\n112,500,000 Exp."
CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
elseif SelectBoss == "Longma" then
BossMon = "Longma"
NameBoss = 'Longma'
CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
elseif SelectBoss == "Soul Reaper" then
BossMon = "Soul Reaper"
NameBoss = 'Soul Reaper'
CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
elseif SelectBoss == "rip_indra True Form" then
BossMon = "rip_indra True Form"
NameBoss = 'rip_indra True Form'
CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
end
end
end

--// Check Material
function MaterialMon()
if SelectMaterial == "Radioactive Material" then
MMon = "Factory Staff"
MPos = CFrame.new(295,73,-56)
SP = "Default"
elseif SelectMaterial == "Mystic Droplet" then
MMon = "Water Fighter"
MPos = CFrame.new(-3385,239,-10542)
SP = "Default"
elseif SelectMaterial == "Magma Ore" then
if First_Sea then
MMon = "Military Spy"
MPos = CFrame.new(-5815,84,8820)
SP = "Default"
elseif Second_Sea then
MMon = "Magma Ninja"
MPos = CFrame.new(-5428,78,-5959)
SP = "Default"
end
elseif SelectMaterial == "Angel Wings" then
MMon = "God's Guard"
MPos = CFrame.new(-4698,845,-1912)
SP = "Default"
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7859.09814, 5544.19043, -381.476196))
end
elseif SelectMaterial == "Leather" then
if First_Sea then
MMon = "Brute"
MPos = CFrame.new(-1145,15,4350)
SP = "Default"
elseif Second_Sea then
MMon = "Marine Captain"
MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
SP = "Default"
elseif Third_Sea then
MMon = "Jungle Pirate"
MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
SP = "Default"
end
elseif SelectMaterial == "Scrap Metal" then
if First_Sea then
MMon = "Brute"
MPos = CFrame.new(-1145,15,4350)
SP = "Default"
elseif Second_Sea then
MMon = "Swan Pirate"
MPos = CFrame.new(878,122,1235)
SP = "Default"
elseif Third_Sea then
MMon = "Jungle Pirate"
MPos = CFrame.new(-12107,332,-10549)
SP = "Default"
end
elseif SelectMaterial == "Fish Tail" then
if Third_Sea then
MMon = "Fishman Raider"
MPos = CFrame.new(-10993,332,-8940)
SP = "Default"
elseif First_Sea then
MMon = "Fishman Warrior"
MPos = CFrame.new(61123,19,1569)
SP = "Default"
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
end
end
elseif SelectMaterial == "Demonic Wisp" then
MMon = "Demonic Soul"
MPos = CFrame.new(-9507,172,6158)
SP = "Default"
elseif SelectMaterial == "Vampire Fang" then
MMon = "Vampire"
MPos = CFrame.new(-6033,7,-1317)
SP = "Default"
elseif SelectMaterial == "Conjured Cocoa" then
MMon = "Chocolate Bar Battler"
MPos = CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625)
SP = "Default"
elseif SelectMaterial == "Dragon Scale" then
MMon = "Dragon Crew Archer"
MPos = CFrame.new(6594,383,139)
SP = "Default"
elseif SelectMaterial == "Gunpowder" then
MMon = "Pistol Billionaire"
MPos = CFrame.new(-469,74,5904)
SP = "Default"
elseif SelectMaterial == "Mini Tusk" then
MMon = "Mythological Pirate"
MPos = CFrame.new(-13545,470,-6917)
SP = "Default"
end
end

--------------------------------------------------------------------------------------------------------------------------------------------
---------Tween

  function Tween2(P1)
    local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance >= 1 then
    Speed = 300
    end
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Play()
    if _G.CancelTween2 then
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Cancel()
    end
    _G.Clip2 = true
    wait(Distance/Speed)
    _G.Clip2 = false
    end
   

--BTP
function BTP(Position)
	game.Players.LocalPlayer.Character.Head:Destroy()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	wait(0.5)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
--BTPZ
function BTPZ(Point)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
        end
------Bypass TP 2
 function GetIsLand(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = targetPos
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos.Position
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		RealTarget = RealTarget.p
	end

	local ReturnValue
	local CheckInOut = math.huge;
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
			local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			if ReMagnitude < CheckInOut then
				CheckInOut = ReMagnitude;
				ReturnValue = v.Name
			end
		end
		if ReturnValue then
			return ReturnValue
		end 
    end
end


     function toTarget(...)
    local RealtargetPos = { ... }
    local targetPos = RealtargetPos[1]
    local RealTarget
    if type(targetPos) == "vector" then
        RealTarget = CFrame.new(targetPos)
    elseif type(targetPos) == "userdata" then
        RealTarget = targetPos
    elseif type(targetPos) == "number" then
        RealTarget = CFrame.new(unpack(RealtargetPos))
    end
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
        if tween then tween:Cancel() end
        repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2)
    end
    local tweenfunc = {}
    local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
        .Magnitude
    if Distance < 1000 then
        Speed = 315
    elseif Distance >= 1000 then
        Speed = 300
    end
    if BypassTP then
        if Distance > 3000 and not AutoNextIsland and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
            pcall(function()
                tween:Cancel()
                fkwarp = false
                if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                    wait(.1)
                    Com("F_", "TeleportToSpawn")
                elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                    wait(0.1)
                    repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                else
                    if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                        if fkwarp == false then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                        end
                        fkwarp = true
                    end
                    wait(.08)
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                    repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                    wait(.1)
                    Com("F_", "SetSpawnPoint")
                end
                wait(0.2)

                return
            end)
        end
    end

    local tween_s = game:service "TweenService"
    local info = TweenInfo.new(
        (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
        .Magnitude / Speed, Enum.EasingStyle.Linear)
    local tweenw, err = pcall(function()
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, { CFrame = RealTarget })
        tween:Play()
    end)

    function tweenfunc:Stop()
        tween:Cancel()
    end

    function tweenfunc:Wait()
        tween.Completed:Wait()
    end

    return tweenfunc
end

------

function Tween(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
    pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/300, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
    tween:Play()
    if Distance <= 300 then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
    if _G.StopTween == true then
        tween:Cancel()
        _G.Clip = false
    end
end

---------

function toTargetP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()

			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

    --function TP to Boat/Ship
    function TweenShip(CFgo)
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end
    
    function TweenBoat(CFgo)
        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end

--select weapon
function EquipTool(ToolSe)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(0.5)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
	end
    
    --aimbot mastery

	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
		  local method = getnamecallmethod()
		  local args = {
			...
		  }
		  if tostring(method) == "FireServer" then
		  if tostring(args[1]) == "RemoteEvent" then
		  if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
		  if _G.UseSkill then
		  if type(args[2]) == "vector" then
		  args[2] = PositionSkillMasteryDevilFruit
		  else
			args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
		  end
		  return old(unpack(args))
		  end
		  end
		  end
		  end
		  return old(...)
		  end)
        end)

  

	


--Check Material
function CheckMaterial(matname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v) == "table" then
if v.Type == "Material" then
if v.Name == matname then
return v.Count
end
end
end
end
return 0
end





local lastHakiTime = 0
local hakiCooldown = 1
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        local currentTime = tick()
        if currentTime - lastHakiTime >= hakiCooldown then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            lastHakiTime = currentTime
        end
    end
end
local lastUnEquipTime = 0
local unEquipCooldown = 0.5
function UnEquipWeapon(Weapon)
    local currentTime = tick()
    if currentTime - lastUnEquipTime >= unEquipCooldown then
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            getgenv().NotAutoEquip = true
            game.Players.LocalPlayer.Character[Weapon].Parent = game.Players.LocalPlayer.Backpack
            getgenv().NotAutoEquip = false
        end
        lastUnEquipTime = currentTime
    end
end
local lastEquipTime = 0
local equipCooldown = 0.5
function EquipWeapon(ToolSe)
    local currentTime = tick()
    if currentTime - lastEquipTime >= equipCooldown then        
        if not getgenv().NotAutoEquip then
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            if tool then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
        end
        lastEquipTime = currentTime
    end
end
function BTP(p)
    local player = game.Players.LocalPlayer
    local humanoidRootPart = player.Character.HumanoidRootPart
    local humanoid = player.Character.Humanoid
    local playerGui = player.PlayerGui.Main
    local targetPosition = p.Position
    local lastPosition = humanoidRootPart.Position
    repeat
        humanoid.Health = 0
        humanoidRootPart.CFrame = p
        playerGui.Quest.Visible = false
        if (humanoidRootPart.Position - lastPosition).Magnitude > 1 then
            lastPosition = humanoidRootPart.Position
            humanoidRootPart.CFrame = p
        end
        task.wait(0.5)
    until (p.Position - humanoidRootPart.Position).Magnitude <= 2000
end
function BTPZ(v209)
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local rootPart = player.Character.HumanoidRootPart
        rootPart.CFrame = v209
    end
end
local lastTweenTime = 0
local tweenCooldown = 0.5
function fastpos(Pos)
    local currentTime = tick()
    if currentTime - lastTweenTime >= tweenCooldown then
        local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 1000        
        local tween = game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
            { CFrame = Pos }
        )
        tween:Play()
        lastTweenTime = currentTime
    end
end
local lastTPBTime = 0
local tpbCooldown = 0.5
function TPB(pos, boat)
    local currentTime = tick()
    if currentTime - lastTPBTime >= tpbCooldown then
        local tween_s = game:GetService("TweenService")
        local distance = (boat.CFrame.Position - pos.Position).Magnitude
        local speed = getgenv().SpeedBoat
        local info = TweenInfo.new(distance / speed, Enum.EasingStyle.Linear)
        if distance <= 25 then
            return {Stop = function() end}
        else
            local tween = tween_s:Create(boat, info, {CFrame = pos})
            tween:Play()
            lastTPBTime = currentTime
            return {
                Stop = function()
                    tween:Cancel()
                end
            }
        end
    end
end
local lastEquipTime = 0
local equipCooldown = 0.2
function EquipAllWeapon()
    pcall(function()
        local currentTime = tick()
        if currentTime - lastEquipTime >= equipCooldown then
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA('Tool') and not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening") then
                    local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
                    if ToolHumanoid then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
                    end
                end
            end
            lastEquipTime = currentTime
        end
    end)
end
function CheckNearestTeleporter(aI)
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    local vcspos = aI.Position
    local min = math.huge
    local min2 = math.huge
    local y = game.PlaceId

    local World1, World2, World3, Dungeon = false, false, false, false

    if y == 2753915549 then
        World1 = true
    elseif y == 79091703265657 then
        World2 = true
    elseif y == 100117331123089 then
        World3 = true
    elseif y == 73902483975735 then
        Dungeon = true
    end

    local TableLocations = {}
    if World3 then
        TableLocations = {
            ["Mansion"] = Vector3.new(-12471, 374, -7551),
            ["Hydra"] = Vector3.new(5659, 1013, -341),
            ["Caslte On The Sea"] = Vector3.new(-5092, 315, -3130),
            ["Floating Turtle"] = Vector3.new(-12001, 332, -8861),
            ["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
            ["Temple Of Time"] = Vector3.new(28286, 14897, 103)
        }
    elseif World2 then
        TableLocations = {
            ["Flamingo Mansion"] = Vector3.new(-317, 331, 597),
            ["Flamingo Room"] = Vector3.new(2283, 15, 867),
            ["Cursed Ship"] = Vector3.new(923, 125, 32853),
            ["Zombie Island"] = Vector3.new(-6509, 83, -133)
        }
    elseif World1 then
        TableLocations = {
            ["Sky Island 1"] = Vector3.new(-4652, 873, -1754),
            ["Sky Island 2"] = Vector3.new(-7895, 5547, -380),
            ["Under Water Island"] = Vector3.new(61164, 5, 1820),
            ["Under Water Island Entrace"] = Vector3.new(3865, 5, -1926)
        }
    end
    local TableLocations2 = {}
    for r, v in pairs(TableLocations) do
        TableLocations2[r] = (v - vcspos).Magnitude
    end
    for r, v in pairs(TableLocations2) do
        if v < min then
            min = v
            min2 = v
        end
    end
    local choose
    for r, v in pairs(TableLocations2) do
        if v <= min then
            choose = TableLocations[r]
        end
    end
    local min3 = (vcspos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if min2 <= min3 then
        return choose
    end
end    
function requestEntrance(aJ)
    local args = {"requestEntrance", aJ}
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))    
    local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local char = game.Players.LocalPlayer.Character.HumanoidRootPart
    char.CFrame = CFrame.new(oldcframe.X, oldcframe.Y + 50, oldcframe.Z)    
    task.wait(0.5)
end   
function topos(Tween_Pos)
    pcall(function()
        if game:GetService("Players").LocalPlayer 
            and game:GetService("Players").LocalPlayer.Character 
            and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") 
            and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") 
            and game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 
            and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
            if not TweenSpeed then
                TweenSpeed = 230
            end
            DefualtY = Tween_Pos.Y
            TargetY = Tween_Pos.Y
            targetCFrameWithDefualtY = CFrame.new(Tween_Pos.X, DefualtY, Tween_Pos.Z)
            targetPos = Tween_Pos.Position
            oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
            if Distance <= 300 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Tween_Pos
            end
            local aM = CheckNearestTeleporter(Tween_Pos)
            if aM then
                pcall(function()
                    tween:Cancel()
                end)
                requestEntrance(aM)
            end
            b1 = CFrame.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                DefualtY,
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
            )
            IngoreY = true
            if IngoreY and (b1.Position - targetCFrameWithDefualtY.Position).Magnitude > 5 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    DefualtY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
                local tweenfunc = {}
                local aN = game:GetService("TweenService")
                local aO = TweenInfo.new(
                    (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / TweenSpeed,
                    Enum.EasingStyle.Linear
                )
                tween = aN:Create(
                    game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                    aO,
                    {CFrame = targetCFrameWithDefualtY}
                )
                tween:Play()
                function tweenfunc:Stop()
                    tween:Cancel()
                end
                tween.Completed:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    TargetY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
            else
                local tweenfunc = {}
                local aN = game:GetService("TweenService")
                local aO = TweenInfo.new(
                    (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / TweenSpeed,
                    Enum.EasingStyle.Linear
                )
                tween = aN:Create(
                    game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                    aO,
                    {CFrame = Tween_Pos}
                )
                tween:Play()
                function tweenfunc:Stop()
                    tween:Cancel()
                end
                tween.Completed:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    TargetY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
            end
            if not tween then
                return tween
            end
            return tweenfunc
        end
    end)
end
function StopTween(target)
    pcall(function()
        if not target then
            getgenv().StopTween = true            
            if tween then
                tween:Cancel()
                tween = nil
            end            
            local player = game:GetService("Players").LocalPlayer
            local character = player and player.Character
            local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                humanoidRootPart.Anchored = true
                task.wait(0.1)
                humanoidRootPart.CFrame = humanoidRootPart.CFrame
                humanoidRootPart.Anchored = false
            end
            local bodyClip = humanoidRootPart and humanoidRootPart:FindFirstChild("BodyClip")
            if bodyClip then
                bodyClip:Destroy()
            end
            getgenv().StopTween = false
            getgenv().Clip = false
        end
    end)
end
spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().TeleportIsland or 
               getgenv().AutoFarm or 
               getgenv().AutoMaterial or 
               getgenv().MasteryFarm or 
               getgenv().AutoGetMelee or 
               getgenv().TeleportToFruit or 
               getgenv().AutoNewWorld or 
               getgenv().AutoThirdSea or 
               getgenv().AutoFactory or 
               getgenv().AutoPirateRaid or 
               getgenv().AutoEliteHunter or 
               getgenv().AutoTouchPadHaki or 
               getgenv().AutoRipIndra or 
               getgenv().AutoSoulReaper or 
               getgenv().AutoDoughKing or 
               getgenv().AutoDarkbeard or 
               getgenv().DojoClaimQuest or 
               getgenv().DragonTalonUpgrade or 
               getgenv().BlazeEmberFarm or 
               getgenv().AutoObservationHakiV2 or 
               getgenv().AutoObservation or 
               getgenv().AutoFarmBoss or 
               getgenv().AutoFarmAllBoss or 
               getgenv().Auto_Dungeon or 
               getgenv().SailBoat or 
               getgenv().RelzFishBoat or 
               getgenv().RelzPirateBrigade or 
               getgenv().RelzPirateGrandBrigade or 
               getgenv().AutoTerrorshark or 
               getgenv().AutoSeaBest or 
               getgenv().AutoFrozenDimension or 
               getgenv().KillLevi or
               getgenv().UpgradeRaceV2 or
               getgenv().AutoCyborg or
               getgenv().AutoGhoul or
               getgenv().QuestTrain_2 or
               getgenv().TeleportMigare or
               getgenv().Tweentohighestpoint or
               getgenv().TeleportToGear or
               getgenv().AutoTrialRace or
               getgenv().AutoKillPlayerAfterTrial or
               getgenv().AutoRainbowHaki or
               getgenv().AutoSkullGuitar or
               getgenv().AutoGetCDK or
               getgenv().AutoTushita or
               getgenv().AutoSaber or
               getgenv().TeleportPlayer
            then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                    Noclip.Velocity = Vector3.new(0, 0, 0)
                end
            else
                local bodyClip = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip")
                if bodyClip then
                    bodyClip:Destroy()
                end
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().TeleportIsland or 
               getgenv().AutoFarm or 
               getgenv().AutoMaterial or 
               getgenv().MasteryFarm or 
               getgenv().AutoGetMelee or 
               getgenv().TeleportToFruit or 
               getgenv().AutoNewWorld or 
               getgenv().AutoThirdSea or 
               getgenv().AutoFactory or 
               getgenv().AutoPirateRaid or 
               getgenv().AutoEliteHunter or 
               getgenv().AutoTouchPadHaki or 
               getgenv().AutoRipIndra or 
               getgenv().AutoSoulReaper or 
               getgenv().AutoDoughKing or 
               getgenv().AutoDarkbeard or 
               getgenv().DojoClaimQuest or 
               getgenv().DragonTalonUpgrade or 
               getgenv().BlazeEmberFarm or 
               getgenv().AutoObservationHakiV2 or 
               getgenv().AutoObservation or 
               getgenv().AutoFarmBoss or 
               getgenv().AutoFarmAllBoss or 
               getgenv().Auto_Dungeon or 
               getgenv().SailBoat or 
               getgenv().RelzFishBoat or 
               getgenv().RelzPirateBrigade or 
               getgenv().RelzPirateGrandBrigade or 
               getgenv().AutoTerrorshark or 
               getgenv().AutoSeaBest or 
               getgenv().AutoFrozenDimension or 
               getgenv().KillLevi or
               getgenv().UpgradeRaceV2 or
               getgenv().AutoCyborg or
               getgenv().AutoGhoul or
               getgenv().QuestTrain_2 or
               getgenv().TeleportMigare or
               getgenv().Tweentohighestpoint or
               getgenv().TeleportToGear or
               getgenv().AutoTrialRace or
               getgenv().AutoKillPlayerAfterTrial or
               getgenv().AutoRainbowHaki or
               getgenv().AutoSkullGuitar or
               getgenv().AutoGetCDK or
               getgenv().AutoTushita or
               getgenv().AutoSaber or
               getgenv().TeleportPlayer
            then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    local lastCall = 0
    local callInterval = 1
    while wait() do
        if (getgenv().AutoFarm or getgenv().Kill_Trial_V4) and tick() - lastCall > callInterval then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
            end)
            lastCall = tick()
        end
    end
end)
spawn(function()
    local lastPosUpdate = tick()
    while task.wait(0.1) do
        if getgenv().AutoSeaBest and CheckSeaBeast() then
            local currentTime = tick()
            if currentTime - lastPosUpdate >= 0.5 then
                Pos = CFrame.new(math.random(-600, 600), math.random(0, 300), math.random(-600, 600))
                lastPosUpdate = currentTime
            end
        end
    end
end)
local player = game.Players.LocalPlayer
local function IsEntityAlive(entity)
    if not entity then return false end
    local humanoid = entity:FindFirstChild("Humanoid")
    return humanoid and humanoid.Health > 0
end
local function GetEnemiesInRange(character, range)
    local enemies = game:GetService("Workspace").Enemies:GetChildren()
    local players = game:GetService("Players"):GetPlayers()
    local targets = {}
    local playerPos = character:GetPivot().Position
    for _, enemy in ipairs(enemies) do
        local rootPart = enemy:FindFirstChild("HumanoidRootPart")
        if rootPart and IsEntityAlive(enemy) then
            local distance = (rootPart.Position - playerPos).Magnitude
            if distance <= range then
                table.insert(targets, enemy)
            end
        end
    end
    for _, otherPlayer in ipairs(players) do
        if otherPlayer ~= player and otherPlayer.Character then
            local rootPart = otherPlayer.Character:FindFirstChild("HumanoidRootPart")
            if rootPart and IsEntityAlive(otherPlayer.Character) then
                local distance = (rootPart.Position - playerPos).Magnitude
                if distance <= range then
                    table.insert(targets, otherPlayer.Character)
                end
            end
        end
    end
    return targets
end
function AttackNoCoolDown()
    local character = player.Character
    if not character then return end
    local equippedWeapon
    for _, item in ipairs(character:GetChildren()) do
        if item:IsA("Tool") then
            equippedWeapon = item
            break
        end
    end
    if not equippedWeapon then return end
    local enemiesInRange = GetEnemiesInRange(character, 60)
    if equippedWeapon:FindFirstChild("LeftClickRemote") then
        local attackCount = 1  
        for _, enemy in ipairs(enemiesInRange) do
            local rootPart = enemy:FindFirstChild("HumanoidRootPart")
            if rootPart then
                local direction = (rootPart.Position - character:GetPivot().Position).Unit
                equippedWeapon.LeftClickRemote:FireServer(direction, attackCount)
                attackCount = attackCount + 1
            end
        end
    else
        local targets, mainTarget = {}, nil
        for _, enemy in ipairs(enemiesInRange) do
            if not enemy:GetAttribute("IsBoat") then
                local head = enemy:FindFirstChild("Head")
                if head then
                    table.insert(targets, { enemy, head })
                    mainTarget = head
                end
            end
        end
        if mainTarget then
            local storage = game:GetService("ReplicatedStorage")
            local attackEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack")
            local hitEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit")
            pcall(function()
                attackEvent:FireServer(0.1)
                hitEvent:FireServer(mainTarget, targets)
            end)
        end
    end
end

local Section = St:AddSection({"Discord"})

St:AddDiscordInvite({
    Name = "Slayer | Community",
    Description = "Join server",
    Logo = "rbxassetid://91062721750487",
    Invite = "https://discord.gg/NJJ7BYgWcd",
})

local Section = St:AddSection({"Server Info"})

local TimeZoneParagraph = St:AddParagraph({"Time Zone", ""})

local function UpdateOS()
    local date = os.date("*t")
    local hour = date.hour % 24
    local ampm = hour < 12 and "AM" or "PM"
    local timezone = string.format(
        "%02i:%02i:%02i %s",
        ((hour - 1) % 12) + 1,
        date.min,
        date.sec,
        ampm
    )

    local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)

    local LocalizationService = game:GetService("LocalizationService")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer

    local code
    if not getgenv().countryRegionCode then
        local success, result = pcall(function()
            return LocalizationService:GetCountryRegionForPlayerAsync(player)
        end)
        code = success and result or "Unknown"
        getgenv().countryRegionCode = code
    else
        code = getgenv().countryRegionCode
    end

    TimeZoneParagraph:SetDesc(datetime.." - "..timezone.." [ "..code.." ]")
end

task.spawn(function()
    while true do
        UpdateOS()
        task.wait(1)
    end
end)

-- ================= TIME =================

local GameTimeParagraph = St:AddParagraph({"Time", ""})

local function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime + 0.5)
    local Hour = math.floor(GameTime / 3600) % 24
    local Minute = math.floor(GameTime / 60) % 60
    local Second = GameTime % 60

    GameTimeParagraph:SetDesc(
        Hour.." Hour (h) "..Minute.." Minute (m) "..Second.." Second (s)"
    )
end

task.spawn(function()
    while true do
        UpdateTime()
        task.wait(1)
    end
end)

Miragecheck = St:AddParagraph({"Mirage Island", "Status: "})
local previousStatus = ""
spawn(function()
    pcall(function()
        while true do
            wait(1)            
            local mirageIslandExists = game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') ~= nil
            local currentStatus = mirageIslandExists and '✅️' or '❌️'
            if currentStatus ~= previousStatus then
                Miragecheck:SetDesc('Status: ' .. currentStatus)
                previousStatus = currentStatus
            end
        end
    end)
end)

Kitsunecheck = St:AddParagraph({"Kitsune Island", "Status: "})
spawn(function()
    local previousStatus = ""
    while task.wait(1) do
        local currentStatus = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") and '✅️' or '❌️'
        if currentStatus ~= previousStatus then
            Kitsunecheck:SetDesc('Status: ' .. currentStatus)
            previousStatus = currentStatus
        end
    end
end)

CPrehistoriccheck = St:AddParagraph({"Prehistoric Island", "Status: "})
task.spawn(function()
    local previousStatus = ""
    while task.wait(1) do
        local currentStatus = game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") and '✅️' or '❌️'
        if currentStatus ~= previousStatus then
            CPrehistoriccheck:SetDesc("Status: " .. currentStatus)
            previousStatus = currentStatus
        end
    end
end)
FrozenIsland = St:AddParagraph({"Frozen Dimension", "Status: "})
spawn(function()
    local previousStatus = ""
    while wait(1) do
        local currentStatus = game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') and '✅️' or '❌️'
        if currentStatus ~= previousStatus then
            FrozenIsland:SetDesc('Status: ' .. currentStatus)
            previousStatus = currentStatus
        end
    end
end)

MobCakePrince= St:AddParagraph({"Dimension Killed", ""})
spawn(function()
    while wait(1) do
        local cakePrince = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
        local killStatus = "Cake Prince: ✅️"
        if string.len(cakePrince) >= 86 then
            local killCount = string.sub(cakePrince, 39, 41)
            killStatus = "Kill: " .. killCount
        end
        MobCakePrince:SetDesc(killStatus)
    end
end)

CheckRip = St:AddParagraph({"Rip_Indra", "Status: "})
spawn(function()
    local previousStatus = ""
    while wait(1) do
        local currentStatus = game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and '✅️' or '❌️'
        if currentStatus ~= previousStatus then
            CheckRip:SetDesc("Status: " .. currentStatus)
            previousStatus = currentStatus
        end
    end
end)

CheckDoughKing = St:AddParagraph({"Dough King", "Status: "})
spawn(function()
    local previousStatus = ""
    while wait(1) do
        local currentStatus = game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") and '✅️' or '❌️'
        if currentStatus ~= previousStatus then
            CheckDoughKing:SetDesc("Status: " .. currentStatus)
            previousStatus = currentStatus
        end
    end
end)

EliteHunter = St:AddParagraph({"Elite Hunter", "Status: "})
spawn(function()
    local previousStatus = ""
    while wait(1) do
        local currentStatus = (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) and '✅️' or '❌️'
        local progress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress")
        if currentStatus ~= previousStatus then
            EliteHunter:SetDesc("Status: " .. currentStatus .. " | Killed: " .. progress)
            previousStatus = currentStatus
        end
    end
end)

FM = St:AddParagraph({"Full Moon", ""})
task.spawn(function()
    while task.wait(1) do
        local moonTextureId = game:GetService("Lighting").Sky.MoonTextureId
        local moonStatus = "Moon: 0/5"
        if moonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
            moonStatus = "Moon: 5/5"
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
            moonStatus = "Moon: 4/5"
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
            moonStatus = "Moon: 3/5"
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
            moonStatus = "Moon: 2/5"
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
            moonStatus = "Moon: 1/5"
        end
        FM:SetDesc(moonStatus)
    end
end)

LegendarySword = St:AddParagraph({"Legendary Sword", "Status: "})
spawn(function()
    local previousStatus = ""
    while wait(1) do
        local swordStatus = "Not Found Legend Swords"
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") then
            swordStatus = "Shisui"
        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2") then
            swordStatus = "Wando"
        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3") then
            swordStatus = "Saddi"
        end
        LegendarySword:SetDesc(swordStatus)
    end
end)

StatusBone = St:AddParagraph({"Bone", ""})
spawn(function()
    while wait(1) do
        StatusBone:SetDesc("You Have: " .. tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check")) .. " Bones")
    end
end)

-------Main----

local Section = Main:AddSection({"Farm"})

getgenv().SelectWeapon = "Melee"

local Dropdown = Main:AddDropdown({
    Name = "Selecionar Armas",
    Description = "",
    Options = {"Melee","Sword","Blox Fruit"},
    Default = "Melee",
    Flag = "SelectWeapon",
    Callback = function(Value)
        getgenv().SelectWeapon = Value
    end
})

task.spawn(function()
    local lastWeapon = nil
    while task.wait(0.5) do
        pcall(function()
            if getgenv().SelectWeapon == lastWeapon then
                return
            end

            lastWeapon = getgenv().SelectWeapon
            local weaponFound = nil

            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.ToolTip == getgenv().SelectWeapon then
                    weaponFound = v.Name
                    break
                end
            end

            if weaponFound then
                getgenv().SelectWeapon = weaponFound
            end
        end)
    end
end)

FarmMode = "Farm Level"

local Dropdown = Main:AddDropdown({
    Name = "Selecionar Modo de Farme",
    Description = "",
    Options = {"Farm Level", "Farm Bone", "Farm Katakuri"},
    Default = "Farm Level",
    Flag = "SelectFarmMode",
    Callback = function(Value)
        FarmMode = Value
    end
})
spawn(function()
    local canRun = true
    local debounceTime = 0.5
    while wait(debounceTime) do
        if getgenv().AutoFarm and FarmMode == "Farm Level" then
            if canRun then
                canRun = false
                spawn(function()
                    local player = game:GetService("Players").LocalPlayer
                    local questTitle = player.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    local questVisible = player.PlayerGui.Main.Quest.Visible
                    local humanoidRoot = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                    if not string.find(questTitle, NameMon) then
                        getgenv().StartMagnet = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if not questVisible then
                        getgenv().StartMagnet = false
                        CheckQuest()
                        if BypassTP then
                            local distance = (humanoidRoot.Position - CFrameQuest.Position).Magnitude
                            if distance > 1500 then
                                BTP(CFrameQuest * CFrame.new(0, 20, 5))
                            elseif distance < 1500 then
                                topos(CFrameQuest)
                            end
                        else
                            topos(CFrameQuest)
                        end
                        if (humanoidRoot.Position - CFrameQuest.Position).Magnitude <= 20 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                        end
                    elseif questVisible then
                        CheckQuest()
                        local enemies = game:GetService("Workspace").Enemies:GetChildren()
                        for _, v in pairs(enemies) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                                if v.Humanoid.Health > 0 and v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat
                                            task.wait(0.1)
                                            AutoHaki()
                                            EquipWeapon(getgenv().SelectWeapon)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            getgenv().StartMagnet = true
                                            sethiddenproperty(player, "SimulationRadius", math.huge)
                                        until not getgenv().AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                                    else
                                        getgenv().StartMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    end
                end)
                task.wait(0.5)
                canRun = true
            end
        end
    end
end)
local Bone = {
    ["Reborn Skeleton"] = CFrame.new(-8769.58984, 142.13063, 6055.27637),
    ["Living Zombie"] = CFrame.new(-10156.4531, 138.652481, 5964.5752),
    ["Demonic Soul"] = CFrame.new(-9525.17188, 172.13063, 6152.30566),
    ["Posessed Mummy"] = CFrame.new(-9570.88281, 5.81831884, 6187.86279)
}
spawn(function()
    while task.wait(0.2) do
        if getgenv().BonesBring then
            pcall(function()
                for _, v in ipairs(game.Workspace.Enemies:GetChildren()) do
                    if Bone[v.Name] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                        v.HumanoidRootPart.CFrame = Bone[v.Name]
                        v.Head.CanCollide = false
                        v.Humanoid.Sit = false
                        v.Humanoid:ChangeState(11)
                        task.wait(0.1)
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        local animator = v.Humanoid:FindFirstChild("Animator")
                        if animator then
                            animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end)
        end
    end
end)
BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
spawn(function()
    while wait(0.1) do
        if FarmMode == "Farm Bone" and getgenv().AutoFarm and World3 then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies:GetChildren()
                local foundEnemy = false
                for _, v in pairs(enemies) do
                    if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            foundEnemy = true
                            repeat wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                getgenv().BonesBring = true
                                topos(v.HumanoidRootPart.CFrame * Pos)
                            until not getgenv().AutoFarm or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end                
                if not foundEnemy then
                    if BypassTP then
                        local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        if (playerPos - BonePos.Position).Magnitude > 1500 then
                            BTP(BonePos)
                        else
                            topos(BonePos)
                        end
                    else
                        topos(BonePos)
                    end
                    UnEquipWeapon(getgenv().SelectWeapon)
                    getgenv().BonesBring = false
                    topos(CFrame.new(-9515, 164, 5786))                    
                    for _, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end
            end)
        end
    end
end)
local Cake = {
    ["Cookie Crafter"] = CFrame.new(-2333.28052, 37.8239059, -12093.2861),
    ["Cake Guard"] = CFrame.new(-1575.56433, 37.8238907, -12416.2529),
    ["Baking Staff"] = CFrame.new(-1872.35742, 37.8239517, -12899.4248),
    ["Head Baker"] = CFrame.new(-2223.1416, 53.5283203, -12854.752)
}
spawn(function()
    while task.wait(0.2) do
        if getgenv().CakeBring then
            pcall(function()
                for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if Cake[v.Name] then
                        local targetCFrame = Cake[v.Name]
                        if targetCFrame then
                            v.HumanoidRootPart.CFrame = targetCFrame
                        end
                        v.Head.CanCollide = false
                        v.Humanoid.Sit = false
                        v.Humanoid:ChangeState(11)
                        task.wait(0.1)
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        if v.Humanoid:FindFirstChild('Animator') then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait(0.1) do
        if FarmMode == "Farm Katakuri" and getgenv().AutoFarm and World3 then
            pcall(function()
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")                
                if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if getgenv().AutoFarm and v.Name == "Cake Prince" 
                                and v:FindFirstChild("HumanoidRootPart") 
                                and v:FindFirstChild("Humanoid") 
                                and v.Humanoid.Health > 0 then                                
                                repeat 
                                    game:GetService("RunService").Heartbeat:wait()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                until not getgenv().AutoFarm or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 
                            and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position 
                            - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then                            
                            topos(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") 
                        or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") 
                        or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") 
                        or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then                        
                        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" 
                                    or v.Name == "Baking Staff" or v.Name == "Head Baker") 
                                    and v:FindFirstChild("HumanoidRootPart") 
                                    and v:FindFirstChild("Humanoid") 
                                    and v.Humanoid.Health > 0 then                                    
                                    repeat 
                                        game:GetService("RunService").Heartbeat:wait()
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        getgenv().CakeBring = true
                                    until not getgenv().AutoFarm or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        local CakePos = CFrame.new(-2077, 252, -12373)
                        if BypassTP then
                            BTP(CakePos)
                        else
                            topos(CakePos)
                        end
                    end
                end
            end)
        end
    end
end)
local Toggle1 = Main:AddToggle({
  Name = "Start Farm",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoFarm = Value
    StopTween(getgenv().AutoFarm)
end)

-- garante PosY
PosY = PosY or 0

-- posição usada no ataque
Pos = CFrame.new(0, PosY, 0)

-- TP wrapper
function TP1(cf)
    if cf then
        topos(cf)
    end
end

task.spawn(function()
    while task.wait(0.1) do
        if _G.SpinPos then
            Pos = CFrame.new(0, PosY, -20)
            task.wait(0.1)

            Pos = CFrame.new(-20, PosY, 0)
            task.wait(0.1)

            Pos = CFrame.new(0, PosY, 20)
            task.wait(0.1)

            Pos = CFrame.new(20, PosY, 0)
        else
            Pos = CFrame.new(0, PosY, 0)
        end
    end
end)


local Toggle1 = Main:AddToggle({
  Name = "Auto Level",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoFarm = Value
    StopTween(getgenv().AutoFarm)
end)


spawn(function()
    while task.wait(0.5) do
        if getgenv().AutoFarm then
            pcall(function()
                
                CheckQuest()

                local player = game:GetService("Players").LocalPlayer
                local humanoidRoot = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

                if not humanoidRoot then return end
                
                local questGui = player.PlayerGui.Main.Quest
                local questVisible = questGui.Visible
                local questTitle = questGui.Container.QuestTitle.Title.Text
                
                -- Se a quest for diferente → abandona
                if not string.find(questTitle, NameMon) then
                    getgenv().StartMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end

                -- Se não tiver quest ativa → inicia
                if not questVisible then
                    
                    getgenv().StartMagnet = false
                    CheckQuest()

                    local distance = (humanoidRoot.Position - CFrameQuest.Position).Magnitude
                    
                    if distance > 1500 then                           -- Teleporte anti-kick
                        TP1(CFrameQuest * CFrame.new(0, 25, 5))
                    else
                        TP1(CFrameQuest)                             -- Tp normal
                    end

                    -- Quando chegar no NPC → inicia quest
                    if (humanoidRoot.Position - CFrameQuest.Position).Magnitude < 20 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end

                else -- Se já tiver quest → ir matar NPCs
                    
                    for _, mob in pairs(workspace.Enemies:GetChildren()) do
                        if mob:FindFirstChild("HumanoidRootPart") and 
                           mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 and 
                           mob.Name == Mon then
            
                            repeat task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)

                                -- Tp para o mob
                                topos(mob.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))

                                mob.HumanoidRootPart.CanCollide = false
                                mob.Humanoid.WalkSpeed = 0
                                mob.Head.CanCollide = false
                                getgenv().StartMagnet = true
                                
                                sethiddenproperty(player, "SimulationRadius", math.huge)

                                ------------------------------------------------

                            until not getgenv().AutoFarm or mob.Humanoid.Health <= 0 or not mob.Parent or not questGui.Visible
                        end
                    end
                end
            end)
        end
    end
end)


local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")

_G.AutoFarmSkyPiea = false

local Toggle1 = Main:AddToggle({
    Name = "Auto Farm Sky Piea 1-75",
    Description = "",
    Default = false
})

Toggle1:Callback(function(Value)
    _G.AutoFarmSkyPiea = Value
end)

local SafeHeight = 40 -- altura segura acima do mob
local OffsetBehind = Vector3.new(0, 0, -4) -- ligeiramente atrás do mob

-- Função principal
task.spawn(function()
    while task.wait(0.03) do -- ~30 vezes por segundo
        if _G.AutoFarmSkyPiea then
            pcall(function()
                local Player = Players.LocalPlayer
                local Char = Player.Character or Player.CharacterAdded:Wait()
                local HRP = Char:WaitForChild("HumanoidRootPart")
                local Humanoid = Char:WaitForChild("Humanoid")
                local MyLevel = Player.Data.Level.Value

                -- Define alvo e spawn pelo nível
                local Target
                local SpawnPosition

                if MyLevel >= 1 and MyLevel <= 50 then
                    Target = "Sky Bandit"
                    SpawnPosition = Vector3.new(-4953.207, 295.744, -2899.229)
                elseif MyLevel > 50 and MyLevel <= 75 then
                    Target = "Shanda"
                    SpawnPosition = Vector3.new(
                        -7678.48974609375, 
                        5566.40380859375, 
                        -497.2156066894531
                    )
                else
                    return
                end

                local EnemiesFolder = workspace:FindFirstChild("Enemies")
                if not EnemiesFolder then return end

                -- Coleta mobs válidos
                local mobs = {}
                for _, mob in pairs(EnemiesFolder:GetChildren()) do
                    if mob.Name == Target
                        and mob:FindFirstChild("Humanoid")
                        and mob:FindFirstChild("HumanoidRootPart")
                        and mob.Humanoid.Health > 0 then
                        table.insert(mobs, mob)
                    end
                end

                if #mobs == 0 then
                    -- Vai ao spawn
                    Humanoid.PlatformStand = true
                    HRP.CFrame = CFrame.new(SpawnPosition + Vector3.new(0, SafeHeight, 0))
                else
                    -- Ataca o primeiro mob
                    local mob = mobs[1]
                    local mobHRP = mob.HumanoidRootPart

                    repeat
                        task.wait(0.03)

                        -- Posição segura atrás + altura
                        HRP.CFrame = mobHRP.CFrame * CFrame.new(
                            OffsetBehind + Vector3.new(0, SafeHeight, 0)
                        )

                        Humanoid.PlatformStand = true

                        -- Trava mob
                        mobHRP.CanCollide = false
                        mob.Humanoid.WalkSpeed = 0
                        mob.Humanoid.JumpPower = 0

                        -- PULL de mobs do mesmo tipo
                        for _, otherMob in pairs(EnemiesFolder:GetChildren()) do
                            if otherMob ~= mob
                                and otherMob.Name == Target
                                and otherMob:FindFirstChild("Humanoid")
                                and otherMob:FindFirstChild("HumanoidRootPart")
                                and otherMob.Humanoid.Health > 0 then
                                pcall(function()
                                    otherMob.HumanoidRootPart.CFrame = mobHRP.CFrame
                                end)
                            end
                        end

                        -- Ataque
                        VirtualUser:ClickButton1(Vector2.new(), workspace.CurrentCamera.CFrame)

                    until not _G.AutoFarmSkyPiea
                        or not mob.Parent
                        or mob.Humanoid.Health <= 0

                    -- Libera player após kill
                    Humanoid.PlatformStand = false
                end
            end)
        end
    end
end)
local Section = Main:AddSection({"Candy"})

local Toggle1 = Main:AddToggle({
  Name = "Auto Candy",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoFarm = Value
    StopTween(getgenv().AutoFarm)
end)


spawn(function()
    while task.wait(0.5) do
        if getgenv().AutoFarm then
            pcall(function()
                
                CheckQuest()

                local player = game:GetService("Players").LocalPlayer
                local humanoidRoot = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

                if not humanoidRoot then return end
                
                local questGui = player.PlayerGui.Main.Quest
                local questVisible = questGui.Visible
                local questTitle = questGui.Container.QuestTitle.Title.Text
                
                -- Se a quest for diferente → abandona
                if not string.find(questTitle, NameMon) then
                    getgenv().StartMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end

                -- Se não tiver quest ativa → inicia
                if not questVisible then
                    
                    getgenv().StartMagnet = false
                    CheckQuest()

                    local distance = (humanoidRoot.Position - CFrameQuest.Position).Magnitude
                    
                    if distance > 1500 then                           -- Teleporte anti-kick
                        TP1(CFrameQuest * CFrame.new(0, 25, 5))
                    else
                        TP1(CFrameQuest)                             -- Tp normal
                    end

                    -- Quando chegar no NPC → inicia quest
                    if (humanoidRoot.Position - CFrameQuest.Position).Magnitude < 20 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end

                else -- Se já tiver quest → ir matar NPCs
                    
                    for _, mob in pairs(workspace.Enemies:GetChildren()) do
                        if mob:FindFirstChild("HumanoidRootPart") and 
                           mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 and 
                           mob.Name == Mon then
            
                            repeat task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)

                                -- Tp para o mob
                                topos(mob.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))

                                mob.HumanoidRootPart.CanCollide = false
                                mob.Humanoid.WalkSpeed = 0
                                mob.Head.CanCollide = false
                                getgenv().StartMagnet = true
                                
                                sethiddenproperty(player, "SimulationRadius", math.huge)

                                ------------------------------------------------

                            until not getgenv().AutoFarm or mob.Humanoid.Health <= 0 or not mob.Parent or not questGui.Visible
                        end
                    end
                end
            end)
        end
    end
end)

Main:AddButton({
    Name = "TP Ilha",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()
        local hrp = char:WaitForChild("HumanoidRootPart")

        local cf = CFrame.new(
            -1014.4241943359375,
            149.11068725585938,
            -14555.962890625
        )

        for i = 1, 5 do
            hrp.CFrame = cf
            task.wait(0.1)
        end
    end
})


local Section = Main:AddSection({"Material"})

local MaterialList = {}

if World1 then
    MaterialList = {"Leather + Scrap Metal", "Angel Wings", "Magma Ore", "Fish Tail"}
elseif World2 then
    MaterialList = {
        "Leather + Scrap Metal",
        "Radioactive Material",
        "Ectoplasm",
        "Mystic Droplet",
        "Magma Ore",
        "Vampire Fang"
    }
elseif World3 then
    MaterialList = {
        "Leather + Scrap Metal",
        "Demonic Wisp",
        "Conjured Cocoa",
        "Dragon Scale",
        "Gunpowder",
        "Fish Tail",
        "Mini Tusk"
    }
end

getgenv().SelectMaterial = MaterialList[1]

local Dropdown = Main:AddDropdown({
    Name = "Selecionar Material",
    Description = "",
    Options = MaterialList,
    Default = MaterialList[1],
    Flag = "SelectMaterial",
    Callback = function(Value)
        getgenv().SelectMaterial = Value
    end
})

local Toggle1 = Main:AddToggle({
  Name = "Auto Material",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoMaterial = Value
    if not Value then StopTween() end
end)
spawn(function()
    local function processEnemy(v, EnemyName)
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            if v.Name == EnemyName then
                repeat
                    task.wait(0.1)
                    AutoHaki()
                    EquipWeapon(getgenv().SelectWeapon)
                    v.HumanoidRootPart.CanCollide = false
                    v.Humanoid.WalkSpeed = 0
                    v.Head.CanCollide = false
                    topos(v.HumanoidRootPart.CFrame * Pos)
                    getgenv().StartMagnet = true
                    MonFarm = v.Name
                    PosMon = v.HumanoidRootPart.CFrame
                until not getgenv().AutoMaterial or not v.Parent or v.Humanoid.Health <= 0
                UnEquipWeapon(getgenv().SelectWeapon)
            end
        end
    end
    local function handleEnemySpawns()
        for _, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
            for _, EnemyName in ipairs(MMon) do
                if string.find(v.Name, EnemyName) then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
                        topos(v.CFrame * Pos)
                    end
                end
            end
        end
    end
    while task.wait(0.1) do
        if getgenv().AutoMaterial then
            pcall(function()
                if getgenv().SelectMaterial then
                    MaterialMon(getgenv().SelectMaterial)
                    topos(MPos)
                end
                for _, EnemyName in ipairs(MMon) do
                    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        processEnemy(v, EnemyName)
                    end
                end
                handleEnemySpawns()
            end)
        end
    end
end)

local Section = Main:AddSection({"Boss"})

local tableBoss = {}

if World1 then
    tableBoss = {
        "The Gorilla King", "Bobby", "Yeti", "Mob Leader", "Vice Admiral", 
        "Warden", "Chief Warden", "Swan", "Magma Admiral", "Fishman Lord", 
        "Wysper", "Thunder God", "Cyborg", "Saber Expert"
    }
elseif World2 then
    tableBoss = {
        "Diamond", "Jeremy", "Fajita", "Don Swan", "Smoke Admiral", 
        "Cursed Captain", "Darkbeard", "Order", "Awakened Ice Admiral", "Tide Keeper"
    }
elseif World3 then
    tableBoss = {
        "Stone", "Hydra Leader", "Kilo Admiral", "Captain Elephant", 
        "Beautiful Pirate", "rip_indra True Form", "Longma", "Soul Reaper", 
        "Cake Queen", "Cake Prince", "Dough King"
    }
end

getgenv().SelectBoss = tableBoss[1]

local Dropdown = Main:AddDropdown({
    Name = "Selecionar Boss",
    Description = "",
    Options = tableBoss,
    Default = tableBoss[1],
    Flag = "SelectBoss",
    Callback = function(Value)
        getgenv().SelectBoss = Value
    end
})

local Toggle1 = Main:AddToggle({
  Name = "Auto Matar Boss",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoFarmBoss = Value
    StopTween(getgenv().AutoFarmBoss)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoFarmBoss and getgenv().BypassTP then
            pcall(function()
                local workspaceEnemies = game:GetService("Workspace").Enemies
                local selectBoss = getgenv().SelectBoss
                local selectWeapon = getgenv().SelectWeapon
                local playerRoot = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local boss = workspaceEnemies:FindFirstChild(selectBoss)
                if boss then
                    for _, v in pairs(workspaceEnemies:GetChildren()) do
                        if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            local humanoid = v.Humanoid
                            local humanoidRootPart = v.HumanoidRootPart
                            if humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    if humanoidRootPart.CanCollide then
                                        humanoidRootPart.CanCollide = false
                                    end
                                    if humanoid.WalkSpeed ~= 0 then
                                        humanoid.WalkSpeed = 0
                                    end
                                    if humanoidRootPart.Size ~= Vector3.new(80, 80, 80) then
                                        humanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    end
                                    topos(humanoidRootPart.CFrame * Pos)
                                until not getgenv().AutoFarmBoss or not v.Parent or humanoid.Health <= 0
                            end
                        end
                    end
                elseif game.ReplicatedStorage:FindFirstChild(selectBoss) then
                    local bossReplicated = game.ReplicatedStorage:FindFirstChild(selectBoss)
                    local bossRoot = bossReplicated.HumanoidRootPart
                    if (bossRoot.CFrame.Position - playerRoot.Position).Magnitude <= 1500 then
                        topos(bossRoot.CFrame)
                    else
                        BTP(bossRoot.CFrame)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoFarmBoss and not getgenv().BypassTP then
            pcall(function()
                local workspaceEnemies = game:GetService("Workspace").Enemies
                local selectBoss = getgenv().SelectBoss
                local selectWeapon = getgenv().SelectWeapon
                local boss = workspaceEnemies:FindFirstChild(selectBoss)
                if boss then
                    for _, v in pairs(workspaceEnemies:GetChildren()) do
                        if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            local humanoid = v.Humanoid
                            local humanoidRootPart = v.HumanoidRootPart
                            if humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    if humanoidRootPart.CanCollide then
                                        humanoidRootPart.CanCollide = false
                                    end
                                    if humanoid.WalkSpeed ~= 0 then
                                        humanoid.WalkSpeed = 0
                                    end
                                    if humanoidRootPart.Size ~= Vector3.new(80, 80, 80) then
                                        humanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    end
                                    topos(humanoidRootPart.CFrame * Pos)
                                until not getgenv().AutoFarmBoss or not v.Parent or humanoid.Health <= 0
                            end
                        end
                    end
                else
                    local replicatedBoss = game:GetService("ReplicatedStorage"):FindFirstChild(selectBoss)
                    if replicatedBoss then
                        topos(replicatedBoss.HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                    end
                end
            end)
        end
    end
end)
local Toggle1 = Main:AddToggle({
  Name = "Auto Matar Todos Os Boss",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoFarmAllBoss = Value
    StopTween(getgenv().AutoFarmAllBoss)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoFarmAllBoss then
            pcall(function()
                for i, boss in pairs(tableBoss) do
                    if game:GetService("Workspace").Enemies:FindFirstChild(boss) then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == boss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not getgenv().AutoFarmAllBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(boss) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(boss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                        end
                    end
                end
            end)
        end
    end
end)

local Section = Main:AddSection({"Maestria"})

Main:AddSlider({
  Name = "Selecionar Vida [ % ]",
  Min = 0,
  Max = 100,
  Increase = 1,
  Default = 30,
  Callback = function(Value)
         getgenv().Kill_At = Value 
  end
})

FarmMode2 = "Blox Fruit"

local Dropdown = Main:AddDropdown({
    Name = "Selecionar Arma No Farme",
    Description = "",
    Options = {"Blox Fruit", "Gun"},
    Default = "Blox Fruit",
    Flag = "FarmModeMastery",
    Callback = function(Value)
        FarmMode2 = Value
    end
})
spawn(function()
    while task.wait() do
        if FarmMode2 == "Blox Fruit" and getgenv().MasteryFarm then
            pcall(function()
                QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    UseSkill = false
                    Skillaimbot = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    UseSkill = false
                    CheckQuest()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
                            BTP(CFrameQuest)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 2000 then
                            topos(CFrameQuest)
                        else
                            topos(CFrameQuest)
                        end
                    end
                    repeat task.wait()
                        topos(CFrameQuest)
                    until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not getgenv().MasteryFarm
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        wait(0.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                        wait(0.1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        HealthMs = v.Humanoid.MaxHealth * getgenv().Kill_At / 100
                                        repeat task.wait()
                                            if v.Humanoid.Health <= HealthMs then
                                                AutoHaki()
                                                EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))
                                                v.HumanoidRootPart.CanCollide = false
                                                PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                UseSkill = true
                                                Skillaimbot = true
                                            else
                                                UseSkill = false
                                                Skillaimbot = false
                                                AutoHaki()
                                                EquipWeapon(getgenv().SelectWeapon)
                                                MonFarm = v.Name
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.CanCollide = false
                                                PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                            end
                                            getgenv().StartMagnet = true
                                        until not getgenv().MasteryFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        UseSkill = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        topos(CFrameMon)
                        UseSkill = false
                        Skillaimbot = false
                        Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon)

                        if Mob then
                            topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10))
                        else
                            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                task.wait()
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait() do
        if UseSkill then
            pcall(function()
                CheckQuest()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                        MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                        MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                        if getgenv().SkillZ then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                        end
                        if getgenv().SkillX then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                        end
                        if getgenv().SkillC then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                        end
                        if getgenv().SkillV then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
                        end
                        if getgenv().SkillF then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if UseSkill then
                for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                    if v.Name == "NotificationTemplate" then
                        if string.find(v.Text, "Skill locked!") then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    pcall(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if UseSkill then
                local args = {
                    [1] = PosMonMasteryFruit.Position
                }
                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
            end
        end)
    end)
end)    
spawn(function()
    pcall(function()
        while task.wait() do
            if FarmMode2 == "Gun" and getgenv().MasteryFarm then
                QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then                      
                    Skillaimbot = false          
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    CheckQuest()
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
						        BTP(CFrameQuest)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 2000 then
                                topos(CFrameQuest)
                            else
                                topos(CFrameQuest)
                            end
                        else                                 
                             topos(CFrameQuest)
                        end
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        task.wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Mon then
                                    repeat task.wait()
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMin = v.Humanoid.MaxHealth * getgenv().Kill_At/100
                                            if v.Humanoid.Health <= HealthMin then
                                                EquipWeapon(SelectWeaponGun)
                                                Skillaimbot = true
                                                AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                                AimBotSkillPosition = AimSkill.Position
                                                MonFarm = v.Name                
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                                v.Head.CanCollide = false                                                
                                                local args = {
                                                    [1] = v.HumanoidRootPart.Position,
                                                    [2] = v.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                                task.wait(.1)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                task.wait(.1)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            else
                                                AutoHaki()
                                                EquipWeapon(getgenv().SelectWeapon)
                                                MonFarm = v.Name                
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false    
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            getgenv().StartMagnet = true 
                                            PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                        else
                                            getgenv().StartMagnet = true 
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until v.Humanoid.Health <= 0 or not getgenv().MasteryFarm or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end)
                    else
                       topos(CFrameMon)
                        Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                        if Mob then
                            topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                        else
                            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                task.wait()
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end 
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        if getgenv().MasteryFarm then
            while task.wait() do
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end
    end)
end)
local plr = game:GetService("Players").LocalPlayer
spawn(function()
     pcall(function()
         while task.wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then 
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

local Toggle1 = Main:AddToggle({
  Name = "Auto Farme Maestria",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
     getgenv().MasteryFarm = Value
     StopTween(getgenv().MasteryFarm)
end)

local Toggle1 = Main:AddToggle({
  Name = "Skill Z",
  Description = "",
  Default = true 
})
Toggle1:Callback(function(Value)
    getgenv().SkillZ = Value
end)

local Toggle1 = Main:AddToggle({
  Name = "Skill X",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().SkillX = Value
end)

local Toggle1 = Main:AddToggle({
  Name = "Skill C",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().SkillC = Value 
end)

local Toggle1 = Main:AddToggle({
  Name = "Skill V",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().SkillV = Value
end)

local Toggle1 = Main:AddToggle({
  Name = "Skill F",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().SkillF = Value
end)

------Sub-------

-- só cria o toggle se estiver no World2
if World2 then
    local Toggle1 = Sub:AddToggle({
        Name = "Auto Factory",
        Description = "Ativa Auto Factory apenas no Sea 2",
        Default = false
    })  

    Toggle1:Callback(function(Value)
        getgenv().AutoFactory = Value
        StopTween(getgenv().AutoFactory)
    end)

    -- loop de execução
    task.spawn(function()
        while task.wait(0.1) do
            if getgenv().AutoFactory then
                local enemies = game:GetService("Workspace").Enemies
                local coreEnemy = enemies:FindFirstChild("Core")
                
                if coreEnemy and coreEnemy:FindFirstChild("Humanoid") and coreEnemy.Humanoid.Health > 0 then
                    repeat
                        task.wait(0.1)
                        AutoHaki()  
                        EquipWeapon(getgenv().SelectWeapon)  

                        if coreEnemy:FindFirstChild("HumanoidRootPart") then
                            topos(coreEnemy.HumanoidRootPart.CFrame)
                        end
                    until not coreEnemy or coreEnemy.Humanoid.Health <= 0 or not getgenv().AutoFactory
                else
                    topos(CFrame.new(448.46756, 199.356781, -441.389252))
                end
            end
        end
    end)
end


-- Auto Raid Pirata (somente Sea 3)
if World3 then
    local Toggle1 = Sub:AddToggle({
        Name = "Auto Raid Pirata",
        Description = "",
        Default = false 
    })

    Toggle1:Callback(function(Value)
        getgenv().AutoPirateRaid = Value
        StopTween(getgenv().AutoPirateRaid)
    end)

    task.spawn(function()
        while task.wait(0.1) do
            -- só executa se AutoPirateRaid estiver ativo e World3 existir
            if getgenv().AutoPirateRaid and World3 then
                pcall(function()
                    local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027)
                    local player = game.Players.LocalPlayer
                    local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")            
                    if not humanoidRootPart then return end

                    local distanceToBoss = (CFrame.new(-5539.311, 313.801, -2972.372).Position - humanoidRootPart.Position).Magnitude

                    if distanceToBoss <= 500 then
                        for _, enemy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if getgenv().AutoPirateRaid and enemy:FindFirstChild("HumanoidRootPart") and enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
                                local enemyDistance = (enemy.HumanoidRootPart.Position - humanoidRootPart.Position).Magnitude
                                if enemyDistance < 2000 then
                                    repeat 
                                        task.wait(0.1)
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        if enemy:FindFirstChild("HumanoidRootPart") then
                                            enemy.HumanoidRootPart.CanCollide = false
                                            -- Teleporta 20 studs acima do inimigo
                                            topos(enemy.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                                        end
                                        getgenv().StartMagnet = true
                                    until not enemy.Parent or enemy.Humanoid.Health <= 0 or not getgenv().AutoPirateRaid
                                end
                            end
                        end
                    else
                        UnEquipWeapon(getgenv().SelectWeapon)

                        if BypassTP then
                            local distanceToCFrameBoss = (humanoidRootPart.Position - CFrameBoss.Position).Magnitude
                            if distanceToCFrameBoss > 1500 then
                                BTP(CFrameBoss)
                            else
                                topos(CFrameBoss)
                            end
                        end

                        topos(CFrame.new(-5122, 315, -2963))
                    end
                end)
            end
        end
    end)
end

-- Section "Elite Hunter" somente no Sea 3 (World3)
if World3 then
    local Section = Sub:AddSection({"Elite Hunter"})
end

if World3 then
local Toggle1 = Sub:AddToggle({
  Name = "Auto Elite Hunter",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    getgenv().AutoEliteHunter = Value
    StopTween(getgenv().AutoEliteHunter) 
end)
end

if World3 then 
local Toggle1 = Sub:AddToggle({
  Name = "Hop Server Elite Hunter",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoEliteHunterHop = Value
end)
spawn(function()
    while task.wait(0.3) do
        if getgenv().AutoEliteHunter and World3 then
            pcall(function()
                local player = game:GetService("Players").LocalPlayer
                local questGui = player.PlayerGui.Main.Quest
                if questGui.Visible == true then
                    local questTitle = questGui.Container.QuestTitle.Title.Text
                    local eliteNames = {"Diablo", "Deandre", "Urban"}
                    local foundEnemy = false                    
                    for _, enemy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if table.find(eliteNames, enemy.Name) and 
                           enemy:FindFirstChild("Humanoid") and 
                           enemy:FindFirstChild("HumanoidRootPart") and 
                           enemy.Humanoid.Health > 0 then                            
                            foundEnemy = true
                            repeat
                                task.wait(0.2)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                if enemy:FindFirstChild("HumanoidRootPart") then
                                    enemy.HumanoidRootPart.CanCollide = false
                                    enemy.Humanoid.WalkSpeed = 0
                                    topos(enemy.HumanoidRootPart.CFrame * Pos)
                                end
                            until not getgenv().AutoEliteHunter or enemy.Humanoid.Health <= 0 or not enemy.Parent
                            break
                        end
                    end
                    if not foundEnemy then
                        for _, name in pairs(eliteNames) do
                            local enemy = game:GetService("ReplicatedStorage"):FindFirstChild(name)
                            if enemy and enemy:FindFirstChild("HumanoidRootPart") then
                                topos(enemy.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                break
                            end
                        end
                    end
                else
                    local response = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter")
                    if getgenv().AutoEliteHunterHop and response == "I don't have anything for you right now. Come back later." then
                        Hop()
                    end
                end
            end)
        end
    end
end)
end

if World3 then 
local Section = Sub:AddSection({"Ossos"})
end

if World3 then 
local Paragraph = Sub:AddParagraph({"Farma Osso", "Se Você for Farma Osso Vai na aba Main e muda O modo de Farme Pra bone e Start farm"})
end

-- Toggle para AutoFarm Bone (sem dropdown)
if World3 then  -- só cria o toggle se estiver no Sea 3
    local ToggleBones = Sub:AddToggle({
        Name = "Auto Farm Bone",
        Description = "Ativa o farm de Reborn Skeleton, Living Zombie, Demonic Soul e Posessed Mummy",
        Default = false
    })

    ToggleBones:Callback(function(Value)
        getgenv().AutoFarmBone = Value
    end)

    -- =========================
    -- Posições dos inimigos
    -- =========================
    local Bone = {
        ["Reborn Skeleton"] = CFrame.new(-8769.58984, 142.13063, 6055.27637),
        ["Living Zombie"] = CFrame.new(-10156.4531, 138.652481, 5964.5752),
        ["Demonic Soul"] = CFrame.new(-9525.17188, 172.13063, 6152.30566),
        ["Posessed Mummy"] = CFrame.new(-9570.88281, 5.81831884, 6187.86279)
    }

    local BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)

    -- =========================
    -- Loop unificado de AutoFarm
    -- =========================
    spawn(function()
        while task.wait(0.1) do
            if getgenv().AutoFarmBone and World3 then
                pcall(function()
                    local enemies = game.Workspace.Enemies:GetChildren()
                    local foundEnemy = false

                    for _, mob in pairs(enemies) do
                        if Bone[mob.Name] and mob:FindFirstChild("Humanoid") and mob:FindFirstChild("HumanoidRootPart") and mob.Humanoid.Health > 0 then
                            foundEnemy = true

                            -- Puxar inimigo para você
                            mob.HumanoidRootPart.CFrame = Bone[mob.Name]
                            mob.Head.CanCollide = false
                            mob.Humanoid.Sit = false
                            mob.Humanoid:ChangeState(11)
                            task.wait(0.1)
                            mob.Humanoid:ChangeState(14)
                            mob.HumanoidRootPart.CanCollide = false
                            mob.Humanoid.JumpPower = 0
                            mob.Humanoid.WalkSpeed = 0
                            local animator = mob.Humanoid:FindFirstChild("Animator")
                            if animator then animator:Destroy() end
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)

                            -- Atacar inimigo
                            repeat
                                task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                mob.HumanoidRootPart.CanCollide = false
                                mob.Humanoid.WalkSpeed = 0
                                mob.Head.CanCollide = false
                                getgenv().BonesBring = true
                                -- Teleporta 20 studs acima do inimigo
                                topos(mob.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                            until not getgenv().AutoFarmBone or not mob.Parent or mob.Humanoid.Health <= 0
                        end
                    end

                    -- Se nenhum inimigo encontrado, vai para posição padrão
                    if not foundEnemy then
                        if BypassTP then
                            local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                            if (playerPos - BonePos.Position).Magnitude > 1500 then
                                BTP(BonePos)
                            else
                                topos(BonePos)
                            end
                        else
                            topos(BonePos)
                        end

                        UnEquipWeapon(getgenv().SelectWeapon)
                        getgenv().BonesBring = false
                        topos(CFrame.new(-9515, 164, 5786))

                        for _, mob in pairs(game.ReplicatedStorage:GetChildren()) do
                            if Bone[mob.Name] then
                                topos(mob.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            end
                        end
                    end
                end)
            end
        end
    end)
end

if World3 then 
local Toggle1 = Sub:AddToggle({
  Name = "Auto Tente a sorte",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoTryLuck = Value
    StopTween(getgenv().AutoTryLuck)  
end)
spawn(function()
    while wait(0.5) do
        if getgenv().AutoTryLuck and World3 then    
            local targetPos = CFrame.new(-8652.99707, 143.450119, 6170.50879)
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - targetPos.Position).magnitude > 5 then
                topos(targetPos)
                wait(0.5)
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
        end
    end
end)
end

if World3 then 
local Toggle1 = Sub:AddToggle({
  Name = "Auto Oração",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoPray = Value
    StopTween(getgenv().AutoPray) 
end)
spawn(function()
    while wait(0.5) do
        if getgenv().AutoPray and World3 then    
            local targetPos = CFrame.new(-8652.99707, 143.450119, 6170.50879)
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - targetPos.Position).magnitude > 5 then
                topos(targetPos)
                wait(0.5)
            end
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1)
            end)
        end
    end
end)
end

if World3 then
local Katakuri = Sub:AddSection("Katakuri")
end

if World3 then
local Paragraph = Sub:AddParagraph({"Katakuri V1", "Para matar Katakuri V1 Vai Em Main e Coloca o Modo de farme pra katakuri "})
end

if World3 then
local Toggle1 = Sub:AddToggle({
  Name = "Auto Katakuri V2",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoDoughKing = Value
    StopTween(getgenv().AutoDoughKing) 
end)
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if getgenv().AutoDoughKing and StartCakegetgenv().StartMagnet and 
                   (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and 
                   (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 300 then
                    v.HumanoidRootPart.CFrame = POSCAKE
                    v.HumanoidRootPart.CanCollide = false
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                end
            end
        end)
    end)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoDoughKing and World3 then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or 
                   game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"), "Where") then
                        game.StarterGui:SetCore("SendNotification", {
                            Title = "Notification",
                            Text = "Not Have Enough Material",
                            Icon = "http://www.roblox.com/asset/?id=",
                            Duration = 2.5
                        })
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or 
                       game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 
                                   "Do you want to open the portal now?") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                    else
                        if game.Workspace.Enemies:FindFirstChild("Baking Staff") or 
                           game.Workspace.Enemies:FindFirstChild("Head Baker") or 
                           game.Workspace.Enemies:FindFirstChild("Cake Guard") or 
                           game.Workspace.Enemies:FindFirstChild("Cookie Crafter") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                if (v.Name == "Baking Staff" or v.Name == "Head Baker" or 
                                    v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and 
                                    v.Humanoid.Health > 0 then
                                    repeat
                                        task.wait(0.05)
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        StartCakegetgenv().StartMagnet = true
                                        POSCAKE = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until getgenv().AutoDoughKing == false or 
                                          game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or 
                                          not v.Parent or 
                                          v.Humanoid.Health <= 0
                                end
                            end
                        else
                            StartCakegetgenv().StartMagnet = false
                            topos(CFrame.new(-1820.063, 210.748, -12297.496))
                        end
                    end
                elseif game.ReplicatedStorage:FindFirstChild("Dough King") or 
                       game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                            if v.Name == "Dough King" then
                                repeat
                                    task.wait(0.05)
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                until getgenv().AutoDoughKing == false or 
                                      not v.Parent or 
                                      v.Humanoid.Health <= 0
                            end    
                        end    
                    else
                        topos(CFrame.new(-2009.280, 4532.972, -14937.308))
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or 
                       game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
                    local args = {
                        [1] = "CakeScientist",
                        [2] = "Check"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                else
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or 
                           string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") or 
                           string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or 
                               game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or 
                               game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                        if v:FindFirstChild("Humanoid") and 
                                           v:FindFirstChild("HumanoidRootPart") and 
                                           v.Humanoid.Health > 0 then
                                            repeat
                                                task.wait(0.05)
                                                AutoHaki()
                                                EquipWeapon(getgenv().SelectWeapon)    
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                topos(v.HumanoidRootPart.CFrame * Pos)                                                    
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            until getgenv().AutoDoughKing == false or 
                                                  v.Humanoid.Health <= 0 or 
                                                  not v.Parent or 
                                                  game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or 
                                                  game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
end

if World3 then
local Toggle1 = Sub:AddToggle({
    Name = "Auto Spawn Katakuri V1",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
        "CakePrinceSpawner",
        Value
    )
end)
end

-- Auto Ectoplasm (somente Sea 2)
if World2 then
    local Toggle1 = Sub:AddToggle({
        Name = "Auto Ectoplasm",
        Description = "",
        Default = false
    })

    Toggle1:Callback(function(Value)
        _G.Ectoplasm = Value
    end)

    spawn(function()
        while task.wait(0.1) do
            pcall(function()
                if _G.Ectoplasm then
                    local Enemies = game:GetService("Workspace").Enemies

                    if Enemies:FindFirstChild("Ship Deckhand")
                    or Enemies:FindFirstChild("Ship Engineer")
                    or Enemies:FindFirstChild("Ship Steward")
                    or Enemies:FindFirstChild("Ship Officer") then

                        for _, v in pairs(Enemies:GetChildren()) do
                            if (v.Name == "Ship Steward"
                            or v.Name == "Ship Engineer"
                            or v.Name == "Ship Deckhand"
                            or v.Name == "Ship Officer")
                            and v:FindFirstChild("Humanoid")
                            and v.Humanoid.Health > 0 then

                                repeat
                                    task.wait(0)
                                    AutoHaki()
                                    bringmob = true
                                    EquipTool(SelectWeapon)

                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))

                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false

                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                until not _G.Ectoplasm
                                    or not v.Parent
                                    or v.Humanoid.Health <= 0
                                    or not Enemies:FindFirstChild(v.Name)

                                bringmob = false
                            end
                        end
                    else
                        local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
                        local TargetPos = Vector3.new(904.4072265625, 181.05767822266, 33341.38671875)
                        local Distance = (TargetPos - HRP.Position).Magnitude

                        if Distance > 20000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "requestEntrance",
                                Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                            )
                        end

                        Tween(CFrame.new(TargetPos))
                    end
                end
            end)
        end
    end)
end

local Section = Sub:AddSection({"baú"})

local Toggle1 = Sub:AddToggle({
  Name = "Auto Baú",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoFarmChest = Value 
end)
spawn(function()
    local lastTarget = nil
    while wait(0.2) do
        if getgenv().AutoFarmChest then
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local playerPos = character:GetPivot().Position
            local chestService = game:GetService("CollectionService")
            local chests = chestService:GetTagged("_ChestTagged")
            local closestChest, minDist = nil, math.huge
            for _, chest in ipairs(chests) do
                if not chest:GetAttribute("IsDisabled") then
                    local dist = (chest:GetPivot().Position - playerPos).Magnitude
                    if dist < minDist then
                        minDist, closestChest = dist, chest
                    end
                end
            end
            if closestChest and closestChest ~= lastTarget then
                lastTarget = closestChest
                topos(closestChest:GetPivot())
            end
        end
    end
end)

local Toggle1 = Sub:AddToggle({
    Name = "Pare Quando Tiver o Cálice de Deus & Punho das Trevas",
    Description = "",
    Default = false
})

Toggle1:Callback(function(Value)
    getgenv().StopChest = Value
end)

-- Parar AutoFarmChest e TP Chests ao pegar itens raros
task.spawn(function()
    while task.wait(0.5) do
        if getgenv().StopChest then
            local player = game.Players.LocalPlayer
            if not player then continue end

            local backpack = player:FindFirstChild("Backpack")
            local character = player.Character
            if not backpack or not character then continue end

            if backpack:FindFirstChild("Fist of Darkness")
            or character:FindFirstChild("Fist of Darkness")
            or backpack:FindFirstChild("God's Chalice")
            or character:FindFirstChild("God's Chalice") then

                -- DESATIVA AUTO FARM CHEST
                getgenv().AutoFarmChest = false
                if ToggleChest and typeof(ToggleChest.Set) == "function" then
                    ToggleChest:Set(false)
                end

                -- DESATIVA TP CHESTS
                Enabled = false
                if ChestTP and typeof(ChestTP.Set) == "function" then
                    ChestTP:Set(false)
                end

                print("Item raro detectado — Auto Chest e TP Chests foram desligados automaticamente.")
                break
            end
        end
    end
end)

if World2 then
local Section = Sub:AddSection({"Raça"})
end

if World2 then
local Toggle1 = Sub:AddToggle({
  Name = "Auto Cyborg",
  Description = "Buy Chip And Kill Order",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoCyborg = Value
end)
spawn(function()
    pcall(function()
        while task.wait(0.5) do
            if getgenv().AutoCyborg then
                if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") 
                and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") 
                and not game:GetService("Workspace").Enemies:FindFirstChild("Order") 
                and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    wait(0.3)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2")
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        while task.wait(0.5) do
            if getgenv().AutoCyborg then
                if not game:GetService("Workspace").Enemies:FindFirstChild("Order") 
                and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") 
                    or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                        fireclickdetector(
                            game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector
                        )
                    end
                end                
                if game:GetService("ReplicatedStorage"):FindFirstChild("Order") 
                or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for _, i in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if i.Name == "Order" then
                                repeat 
                                    task.wait(0.1)
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    topos(i.HumanoidRootPart.CFrame * Pos)
                                    i.HumanoidRootPart.CanCollide = false
                                    i.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                                until not i.Parent or i.Humanoid.Health <= 0 or getgenv().AutoCyborg == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                        topos(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                    end
                end
            end
        end
    end)
end)
end

if World2 then
local Toggle1 = Sub:AddToggle({
  Name = "Auto Ghoul",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)    
    getgenv().AutoGhoul = Value 
end)
spawn(function()
    while task.wait(0.1) do
        if not getgenv().AutoGhoul then break end
        local enemies = game:GetService("Workspace").Enemies
        local cursedCaptain = enemies:FindFirstChild("Cursed Captain")
        if cursedCaptain and cursedCaptain:FindFirstChild("Humanoid") and cursedCaptain:FindFirstChild("HumanoidRootPart") then
            local humanoid = cursedCaptain.Humanoid
            local rootPart = cursedCaptain.HumanoidRootPart
            if humanoid.Health > 0 then
                rootPart.CanCollide = false
                humanoid.WalkSpeed = 0
                rootPart.Size = Vector3.new(50,50,50)
                repeat
                    task.wait(0.05)
                    AutoHaki()
                    EquipWeapon(getgenv().SelectWeapon)
                    topos(rootPart.CFrame * CFrame.new(0, 10, 0))
                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", 1000)
                until not getgenv().AutoGhoul or humanoid.Health <= 0 or not cursedCaptain.Parent
            end
        else
            local storageCaptain = game:GetService("ReplicatedStorage"):FindFirstChild("Cursed Captain")
            if storageCaptain then
                topos(storageCaptain.HumanoidRootPart.CFrame * CFrame.new(5,10,2))
            end
        end
    end
end)
end

local Observacao = Sub:AddSection("Farm Observação") 

ObservationRange = Sub:AddParagraph({"Observação Level", ""})
spawn(function()
    local lastValue = game:GetService("Players").LocalPlayer.VisionRadius.Value
    while wait(0.1) do
        pcall(function()
            local currentValue = game:GetService("Players").LocalPlayer.VisionRadius.Value
            if currentValue ~= lastValue then
                ObservationRange:SetDesc("Observation Range Level: " .. math.floor(currentValue))
                lastValue = currentValue
            end
        end)
    end
end)

local Toggle1 = Sub:AddToggle({
  Name = "Auto UP Observação V2",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoObservationHakiV2 = Value
    StopTween(getgenv().AutoObservationHakiV2) 
end)
spawn(function()
    local lastUpdateTime = tick()
    while task.wait(0.1) do
        pcall(function()
            if getgenv().AutoObservationHakiV2 and World3 then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    if tick() - lastUpdateTime >= 1 then
                        topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                        lastUpdateTime = tick()
                    end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
                    task.wait(1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1)
                else
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Defeat 50 Forest Pirates") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate" then
                                    repeat
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        EquipWeapon(getgenv().SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        PosHee = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    until getgenv().AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat Captain Elephant (0/1)" then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    repeat
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        EquipWeapon(getgenv().SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        if sethiddenproperty then
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    until getgenv().AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    end
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and 
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and 
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                    if tick() - lastUpdateTime >= 1 then
                        topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                        lastUpdateTime = tick()
                    end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or 
                        game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                    if tick() - lastUpdateTime >= 1 then
                        topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                        lastUpdateTime = tick()
                    end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Start")
                    task.wait(1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Buy")
                end
            end
        end)
    end
end)
spawn(function()
    local lastUpdate = tick()
    while true do
        task.wait(0.1)
        pcall(function()
            if getgenv().AutoObservationHakiV2 and World3 then
                if sethiddenproperty then
                    if tick() - lastUpdate >= 1 then
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        lastUpdate = tick()
                    end
                end
            end
        end)
    end
end)
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            if getgenv().AutoObservationHakiV2 and World3 then
                local character = game:GetService("Players").LocalPlayer.Character
                if character and character:FindFirstChild("Humanoid") then
                    local humanoid = character.Humanoid
                    if humanoid:GetState() ~= Enum.HumanoidStateType.Physics then
                        humanoid:ChangeState(Enum.HumanoidStateType.Physics)
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    pcall(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            task.wait(0.1)
            if getgenv().AutoObservationHakiV2 and getgenv().StartMagnet then
                local enemies = game.Workspace.Enemies:GetChildren()
                for i, v in ipairs(enemies) do
                    if v.Name == "Forest Pirate" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        local humanoidRootPart = v.HumanoidRootPart
                        if humanoidRootPart.CanCollide ~= false then
                            humanoidRootPart.CanCollide = false
                        end
                        if humanoidRootPart.Size ~= Vector3.new(50, 50, 50) then
                            humanoidRootPart.Size = Vector3.new(50, 50, 50)
                        end
                        if humanoidRootPart.CFrame ~= PosHee then
                            humanoidRootPart.CFrame = PosHee
                        end
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            if getgenv().AutoObservationHakiV2 and getgenv().StartMagnet then
                CheckQuest()
                local enemies = game.Workspace.Enemies:GetChildren()
                for i, v in ipairs(enemies) do
                    if v.Name == Ms and v:FindFirstChild("Humanoid") then
                        local humanoid = v.Humanoid
                        if humanoid.Health > 0 then
                            humanoid:ChangeState(11)
                            task.wait(0.1)
                            humanoid:ChangeState(14)
                        end
                    end
                end
            end
        end)
    end)
end)

local Toggle1 = Sub:AddToggle({
  Name = "Farm Observação",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoObservation = Value
    StopTween(getgenv().AutoObservation) 
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if getgenv().AutoObservation then
                if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 5000 then
                    Alert:create("You Have Max Points")
                    task.wait(1)
                else
                    local enemyName, spawnPos
                    local player = game:GetService("Players").LocalPlayer
                    local workspaceEnemies = game:GetService("Workspace").Enemies
                    local gui = player.PlayerGui.ScreenGui
                    if World2 then
                        enemyName = "Lava Pirate [Lv. 1200]"
                        spawnPos = CFrame.new(-5478.39209, 15.9775667, -5246.9126)
                    elseif World1 then
                        enemyName = "Galley Captain"
                        spawnPos = CFrame.new(5533.29785, 88.1079102, 4852.3916)
                    elseif World3 then
                        enemyName = "Venomous Assailant"
                        spawnPos = CFrame.new(4638.78564453125, 1078.94091796875, 881.8002319335938)
                    end
                    local enemy = workspaceEnemies:FindFirstChild(enemyName)
                    if enemy then
                        if gui:FindFirstChild("ImageLabel") then
                            repeat
                                task.wait(0.1)
                                player.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                            until not getgenv().AutoObservation or not gui:FindFirstChild("ImageLabel")
                        else
                            repeat
                                task.wait(0.1)
                                player.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                if not gui:FindFirstChild("ImageLabel") and getgenv().AutoObservation_Hop then
                                    game:GetService("TeleportService"):Teleport(game.PlaceId, player)
                                end
                            until not getgenv().AutoObservation or gui:FindFirstChild("ImageLabel")
                        end
                    else
                        topos(spawnPos)
                    end
                end
            end
        end
    end)
end)

if World3 then
local Toggle1 = Sub:AddToggle({
  Name = "Auto Rip Indra",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoRipIndra = Value
    StopTween(getgenv().AutoRipIndra) 
end)
spawn(function()
    pcall(function()
        while task.wait(1) do
            if getgenv().AutoRipIndra and World3 then
                local enemies = game:GetService("Workspace").Enemies
                local player = game:GetService("Players").LocalPlayer                
                if enemies:FindFirstChild("rip_indra True Form") or enemies:FindFirstChild("rip_indra") then
                    for _, v in pairs(enemies:GetChildren()) do
                        if (v.Name == "rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                task.wait(0.3)
                                pcall(function()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                end)
                            until getgenv().AutoRipIndra == false or v.Humanoid.Health <= 0
                        end
                    end
                elseif player.Backpack:FindFirstChild("God's Chalice") or player.Character:FindFirstChild("God's Chalice") then
                    repeat
                        task.wait(0.3)
                        topos(CFrame.new(-5563.75048828125, 320.4276123046875, -2662.509521484375))
                        EquipWeapon("God's Chalice")
                    until not (player.Backpack:FindFirstChild("God's Chalice") or player.Character:FindFirstChild("God's Chalice"))
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") then
                    local ripIndraTrueForm = game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form")
                    topos(ripIndraTrueForm.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end)
end)
end

if World2 then
local Toggle1 = Sub:AddToggle({
  Name = "Auto Barba Negra",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoDarkbeard = Value
    StopTween(getgenv().AutoDarkbeard)
end)
spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoDarkbeard and World2 then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies
                local player = game:GetService("Players").LocalPlayer
                if enemies:FindFirstChild("Darkbeard") then
                    for _, v in pairs(enemies:GetChildren()) do
                        if v.Name == "Darkbeard" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat
                                task.wait(0.05)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0           
                                topos(v.HumanoidRootPart.CFrame * Pos)
                            until not getgenv().AutoDarkbeard or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                elseif player.Backpack:FindFirstChild("Fist of Darkness") or player.Character:FindFirstChild("Fist of Darkness") then
                    repeat
                        task.wait(0.1)
                        topos(CFrame.new(3778.584, 15.791, -3499.404))
                        EquipWeapon("Fist of Darkness")
                    until not getgenv().AutoDarkbeard
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart.CFrame * Pos)
                end
            end)
        end
    end
end)
end

if World3 then
local Toggle1 = Sub:AddToggle({
  Name = "Auto Haki do Touch Pad",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoTouchPadHaki = Value
    StopTween(getgenv().AutoTouchPadHaki) 
end)
spawn(function()
    while task.wait(1) do
        pcall(function()
            if getgenv().AutoTouchPadHaki and World3 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky")
                task.wait(0.5)
                local target1 = CFrame.new(-5420.16602, 1084.9657, -2666.8208)
                repeat
                    topos(target1)
                    task.wait(0.2)
                until getgenv().StopTween == true or getgenv().AutoTouchPadHaki == false or
                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - target1.Position).Magnitude <= 10
                task.wait(0.5)                
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red")
                task.wait(0.5)
                local target2 = CFrame.new(-5414.41357, 309.865753, -2212.45776)
                repeat
                    topos(target2)
                    task.wait(0.2)
                until getgenv().StopTween == true or getgenv().AutoTouchPadHaki == false or
                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - target2.Position).Magnitude <= 10
                task.wait(0.5)                
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White")
                task.wait(0.5)
                local target3 = CFrame.new(-4971.47559, 331.565765, -3720.02954)
                repeat
                    topos(target3)
                    task.wait(0.2)
                until getgenv().StopTween == true or getgenv().AutoTouchPadHaki == false or
                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - target3.Position).Magnitude <= 10
                task.wait(0.5)               
                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600))
                task.wait(1)
                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600))
            end
        end)
    end
end)
end 

if World2 then
local Toggle1 = Sub:AddToggle({
  Name = "Auto Comprar Espada Lendaria",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoBuyLegendarySword = Value
end)
spawn(function()
    local lastCallTime = 0
    while task.wait(1) do
        if getgenv().AutoBuyLegendarySword and World2 then
            local currentTime = tick()            
            if currentTime - lastCallTime >= 2 then
                lastCallTime = currentTime                
                pcall(function()
                    local args1 = { "LegendarySwordDealer", "1" }
                    local args2 = { "LegendarySwordDealer", "2" }
                    local args3 = { "LegendarySwordDealer", "3" }                    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args1))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args2))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args3))                    
                end)
            end
        end
    end
end)
end

if World2 or World3 then
local Toggle1 = Sub:AddToggle({
  Name = "Auto Comprar Haki Color",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().Auto_Buy_Enchancement = Value 
end)
spawn(function()
    local lastCallTime = 0
    while true do
        if getgenv().Auto_Buy_Enchancement then
            local currentTime = tick()
            if currentTime - lastCallTime >= 2 then
                lastCallTime = currentTime
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                }
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end)
            end
        end
        wait(0.1)
    end
end)
end

local isHopping = false
if World2 or World3 then
local Toggle1 = Sub:AddToggle({
  Name = "Hop Server [ Haki Cor Ou Esapada Lendaria]",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    isHopping = state
    if isHopping then
        Hop()
    end
end)
end

local Toggle1 = Sub:AddToggle({
  Name = "Auto Coletar Berries",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
  _G.AutoBerry = Value 
end)
spawn(function()
  while wait(0.5) do
    if _G.AutoBerry then
      local CollectionService= game:GetService("CollectionService")
      local Players= game:GetService("Players")
      local Player = Players.LocalPlayer
      local BerryBush = CollectionService:GetTagged("BerryBush")      
      local Distance, Nearest = math.huge      
      for i = 1, #BerryBush do
        local Bush = BerryBush[i]        
        for AttributeName, BerryName in pairs(Bush:GetAttributes()) do
          if not BerryArray or table.find(BerryArray, BerryName) then           
            topos(Bush.Parent:GetPivot())
            for i = 1, #BerryBush do
            local Bush = BerryBush[i]        
              for AttributeName, BerryName in pairs(Bush:GetChildren()) do
                if not BerryArray or table.find(BerryArray, BerryName) then
                  topos(BerryName.WorldPivot)
                  fireproximityprompt(BerryName.ProximityPrompt,math.huge)
                end
              end
            end      
          end
        end
      end      
    end
  end
end)
----- Quest ------
local Section = Quest:AddSection({"Quests"})

local Section = Quest:AddSection({"Itens"})

------Sea3------

local CheckCDK = Quest:AddParagraph({" Number Cursed dual katana quests ", "Quest Numbers :"})
spawn(function()  
  while wait(.2) do 
    if QuestYama_1 == true then 
	 CheckCDK:SetDesc(" Quest Numbers : yama quest 1") 
    elseif QuestYama_2 == true then
	  CheckCDK:SetDesc(" Quest Numbers : yama quest 2") 
    elseif QuestYama_3 == true then
	  CheckCDK:SetDesc(" Quest Numbers : yama quest 3") 
    elseif QuestTushita_1 == true then
	  CheckCDK:SetDesc(" Quest Numbers : tushita quest 1") 
    elseif QuestTushita_2 == true then
	  CheckCDK:SetDesc(" Quest Numbers : tushita quest 2") 
    elseif QuestTushita_1 == true then
	  CheckCDK:SetDesc(" Quest Numbers: tushita quest 2") 
	elseif GetWP("Cursed Dual Katana") then
	  CheckCDK:SetDesc(" Quest Numbers: CDK done!!")
    end 
  end
end) 


if World3 then
local Toggle1 = Quest:AddToggle({
  Name = "Auto Skull Guitar",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoSkullGuitar = Value
end)
spawn(function()
    while task.wait() do
        if getgenv().AutoSkullGuitar then
            pcall(function()
                if not GetWeaponInventory("Skull Guitar") then
                    local player = game:GetService("Players").LocalPlayer
                    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local targetPos = Vector3.new(-9681.458, 6.139, 6341.372)
                        if (targetPos - hrp.Position).Magnitude <= 5000 then
                            local skeletonMachine = game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine")
                            if skeletonMachine then
                                game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("soulGuitarBuy", true)
                            else
                                local hauntedCastle = game:GetService("Workspace").Map:FindFirstChild("Haunted Castle")
                                if hauntedCastle and hauntedCastle.Candle1.Transparency == 0 then
                                    local placard1 = hauntedCastle:FindFirstChild("Placard1")
                                    if placard1 and placard1.Left.Part.Transparency == 0 then
                                        Quest2 = true
                                        topos(CFrame.new(-8762.691, 176.847, 6171.308))
                                        task.wait(1)
                                        for i = 7, 1, -1 do
                                            local placard = hauntedCastle:FindFirstChild("Placard" .. i)
                                            if placard and placard:FindFirstChild("Left") and placard.Left:FindFirstChild("ClickDetector") then
                                                fireclickdetector(placard.Left.ClickDetector)
                                                task.wait(0.5)
                                            end
                                        end
                                    end
                                elseif hauntedCastle and hauntedCastle.Tablet and hauntedCastle.Tablet:FindFirstChild("Segment1") then
                                    local labPuzzle = hauntedCastle:FindFirstChild("Lab Puzzle")
                                    if labPuzzle and labPuzzle.ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
                                        Quest4 = true
                                        topos(CFrame.new(-9553.599, 65.623, 6041.588))
                                        task.wait(1)
                                        local partsToClick = {3, 4, 4, 4, 6, 6, 8, 10, 10, 10}
                                        for _, num in ipairs(partsToClick) do
                                            local part = labPuzzle.ColorFloor.Model:FindFirstChild("Part" .. num)
                                            if part and part:FindFirstChild("ClickDetector") then
                                                topos(part.CFrame)
                                                task.wait(1)
                                                fireclickdetector(part.ClickDetector)
                                                task.wait(0.5)
                                            end
                                        end
                                    else
                                        Quest3 = true
                                    end
                                else
                                    local ghost = game:GetService("Workspace").NPCs:FindFirstChild("Ghost")
                                    if ghost then
                                        game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("GuitarPuzzleProgress", "Ghost")
                                    end
                                    local enemies = game.Workspace:FindFirstChild("Enemies")
                                    if enemies and enemies:FindFirstChild("Living Zombie") then
                                        for _, enemy in pairs(enemies:GetChildren()) do
                                            if enemy:FindFirstChild("HumanoidRootPart") and enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 and enemy.Name == "Living Zombie" then
                                                AutoHaki()
                                                EquipWeapon(getgenv().SelectWeapon)
                                                enemy.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                enemy.HumanoidRootPart.Transparency = 1
                                                enemy.Humanoid.JumpPower = 0
                                                enemy.Humanoid.WalkSpeed = 0
                                                enemy.HumanoidRootPart.CanCollide = false
                                                enemy.HumanoidRootPart.CFrame = hrp.CFrame * CFrame.new(0, 20, 0)                                                
                                                topos(CFrame.new(-10160.787, 138.662, 5955.031))
                                                task.wait(0.5)
                                                local virtualUser = game:GetService("VirtualUser")
                                                virtualUser:CaptureController()
                                                virtualUser:Button1Down(Vector2.new(1280, 672))
                                            end
                                        end
                                    else
                                        topos(CFrame.new(-10160.787, 138.662, 5955.031))
                                    end
                                end
                            end
                        end
                    end
                elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("gravestoneEvent", 2), "Error") then
                    topos(CFrame.new(-8653.206, 140.985, 6160.033))
                elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("gravestoneEvent", 2), "Nothing") then
                    topos("Wait Full Moon")
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("gravestoneEvent", 2, true)
                end
            end)
        end
    end
end)
end


if World3 then
local Toggle1 = Quest:AddToggle({
  Name = "Auto Adaga Sombria",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoRipIndra = Value
    StopTween(getgenv().AutoRipIndra)
end)
spawn(function()
    pcall(function()
        while task.wait(1) do
            if getgenv().AutoRipIndra and World3 then
                local enemies = game:GetService("Workspace").Enemies
                local player = game:GetService("Players").LocalPlayer                
                if enemies:FindFirstChild("rip_indra True Form") or enemies:FindFirstChild("rip_indra") then
                    for _, v in pairs(enemies:GetChildren()) do
                        if (v.Name == "rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                task.wait(0.3)
                                pcall(function()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                end)
                            until getgenv().AutoRipIndra == false or v.Humanoid.Health <= 0
                        end
                    end
                elseif player.Backpack:FindFirstChild("God's Chalice") or player.Character:FindFirstChild("God's Chalice") then
                    repeat
                        task.wait(0.3)
                        topos(CFrame.new(-5563.75048828125, 320.4276123046875, -2662.509521484375))
                        EquipWeapon("God's Chalice")
                    until not (player.Backpack:FindFirstChild("God's Chalice") or player.Character:FindFirstChild("God's Chalice"))
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") then
                    local ripIndraTrueForm = game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form")
                    topos(ripIndraTrueForm.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end)
end)
end
if World3 then
local Toggle1 = Quest:AddToggle({
  Name = "Auto Valquíria",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoRipIndra = Value
    StopTween(getgenv().AutoRipIndra) 
end)
spawn(function()
    pcall(function()
        while task.wait(1) do
            if getgenv().AutoRipIndra and World3 then
                local enemies = game:GetService("Workspace").Enemies
                local player = game:GetService("Players").LocalPlayer                
                if enemies:FindFirstChild("rip_indra True Form") or enemies:FindFirstChild("rip_indra") then
                    for _, v in pairs(enemies:GetChildren()) do
                        if (v.Name == "rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                task.wait(0.3)
                                pcall(function()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                end)
                            until getgenv().AutoRipIndra == false or v.Humanoid.Health <= 0
                        end
                    end
                elseif player.Backpack:FindFirstChild("God's Chalice") or player.Character:FindFirstChild("God's Chalice") then
                    repeat
                        task.wait(0.3)
                        topos(CFrame.new(-5563.75048828125, 320.4276123046875, -2662.509521484375))
                        EquipWeapon("God's Chalice")
                    until not (player.Backpack:FindFirstChild("God's Chalice") or player.Character:FindFirstChild("God's Chalice"))
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") then
                    local ripIndraTrueForm = game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form")
                    topos(ripIndraTrueForm.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end)
end)
end 

if World3 then
local Toggle1 = Quest:AddToggle({
  Name = "Auto Coleta Yama",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoYama = Value
end)
spawn(function()
    while task.wait(1) do
        pcall(function()
            if getgenv().AutoYama then
                local progress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress")
                if progress and progress >= 30 then
                    local player = game:GetService("Players").LocalPlayer
                    local yamaInBackpack = player.Backpack:FindFirstChild("Yama")
                    local sealedKatana = game:GetService("Workspace").Map:FindFirstChild("Waterfall")                    
                    if not yamaInBackpack and sealedKatana and sealedKatana:FindFirstChild("SealedKatana") then
                        local clickDetector = sealedKatana.SealedKatana.Handle:FindFirstChild("ClickDetector")
                        if clickDetector then
                            repeat
                                task.wait(0.5)
                                fireclickdetector(clickDetector)
                            until player.Backpack:FindFirstChild("Yama") or not getgenv().AutoYama
                        end
                    end
                end
            end
        end)
    end
end)
end

local plr = game.Players.LocalPlayer

function GetBP(v)
    return plr.Backpack:FindFirstChild(v)
        or plr.Character:FindFirstChild(v)
end


if World3 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Tushita",
    Description = "",
    Default = false
})

Toggle1:Callback(function(Value)
    getgenv().AutoTushita = Value
end)

task.spawn(function()
    while task.wait(0.2) do
        pcall(function()
            if not getgenv().AutoTushita then return end

            if workspace.Map.Turtle:FindFirstChild("TushitaGate") then
                if not GetBP("Holy Torch") then
                    topos(CFrame.new(5148.03613, 162.352493, 910.548218))
                else
                    EquipWeapon("Holy Torch")

                    topos(CFrame.new(-10752, 417, -9366))
                    topos(CFrame.new(-11672, 334, -9474))
                    topos(CFrame.new(-12132, 521, -10655))
                    topos(CFrame.new(-13336, 486, -6985))
                    topos(CFrame.new(-13489, 332, -7925))
                end
            else
                local enemy = GetConnectionEnemies("Longma")
                if enemy and enemy:FindFirstChild("HumanoidRootPart") then
                    topos(enemy.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                elseif replicated:FindFirstChild("Longma") then
                    topos(replicated.Longma.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                end
            end
        end)
    end
end)
end

if World3 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Espada Companheira",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.EspadaCompanheira = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.EspadaCompanheira then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Cake Queen")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.EspadaCompanheira
            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.EspadaCompanheira
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World3 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Cavender",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.Cavender = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.Cavender then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Beautiful Pirate")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.Cavender
            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.Cavender
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World3 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Ganchos Duplos",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.GanchosDuplos = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.GanchosDuplos then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Captain Elephant")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.GanchosDuplos
            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.GanchosDuplos
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World3 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Lei",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.Lei = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.Lei then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Kilo Admiral")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.Lei

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.Lei
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end


if World3 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Serpent Crow",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.SerpentCrow = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.SerpentCrow then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Hydra Leader")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.SerpentCrow

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.SerpentCrow
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World3 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Capacete Do Piloto",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.CapacetedoPiloto = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.CapacetedoPiloto then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Stone")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.CapacetedoPiloto

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.CapacetedoPiloto
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end
------Sea2

if World2 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Dark Blade V3",
    Description = "",
    Default = false
})

Toggle1:Callback(function(Value)
    getgenv().DarkBladev3 = Value
    getgenv().AutoFarmChest = Value
end)

task.spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if getgenv().DarkBladev3 and World2 then
                local player = game.Players.LocalPlayer
                local character = player.Character
                local root = character and character:FindFirstChild("HumanoidRootPart")
                if not root then return end

                if GetBP("Dark Blade") < 1 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Dark Blade")
                end

                if GetBP("Fist of Darkness") >= 1 then
                    getgenv().AutoFarmChest = false

                    if not workspace.Enemies:FindFirstChild("Darkbeard") then
                        topos(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
                    else
                        topos(CFrame.new(-5719.36376953125, 48.50590515136719, -782.9759521484375))
                        fireclickdetector(workspace.Map.GraveIsland.Mountain.Rocks.Button.ClickDetector)
                    end
                else
                    getgenv().AutoFarmChest = true
                end
            end
        end)
    end
end)
end

if World2 then
    local Toggle1 = Quest:AddToggle({
        Name = "Auto Koko",
        Description = "",
        Default = false
    })

    Toggle1:Callback(function(Value)
        Auto_Law = Value
    end)

    -- Get Microchip
    spawn(function()
        pcall(function()
            while task.wait() do
                if Auto_Law then
                    local Player = game:GetService("Players").LocalPlayer
                    if not Player.Character:FindFirstChild("Microchip")
                    and not Player.Backpack:FindFirstChild("Microchip")
                    and not game:GetService("Workspace").Enemies:FindFirstChild("Order")
                    and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then

                        task.wait(0.3)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BlackbeardReward","Microchip","1"
                        )
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BlackbeardReward","Microchip","2"
                        )
                    end
                end
            end
        end)
    end)

    -- Spawn + Kill Order
    spawn(function()
        pcall(function()
            while task.wait(0.4) do
                if Auto_Law then
                    local Player = game:GetService("Players").LocalPlayer
                    local Enemies = game:GetService("Workspace").Enemies
                    local RS = game:GetService("ReplicatedStorage")

                    -- Summon Raid
                    if not Enemies:FindFirstChild("Order")
                    and not RS:FindFirstChild("Order") then
                        if Player.Character:FindFirstChild("Microchip")
                        or Player.Backpack:FindFirstChild("Microchip") then
                            fireclickdetector(
                                game:GetService("Workspace")
                                .Map.CircleIsland.RaidSummon
                                .Button.Main.ClickDetector
                            )
                        end
                    end

                    -- If Order Exists
                    if RS:FindFirstChild("Order") or Enemies:FindFirstChild("Order") then
                        if Enemies:FindFirstChild("Order") then
                            for _,v in pairs(Enemies:GetChildren()) do
                                if v.Name == "Order" and v:FindFirstChild("HumanoidRootPart") then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)

                                        -- Teleport acima do boss
                                        topos(
                                            v.HumanoidRootPart.CFrame
                                            * CFrame.new(0, 20, 0)
                                        )

                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(120,120,120)

                                    until not v.Parent
                                    or v.Humanoid.Health <= 0
                                    or not Auto_Law
                                end
                            end
                        elseif RS:FindFirstChild("Order") then
                            -- Esperando spawn
                            topos(CFrame.new(
                                -6217.2021484375,
                                28.047645568848,
                                -5053.1357421875
                            ))
                        end
                    end
                end
            end
        end)
    end)
end

if World2 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Regonku",
    Description = "Ele Não coloca a Chave No bau",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.Rengoku = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.Rengoku then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Awakened Ice Admiral")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.Rengoku

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.Rengoku
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end


if World2 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Capa Do Barba Negra",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    getgenv().AutoDarkbeard = Value
    StopTween(getgenv().AutoDarkbeard)
end)
spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoDarkbeard and World2 then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies
                local player = game:GetService("Players").LocalPlayer
                if enemies:FindFirstChild("Darkbeard") then
                    for _, v in pairs(enemies:GetChildren()) do
                        if v.Name == "Darkbeard" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat
                                task.wait(0.05)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0           
                                topos(v.HumanoidRootPart.CFrame * Pos)
                            until not getgenv().AutoDarkbeard or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                elseif player.Backpack:FindFirstChild("Fist of Darkness") or player.Character:FindFirstChild("Fist of Darkness") then
                    repeat
                        task.wait(0.1)
                        topos(CFrame.new(3778.584, 15.791, -3499.404))
                        EquipWeapon("Fist of Darkness")
                    until not getgenv().AutoDarkbeard
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart.CFrame * Pos)
                end
            end)
        end
    end
end)
end

if World2 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Capa Vermelha e Azul",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.CapaAzul = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.CapaAzul then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Cursed Captain")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.CapaAzul

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.CapaAzul
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World2 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Trident V2",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.TridentV2 = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.TridentV2 then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Tide Keeper")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.TridentV2

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.TridentV2
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end


if World2 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Bastão De Fumaça",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.BastaoDeFumaca = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.BastaoDeFumaca then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Smoke Admiral")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.BastaoDeFumaca

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.BastaoDeFumaca
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World2 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Glasses Do Flamingo",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.GlassesFlamingo = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.GlassesFlamingo then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Don Swan")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.GlassesFlamingo

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.GlassesFlamingo
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World2 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Gravity Cane",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.GravityCane = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.GravityCane then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Fajita")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.GravityCane

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.GravityCane
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World2 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Capa Preta",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.CapaPreta = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.CapaPreta then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Jeremy")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.CapaPreta

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.CapaPreta
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World2 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Espada Longa",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.EspadaLonga = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.EspadaLonga then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Diamond")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.EspadaLonga

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.EspadaLonga
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end


------Sea 1----
if World1 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Saber",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    getgenv().AutoSaber = Value
end)
spawn(function()
    while task.wait(0.5) do
        if getgenv().AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
            pcall(function()
                local player = game.Players.LocalPlayer
                local char = player.Character
                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                if not hrp then return end
                local jungle = game:GetService("Workspace").Map.Jungle
                local desert = game:GetService("Workspace").Map.Desert
                local relicPos = CFrame.new(-1404.91, 29.97, 3.80)                
                if jungle.Final.Part.Transparency == 0 then
                    if jungle.QuestPlates.Door.Transparency == 0 then
                        local saberPos = CFrame.new(-1612.55, 36.97, 148.71)
                        if (saberPos.Position - hrp.Position).Magnitude <= 100 then
                            for i = 1, 5 do
                                local plate = jungle.QuestPlates:FindFirstChild("Plate" .. i)
                                if plate and plate:FindFirstChild("Button") then
                                    hrp.CFrame = plate.Button.CFrame
                                    task.wait(0.5)
                                end
                            end
                        else
                            topos(saberPos)
                        end
                    else
                        if desert.Burn.Part.Transparency == 0 then
                            if player.Backpack:FindFirstChild("Torch") or char:FindFirstChild("Torch") then
                                EquipWeapon("Torch")
                                topos(CFrame.new(1114.61, 5.04, 4350.22))
                            else
                                topos(CFrame.new(-1610.00, 11.50, 164.00))
                            end
                        else
                            local commF = game:GetService("ReplicatedStorage").Remotes.CommF_
                            if commF:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
                                commF:InvokeServer("ProQuestProgress", "GetCup")
                                task.wait(0.1)
                                EquipWeapon("Cup")
                                task.wait(0.1)
                                commF:InvokeServer("ProQuestProgress", "FillCup", char:FindFirstChild("Cup"))
                                task.wait(0.1)
                                commF:InvokeServer("ProQuestProgress", "SickMan")
                            else
                                if commF:InvokeServer("ProQuestProgress", "RichSon") == nil then
                                    commF:InvokeServer("ProQuestProgress", "RichSon")
                                elseif commF:InvokeServer("ProQuestProgress", "RichSon") == 0 then
                                    local mobLeader = game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader")
                                    if not mobLeader then
                                        mobLeader = game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader")
                                    end                                    
                                    if mobLeader then
                                        topos(mobLeader.HumanoidRootPart.CFrame)
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(getgenv().SelectWeapon)
                                            mobLeader.HumanoidRootPart.CanCollide = false
                                            mobLeader.Humanoid.WalkSpeed = 0
                                            topos(mobLeader.HumanoidRootPart.CFrame)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(player, "SimulationRadius", math.huge)
                                        until mobLeader.Humanoid.Health <= 0 or not getgenv().AutoSaber
                                    end
                                elseif commF:InvokeServer("ProQuestProgress", "RichSon") == 1 then
                                    commF:InvokeServer("ProQuestProgress", "RichSon")
                                    task.wait(0.1)
                                    EquipWeapon("Relic")
                                    task.wait(0.1)
                                    topos(relicPos)
                                end
                            end
                        end
                    end
                else
                    local saberExpert = game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert")
                    if not saberExpert then
                        saberExpert = game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert")
                    end                    
                    if saberExpert then
                        repeat
                            task.wait()
                            EquipWeapon(getgenv().SelectWeapon)
                            topos(saberExpert.HumanoidRootPart.CFrame)
                            saberExpert.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            saberExpert.HumanoidRootPart.Transparency = 1
                            saberExpert.Humanoid.JumpPower = 0
                            saberExpert.Humanoid.WalkSpeed = 0
                            saberExpert.HumanoidRootPart.CanCollide = false
                            game:GetService("VirtualUser"):CaptureController()
                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                        until saberExpert.Humanoid.Health <= 0 or not getgenv().AutoSaber                        
                        if saberExpert.Humanoid.Health <= 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic")
                        end
                    end
                end
            end)
        end
    end
end)
end

if World1 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Explosivo de Magma",
    Description = "Arma De Magma",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.ArmadeLava = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.ArmadeLava then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Fishman Lord")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.ArmadeLava

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.ArmadeLava
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World1 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Trident",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.Trident = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.Trident then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Fishman Lord")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.Trident

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.Trident
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World1 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto oculos De Sol",
    Description = "oculos Do Frank",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.oculosDoFrank = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.oculosDoFrank then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Cyborg")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.oculosDoFrank

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.oculosDoFrank
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World1 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Bazuka",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.Bazuka = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.Bazuka then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Wysper")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.Bazuka

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.Bazuka
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World1 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Capa da Marinha ",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.CapaDaMarinha = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.CapaDaMarinha then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Vice Admiral")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.CapaDaMarinha

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.CapaDaMarinha
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World1 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Warden ",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.Warden = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.Warden then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Chief Warden")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.Warden

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.Warden
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World1 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Capa Rosa ",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.CapaRosa = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.CapaRosa then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Swan")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.CapaRosa

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.CapaRosa
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end

if World1 then
local Toggle1 = Quest:AddToggle({
    Name = "Auto Pole V1",
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.Thunder = Value
end)

-- CFrame fixo antes de atacar o boss
local CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    while task.wait(0.1) do
        if _G.Thunder then
            -- Teleporta sempre para o CFrame inicial, mesmo sem boss
            pcall(function()
                topos(CFrameBoss)
            end)

            -- Espera o boss spawnar
            local boss = nil
            repeat
                task.wait(0.2)
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    boss = enemies:FindFirstChild("Thunder God")
                end
            until (boss and boss:FindFirstChild("HumanoidRootPart") and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0) or not _G.Thunder

            -- Se o boss existe, entra no loop de ataque
            if boss then
                repeat
                    task.wait(0.05)

                    if getgenv().SelectWeapon then
                        pcall(function() EquipWeapon(getgenv().SelectWeapon) end)
                    end

                    pcall(function()
                        -- Sempre 20 studs acima do boss
                        topos(boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    end)

                until not _G.Thunder
                or boss.Humanoid.Health <= 0
                or not boss.Parent
            end
        end
    end
end)
end


_G.AutoFishing = false
_G.SelectedBait = "Basic Bait"
_G.SelectedRod = "Fishing Rod"

local Toggle1 = Fish:AddToggle({
  Name = "Auto Fishing",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(v)
    _G.AutoFishing = v
end)

local Dropdown = Fish:AddDropdown({
  Name = "Seleciona Isca",
  Description = "",
  Options = {"Basic Bait","Kelp Bait","Good Bait","Abyssal Bait","Frozen Bait","Epic Bait","Carnivore Bait"},
  Default = "Basic Bait",
  Flag = "Isca",
  Callback = function(v)
     _G.SelectedBait = v
    game.ReplicatedStorage.FishReplicated.FishingRequest:InvokeServer("SelectBait", v)   
  end
})

local Dropdown = Fish:AddDropdown({
  Name = "Seleciona Vara",
  Description = "",
  Options = {"Fishing Rod","Gold Rod","Shark Rod","Shell Rod","Treasure Rod"},
  Default = "Fishing Rod",
  Flag = "Rod",
  Callback = function(v)
    _G.SelectedRod = v    
  end
})


-- ============================
-- SISTEMA AUTO FISH
-- ============================

local plr = game.Players.LocalPlayer
local fishFolder = game.ReplicatedStorage:WaitForChild("FishReplicated")
local fishRequest = fishFolder:WaitForChild("FishingRequest")
local waterHeight = require(game.ReplicatedStorage.Util.GetWaterHeightAtLocation)


task.spawn(function()
    while task.wait(0.15) do
        if not _G.AutoFishing then continue end

        local char = plr.Character
        if not char then continue end
        
        local hrp = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not (hrp and hum) then continue end

        local tool = char:FindFirstChildOfClass("Tool")

        -------------------------------------------------
        -- AUTO EQUIP ROD
        -------------------------------------------------
        if not tool or tool.Name ~= _G.SelectedRod then
            local rod = plr.Backpack:FindFirstChild(_G.SelectedRod)
            if rod then
                hum:EquipTool(rod)
                task.wait(0.1)
                tool = rod
            else
                continue
            end
        end

        local state = tool:GetAttribute("State")
        local serverState = tool:GetAttribute("ServerState")

        -------------------------------------------------
        -- AUTO CAST (jogar a linha SEM travas)
        -------------------------------------------------
        if state == "ReeledIn" or serverState == "ReeledIn" then
            local forwardPos = hrp.Position + hrp.CFrame.LookVector * 60
            forwardPos = Vector3.new(forwardPos.X, waterHeight(hrp.Position), forwardPos.Z)

            fishRequest:InvokeServer("StartCasting")
            task.wait(0.25)
            fishRequest:InvokeServer("CastLineAtLocation", forwardPos, 100, true)
        end

        -------------------------------------------------
        -- AUTO CATCH (puxar quando morder)
        -------------------------------------------------
        if serverState == "Biting" then
            fishRequest:InvokeServer("Catching", true)
            task.wait(0.2)
            fishRequest:InvokeServer("Catch", 1)
        end
    end
end)


-- Teleport
-- Verificar qual Sea / Dungeon o jogador está
local Sea1, Sea2, Sea3, Dungeon = false, false, false, false

if game.PlaceId == 2753915549 then
    Sea1 = true
elseif game.PlaceId == 79091703265657 then
    Sea2 = true
elseif game.PlaceId == 100117331123089 then
    Sea3 = true
elseif game.PlaceId == 73902483975735 then
    Dungeon = true
end


local Section = Teleport:AddSection({"Move"})

Teleport:AddButton({"Sea 1", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end})

Teleport:AddButton({"Sea 2", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end})

Teleport:AddButton({"Sea 3", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end})


-- Lista de ilhas com base no Sea atual
local IslandList = {}
if Sea1 then
    IslandList = {
        "WindMill", "Marine", "Middle Town", "Jungle", "Pirate Village",
        "Desert", "Snow Island", "MarineFord", "Colosseum", "Sky Island 1",
        "Sky Island 2", "Sky Island 3", "Prison", "Magma Village",
        "Under Water Island", "Fountain City", "Shank Room", "Mob Island",
    }
elseif Sea2 then
    IslandList = {
        "Café", "Frist Spot", "Dark Area", "Mansão Do Flamingo",
        "Flamingo Room", "Green Zone", "Factory", "Coliseu",
        "Cemitério", "Two Snow Mountain", "Quente e Frio", "Cursed Ship",
        "Ice Castle", "Forgotten Island", "Ussop Island",
    }
elseif Sea3 then
    IslandList = {
        "Mansão", "Cidade Do Porto","Dragon Dojo","Grande Árvore", "Castelo Do Mar",
        "MiniSky", "Ilha da Hydra", "Ilha da Tartaruga", "Castelo Assombrado",
        "Ilha do Sorvete", "Ilha do Amendoim", "Ilha do Bolo", "Ilha do Cacau",
        "Ilha do Doce", "Tiki Outpost",
    }
end


local Dropdown = Teleport:AddDropdown({
  Name = "Teleporte Island",
  Description = "Select an island to teleport",
  Options = IslandList,
  Default = "",
  Flag = "Teleport",
  Callback = function(Value)
    _G.SelectedIsland = Value
    print("Selected Island:", Value)  
  end
})

-- Função de Teleporte com Tween
function TeleportToPosition(Pos)
    local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit and not _G.KillShark and not _G.KillPiranha and not _G.KillTerrorShark and not _G.KillFishCrew then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    pcall(function()
        local tween = game:GetService("TweenService"):Create(
            game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/325, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        )
        tween:Play()
        if Distance <= 250 or _G.StopTween then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
            NoCLip = false
        end
    end)
end


Teleport:AddButton({"Teleporta Island", function()
       if _G.SelectedIsland == "WindMill" then
            TeleportToPosition(CFrame.new(979.79895, 16.5516224, 1429.04663))
        elseif _G.SelectedIsland == "Marine" then
            TeleportToPosition(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
        elseif _G.SelectedIsland == "Middle Town" then
            TeleportToPosition(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
        elseif _G.SelectedIsland == "Jungle" then
            TeleportToPosition(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
        elseif _G.SelectedIsland == "Pirate Village" then
            TeleportToPosition(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
        elseif _G.SelectedIsland == "Desert" then
            TeleportToPosition(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
        elseif _G.SelectedIsland == "Snow Island" then
            TeleportToPosition(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
        elseif _G.SelectedIsland == "MarineFord" then
            TeleportToPosition(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
        elseif _G.SelectedIsland == "Colosseum" then
            TeleportToPosition(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
        elseif _G.SelectedIsland == "Sky Island 1" then
            TeleportToPosition(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
        elseif _G.SelectedIsland == "Sky Island 2" then  
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688))
        elseif _G.SelectedIsland == "Sky Island 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
        elseif _G.SelectedIsland == "Prison" then
            TeleportToPosition(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
        elseif _G.SelectedIsland == "Magma Village" then
            TeleportToPosition(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
        elseif _G.SelectedIsland == "Under Water Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        elseif _G.SelectedIsland == "Fountain City" then
            TeleportToPosition(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
        elseif _G.SelectedIsland == "Shank Room" then
            TeleportToPosition(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
        elseif _G.SelectedIsland == "Mob Island" then
            TeleportToPosition(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
        elseif _G.SelectedIsland == "Café" then
            TeleportToPosition(CFrame.new(-377.284424, 73.0550919, 291.670776))
        elseif _G.SelectedIsland == "Frist Spot" then
            TeleportToPosition(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
        elseif _G.SelectedIsland == "Dark Area" then
            TeleportToPosition(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
        elseif _G.SelectedIsland == "Mansão Do Flamingo" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
        elseif _G.SelectedIsland == "Flamingo Room" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625))
        elseif _G.SelectedIsland == "Green Zone" then
            TeleportToPosition(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
        elseif _G.SelectedIsland == "Factory" then
            TeleportToPosition(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
        elseif _G.SelectedIsland == "Coliseu" then
            TeleportToPosition(CFrame.new(-1834.78308, 45.8297157, 1365.29724))
        elseif _G.SelectedIsland == "Cemitério" then
            TeleportToPosition(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
        elseif _G.SelectedIsland == "Two Snow Mountain" then
            TeleportToPosition(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
        elseif _G.SelectedIsland == "Punk Hazard" then
            TeleportToPosition(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
        elseif _G.SelectedIsland == "Cursed Ship" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.40197753906, 125.05712890625, 32885.875))
        elseif _G.SelectedIsland == "Ice Castle" then
            TeleportToPosition(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
        elseif _G.SelectedIsland == "Forgotten Island" then
            TeleportToPosition(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
        elseif _G.SelectedIsland == "Ussop Island" then
            TeleportToPosition(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
        elseif _G.SelectedIsland == "Grande Árvore" then
            TeleportToPosition(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
        elseif _G.SelectedIsland == "Castelo Do Mar" then
            TeleportToPosition(CFrame.new(-4993.75879, 314.555542, -2996.44507, -0.374604046, 2.25014496e-09, 0.92718488, -1.82605771e-11, 1, -2.43423437e-09, -0.92718488, -9.28805033e-10, -0.374604046))
        elseif _G.SelectedIsland == "MiniSky" then
            Tween2(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
        elseif _G.SelectedIsland == "Cidade Do Porto" then
            TeleportToPosition(CFrame.new(-301.832092, 20.6410122, 5558.41553))
        elseif _G.SelectedIsland == "Ilha da Hydra" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5753.5478515625, 610.7880859375, -282.33172607421875))
        elseif _G.SelectedIsland == "Ilha da Tartaruga" then
            TeleportToPosition(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
        elseif _G.SelectedIsland == "Mansão" then
            TeleportToPosition(CFrame.new(-12468.4482, 374.954041, -7540.47461, -0.999880493, -1.46357868e-08, -0.0154578825, -1.45267256e-08, 1, -7.16764781e-09, 0.0154578825, -6.94223878e-09, -0.999880493))
        elseif _G.SelectedIsland == "Castelo Assombrado" then
            TeleportToPosition(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
        elseif _G.SelectedIsland == "Ilha do Sorvete" then
            TeleportToPosition(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
        elseif _G.SelectedIsland == "Ilha do Amendoim" then
            TeleportToPosition(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
        elseif _G.SelectedIsland == "Ilha do Bolo" then
            TeleportToPosition(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
        elseif _G.SelectedIsland == "Ilha do Cacau" then
            TeleportToPosition(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
        elseif _G.SelectedIsland == "Ilha do Doce" then
            TeleportToPosition(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
        elseif _G.SelectedIsland == "Tiki Outpost" then
            TeleportToPosition(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
        elseif _G.SelectedIsland == "Dragon Dojo" then
            TeleportToPosition(CFrame.new(5686.61377, 1206.85498, 899.379883, -0.256126314, -2.43622562e-08, -0.966643333, 2.83967623e-08, 1, -3.27270797e-08, 0.966643333, -3.58318069e-08, -0.256126314))
        end
end})


local Section = Fruit:AddSection({"Fruta"})

Fruit:AddButton({"Girar Fruta", function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
end})

local Toggle1 = Fruit:AddToggle({
  Name = "Teleporta Para Fruta",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().TweenFruit = Value
end)
-- // LOOP DO TP PARA FRUTA COM O NOVO TOGGLE
spawn(function()
    while task.wait(0.1) do
        if getgenv().TweenFruit then
            for _, obj in pairs(workspace:GetChildren()) do
                if obj:IsA("Model") and string.find(obj.Name, "Fruit") then
                    if obj:FindFirstChild("Handle") then
                        topos(obj.Handle.CFrame * CFrame.new(0, 5, 0))
                    end
                end
            end
        end
    end
end)

local Toggle1 = Fruit:AddToggle({
    Name = "TP Fruta",
    Description = "",
    Default = false
})

Toggle1:Callback(function(Value)
    getgenv().TPFruit = Value
end)

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local function TPToPosition(targetCFrame)
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local HRP = Character:WaitForChild("HumanoidRootPart")
    HRP.CFrame = targetCFrame * CFrame.new(0, 3, 0)
end

task.spawn(function()
    while task.wait(0.3) do
        if getgenv().TPFruit then
            for _, v in pairs(workspace:GetChildren()) do
                if v:IsA("Tool") and v:FindFirstChild("Handle") and v.Name:find("Fruit") then
                    TPToPosition(v.Handle.CFrame)
                end
            end
        end
    end
end)


local Toggle1 = Fruit:AddToggle({
    Name = "Auto Guardar",
    Description = "",
    Default = false
})

Toggle1:Callback(function(Value)
    getgenv().AutoStoreFruits = Value
end)

local AutoStoreTask

local function Get_Fruit(Fruit)
    local fruitTable = {
        ["Rocket Fruit"] = "Rocket-Rocket",
        ["Spin Fruit"] = "Spin-Spin",
        ["Chop Fruit"] = "Chop-Chop",
        ["Spring Fruit"] = "Spring-Spring",
        ["Bomb Fruit"] = "Bomb-Bomb",
        ["Smoke Fruit"] = "Smoke-Smoke",
        ["Spike Fruit"] = "Spike-Spike",
        ["Flame Fruit"] = "Flame-Flame",
        ["Eagle Fruit"] = "Eagle-Eagle",
        ["Ice Fruit"] = "Ice-Ice",
        ["Sand Fruit"] = "Sand-Sand",
        ["Dark Fruit"] = "Dark-Dark",
        ["Ghost Fruit"] = "Ghost-Ghost",
        ["Diamond Fruit"] = "Diamond-Diamond",
        ["Light Fruit"] = "Light-Light",
        ["Rubber Fruit"] = "Rubber-Rubber",
        ["Magma Fruit"] = "Magma-Magma",
        ["Quake Fruit"] = "Quake-Quake",
        ["Buddha Fruit"] = "Buddha-Buddha",
        ["Love Fruit"] = "Love-Love",
        ["Spider Fruit"] = "Spider-Spider",
        ["Creation Fruit"] = "Creation-Creation",
        ["Sound Fruit"] = "Sound-Sound",
        ["Phoenix Fruit"] = "Phoenix-Phoenix",
        ["Portal Fruit"] = "Portal-Portal",
        ["Lightning Fruit"] = "Lightning-Lightning",
        ["Pain Fruit"] = "Pain-Pain",
        ["Blizzard Fruit"] = "Blizzard-Blizzard",
        ["Gravity Fruit"] = "Gravity-Gravity",
        ["Mammoth Fruit"] = "Mammoth-Mammoth",
        ["Dough Fruit"] = "Dough-Dough",
        ["Shadow Fruit"] = "Shadow-Shadow",
        ["Venom Fruit"] = "Venom-Venom",
        ["Control Fruit"] = "Control-Control",
        ["Gas Fruit"] = "Gas-Gas",
        ["Spirit Fruit"] = "Spirit-Spirit",
        ["Tiger Fruit"] = "Tiger-Tiger",
        ["Yeti Fruit"] = "Yeti-Yeti",
        ["Kitsune Fruit"] = "Kitsune-Kitsune",
        ["Dragon East Fruit"] = "Dragon-Dragon",
        ["Dragon West Fruit"] = "Dragon-Dragon"
    }
    return fruitTable[Fruit]
end

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

task.spawn(function()
    while true do
        task.wait(1)
        if not getgenv().AutoStoreFruits then
            AutoStoreTask = nil
            continue
        end

        pcall(function()
            if not Player.Character then return end

            local function StoreIfNotStored(Fruit)
                if Fruit:IsA("Tool") and Fruit:FindFirstChild("Fruit") then
                    local fruitName = Get_Fruit(Fruit.Name)
                    if fruitName then
                        local stored = ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckFruit", fruitName)
                        if not stored then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("StoreFruit", fruitName, Fruit)
                        end
                    end
                end
            end

            for _, Fruit in pairs(Player.Character:GetChildren()) do
                StoreIfNotStored(Fruit)
            end

            for _, Fruit in pairs(Player.Backpack:GetChildren()) do
                StoreIfNotStored(Fruit)
            end
        end)
    end
end)

local Section = Fruit:AddSection({"Ver Stock"})

local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Remote = game.ReplicatedStorage.Remotes.CommF_

local function FormatNumber(num)
	num = tostring(num)
	return num:reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "")
end

-- Função para criar uma GUI com o Stock
local function CreateStockGUI(title, advanced)
	local Gui = Instance.new("ScreenGui", PlayerGui)
	Gui.Name = title .. "_StockGUI"

	local Frame = Instance.new("Frame", Gui)
	Frame.Size = UDim2.new(0, 300, 0, 350)
	Frame.Position = UDim2.new(0.5, -150, 0.5, -175)
	Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Frame.BorderSizePixel = 0
	Instance.new("UICorner", Frame)

	local Label = Instance.new("TextLabel", Frame)
	Label.Size = UDim2.new(1, 0, 0, 35)
	Label.BackgroundTransparency = 1
	Label.Text = title
	Label.TextColor3 = Color3.fromRGB(255,255,255)
	Label.Font = Enum.Font.GothamBold
	Label.TextSize = 18

	local Content = Instance.new("TextLabel", Frame)
	Content.Position = UDim2.new(0, 10, 0, 40)
	Content.Size = UDim2.new(1, -20, 1, -50)
	Content.BackgroundTransparency = 1
	Content.TextColor3 = Color3.fromRGB(200,200,200)
	Content.Font = Enum.Font.Gotham
	Content.TextSize = 14
	Content.TextWrapped = true
	Content.TextXAlignment = Enum.TextXAlignment.Left
	Content.TextYAlignment = Enum.TextYAlignment.Top
	Content.Text = "Loading..."

	-- Botão fechar
	local Close = Instance.new("TextButton", Frame)
	Close.Size = UDim2.new(0, 30, 0, 30)
	Close.Position = UDim2.new(1, -35, 0, 5)
	Close.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
	Close.Text = "X"
	Close.TextColor3 = Color3.new(1,1,1)
	Close.Font = Enum.Font.GothamBold
	Close.TextSize = 14
	Instance.new("UICorner", Close)

	Close.MouseButton1Click:Connect(function()
		Gui:Destroy()
	end)

	-- Função para atualizar
	local function UpdateStock()
		local text = ""

		local ok, result = pcall(function()
			if advanced then
				return Remote:InvokeServer("GetFruits", true)
			else
				return Remote:InvokeServer("GetFruits")
			end
		end)

		if ok and result then
			for _, fruit in pairs(result) do
				if fruit.OnSale then
					text = text .. "• " .. fruit.Name .. " — $" .. FormatNumber(fruit.Price) .. "\n"
				end
			end
		else
			text = "Error loading stock."
		end

		if text == "" then
			text = "Nenhuma fruta disponível."
		end

		Content.Text = text
	end

	UpdateStock()

	-- Atualiza a cada 60s
	task.spawn(function()
		while Gui.Parent do
			task.wait(60)
			UpdateStock()
		end
	end)
end

Fruit:AddButton({"Ver Normal Stock", function()
        CreateStockGUI("🍏 Normal Fruit Stock", false)
end})

Fruit:AddButton({"Ver Advanced Stock", function()
        CreateStockGUI("🔥 Advanced Fruit Stock", true)
end})


local Section = Fruit:AddSection({"Raid"})

-- Dropdown Selecionar Chip
local SelectChipDropdown = Fruit:AddDropdown({
    Name = "Selecionar Chip",
    Description = "",
    Options = {
        "Flame",
        "Ice",
        "Sand",
        "Dark",
        "Light",
        "Magma",
        "Quake",
        "Buddha",
        "Spider",
        "Phoenix",
        "Lightning",
        "Dough"
    },
    Default = "Flame",
    Flag = "SelectChip",
})

SelectChipDropdown:Callback(function(Value)
    _G.SelectChip = Value
end)


local AutoBuyChipToggle = Fruit:AddToggle({
    Name = "Auto Comprar Chip",
    Description = "",
    Default = false
})

AutoBuyChipToggle:Callback(function(Value)
    _G.AutoBuyChip = Value
end)
task.spawn(function()
    while task.wait(1) do
        if _G.AutoBuyChip and _G.SelectChip then
            pcall(function()
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer(
                    "RaidsNpc",
                    "Select",
                    _G.SelectChip
                )
            end)
        end
    end
end)


-- Toggle Auto Start Raid
local ToggleStartRaid = Fruit:AddToggle({
    Name = "Auto Start Raid",
    Description = "",
    Default = false
})

ToggleStartRaid:Callback(function(Value)
    _G.StartRaid = Value
end)

-- Loop Auto Start Raid
task.spawn(function()
    while task.wait(0.5) do
        if not _G.StartRaid then
            continue
        end

        pcall(function()
            local player = game.Players.LocalPlayer
            local gui = player.PlayerGui:FindFirstChild("Main")
            if not gui then return end

            local hasChip =
                player.Backpack:FindFirstChild("Special Microchip")
                or (player.Character and player.Character:FindFirstChild("Special Microchip"))

            -- Só inicia se não tiver raid ativa
            if not gui.Timer.Visible
            and not workspace._WorldOrigin.Locations:FindFirstChild("Island 1")
            and hasChip then

                if World2 then
                    topos(CFrame.new(-6438.73, 250.64, -4501.5))
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SetSpawnPoint")
                    fireclickdetector(
                        workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector
                    )

                elseif World3 then
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-5075.5, 314.51, -3150.02)
                    )
                    topos(CFrame.new(-5017.4, 314.84, -2823.01))
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SetSpawnPoint")
                    fireclickdetector(
                        workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector
                    )
                end
            end
        end)
    end
end)


-------------------------------------------------
-- TOGGLE
-------------------------------------------------
local Toggle1 = Fruit:AddToggle({ 
    Name = "Auto Farm Raid Next Island", 
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.Dungeon = Value

    -- Remove float ao desligar
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") and not Value then
        local hrp = char.HumanoidRootPart
        if hrp:FindFirstChild("StayBV") then
            hrp.StayBV:Destroy()
        end
    end
end)

-------------------------------------------------
-- FLOAT NA ISLAND
-------------------------------------------------
local function StayAboveIsland()
    local char = game.Players.LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    if not hrp:FindFirstChild("StayBV") then
        local bv = Instance.new("BodyVelocity")
        bv.Name = "StayBV"
        bv.MaxForce = Vector3.new(0, 1e9, 0)
        bv.Velocity = Vector3.new(0, 0, 0)
        bv.Parent = hrp
    end
end

-------------------------------------------------
-- FUNÇÕES DE ILHA
-------------------------------------------------
local function GetIsland(id)
    local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
    local closest, dist = nil, math.huge

    for _, island in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
        if island.Name == "Island " .. id then
            local mag = (island.Position - hrp.Position).Magnitude
            if mag < dist then
                dist = mag
                closest = island
            end
        end
    end
    return closest
end

local function GetNextIsland()
    for i = 5, 1, -1 do
        local island = GetIsland(i)
        if island then
            return island
        end
    end
end

-------------------------------------------------
-- BRING MOB
-------------------------------------------------
local function BringMobs(targetHRP)
    for _, v in pairs(workspace.Enemies:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart")
        and v:FindFirstChild("Humanoid")
        and v.Humanoid.Health > 0 then

            local dist = (v.HumanoidRootPart.Position - targetHRP.Position).Magnitude
            if dist <= 1000 then
                v.HumanoidRootPart.CFrame = targetHRP.CFrame
                v.HumanoidRootPart.Velocity = Vector3.zero
                v.Humanoid:ChangeState(11)
            end
        end
    end
end

-------------------------------------------------
-- FARM INIMIGOS
-------------------------------------------------
local function FarmEnemies()
    local player = game.Players.LocalPlayer
    local hrp = player.Character.HumanoidRootPart

    for _, mob in pairs(workspace.Enemies:GetChildren()) do
        if not _G.Dungeon then return end

        if mob:FindFirstChild("HumanoidRootPart")
        and mob:FindFirstChild("Humanoid")
        and mob.Humanoid.Health > 0 then

            local dist = (mob.HumanoidRootPart.Position - hrp.Position).Magnitude
            if dist <= 1000 then
                repeat
                    task.wait(0.05)

                    EquipWeapon(getgenv().SelectWeapon)

                    -- Micro movimento (Fast Attack)
                    hrp.Velocity = Vector3.new(
                        math.random(-2,2),
                        -1,
                        math.random(-2,2)
                    )

                    -- Linha exata que você quer
                    topos(mob.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))

                    BringMobs(mob.HumanoidRootPart)

                until not _G.Dungeon
                or not mob.Parent
                or mob.Humanoid.Health <= 0
            end
        end
    end
end

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    while task.wait(0.3) do
        if _G.Dungeon then
            FarmEnemies()

            local island = GetNextIsland()
            if island then
                -- Mantém flutuando na island
                StayAboveIsland()
                topos(island.CFrame * CFrame.new(0, 60, 0))
            end
        end
    end
end)

local Section = Fruit:AddSection({"Dungeon"})

-------------------------------------------------
-- TOGGLE
-------------------------------------------------
local Toggle1 = Fruit:AddToggle({ 
    Name = "Auto Farm Dungeon (Exit TP)", 
    Description = "",
    Default = false 
})

Toggle1:Callback(function(Value)
    _G.Dungeon = Value

    -- Remove float ao desligar
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") and not Value then
        local hrp = char.HumanoidRootPart
        if hrp:FindFirstChild("StayBV") then
            hrp.StayBV:Destroy()
        end
    end
end)

-------------------------------------------------
-- FLOAT
-------------------------------------------------
local function StayAbove()
    local char = game.Players.LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    if not hrp:FindFirstChild("StayBV") then
        local bv = Instance.new("BodyVelocity")
        bv.Name = "StayBV"
        bv.MaxForce = Vector3.new(0, 1e9, 0)
        bv.Velocity = Vector3.zero
        bv.Parent = hrp
    end
end

-------------------------------------------------
-- DUNGEON INFO
-------------------------------------------------
local function GetDungeonFolder()
    return workspace:FindFirstChild("Map")
        and workspace.Map:FindFirstChild("Dungeon")
end

local function GetExitTeleporter(floor)
    local dungeon = GetDungeonFolder()
    if not dungeon then return nil end

    local f = dungeon:FindFirstChild(tostring(floor))
    if not f then return nil end

    return f:FindFirstChild("ExitTeleporter")
        and f.ExitTeleporter:FindFirstChild("Root")
end

-------------------------------------------------
-- ANDAR ATUAL (detecta pelo TP mais próximo)
-------------------------------------------------
local function GetCurrentFloor()
    local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
    local dungeon = GetDungeonFolder()
    if not dungeon then return 1 end

    local closest, dist = 1, math.huge

    for i = 1, 15 do
        local floor = dungeon:FindFirstChild(tostring(i))
        if floor and floor:IsA("Model") then
            for _, v in pairs(floor:GetDescendants()) do
                if v:IsA("BasePart") then
                    local mag = (v.Position - hrp.Position).Magnitude
                    if mag < dist then
                        dist = mag
                        closest = i
                    end
                end
            end
        end
    end

    return closest
end

-------------------------------------------------
-- BRING MOB
-------------------------------------------------
local function BringMobs(targetHRP)
    for _, v in pairs(workspace.Enemies:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart")
        and v:FindFirstChild("Humanoid")
        and v.Humanoid.Health > 0 then

            if (v.HumanoidRootPart.Position - targetHRP.Position).Magnitude <= 1000 then
                v.HumanoidRootPart.CFrame = targetHRP.CFrame
                v.HumanoidRootPart.Velocity = Vector3.zero
                v.Humanoid:ChangeState(11)
            end
        end
    end
end

-------------------------------------------------
-- FARM
-------------------------------------------------
local function FarmEnemies()
    local plr = game.Players.LocalPlayer
    if not plr.Character then return end
    local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    for _, mob in pairs(workspace.Enemies:GetChildren()) do
        if not _G.Dungeon then return end

        if mob:FindFirstChild("HumanoidRootPart")
        and mob:FindFirstChild("Humanoid")
        and mob.Humanoid.Health > 0 then

            if (mob.HumanoidRootPart.Position - hrp.Position).Magnitude <= 1000 then
                repeat
                    task.wait(0.05)

                    EquipWeapon(getgenv().SelectWeapon)

                    hrp.Velocity = Vector3.new(
                        math.random(-2,2),
                        -1,
                        math.random(-2,2)
                    )

                    topos(mob.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                    BringMobs(mob.HumanoidRootPart)

                until not _G.Dungeon
                or not mob.Parent
                or mob.Humanoid.Health <= 0
            end
        end
    end
end

-------------------------------------------------
-- LOOP PRINCIPAL
-------------------------------------------------
task.spawn(function()
    while task.wait(0.3) do
        if not _G.Dungeon then continue end

        FarmEnemies()
        StayAbove()

        local currentFloor = GetCurrentFloor()
        local exitTP = GetExitTeleporter(currentFloor)

        -- Se o ExitTeleporter existir, sobe
        if exitTP then
            topos(exitTP.CFrame * CFrame.new(0, 5, 0))
            task.wait(1)
        end
    end
end)
-----Sea Event-----

-- Ship Speed
Sea:AddSlider({
    Name = "Ship Speed",
    Min = 0,
    Max = 1000,
    Default = 300,
    Increment = 1,
    Callback = function(Value)
        SetSpeedBoat = Value
    end
})
-- Selecionar Zona
Sea:AddDropdown({
    Name = "Selecionar Zona",
    Options = {
        "Zone 1",
        "Zone 2",
        "Zone 3",
        "Zone 4",
        "Zone 5",
        "Zone 6"
    },
    Callback = function(Value)
        getgenv().SelectedZone = Value
    end
})

-- Selecionar Barco
Sea:AddDropdown({
    Name = "Selecionar Barco",
    Options = {
        "Guardian",
        "PirateGrandBrigade",
        "MarineGrandBrigade",
        "PirateBrigade",
        "MarineBrigade",
        "PirateSloop",
        "MarineSloop",
        "BeastHunter"
    },
    Callback = function(Value)
        getgenv().SelectedBoat = Value
    end
})

-- Velocidade do Barco
Sea:AddDropdown({
    Name = "Velocidade do Barco",
    Options = {"180", "200", "250", "300", "325", "350"},
    Default = "300",
    Callback = function(Value)
        getgenv().SpeedBoat = tonumber(Value)
    end
})
spawn(function()
    pcall(function()
        while wait() do
            if getgenv().SelectedZone == "Zone 1" then
                CFrameSelectedZone = CFrame.new(
                    -21998.375, 30.0006084, -682.309143,
                    0.120013528, 0.00690158736, 0.99274826,
                    -0.0574118942, 0.998350561, -2.36509201e-10,
                    -0.991110802, -0.0569955558, 0.120211802
                )
            elseif getgenv().SelectedZone == "Zone 2" then
                CFrameSelectedZone = CFrame.new(
                    -26779.5215, 30.0005474, -822.858032,
                    0.307457417, 0.019647358, 0.951358974,
                    -0.0637726262, 0.997964442, -4.15334017e-10,
                    -0.949422479, -0.0606706589, 0.308084518
                )
            elseif getgenv().SelectedZone == "Zone 3" then
                CFrameSelectedZone = CFrame.new(
                    -31171.957, 30.0001011, -2256.93774,
                    0.37637493, 0.0150483791, 0.926345229,
                    -0.0399504974, 0.999201655, 2.70896673e-11,
                    -0.925605655, -0.0370079502, 0.376675636
                )
            elseif getgenv().SelectedZone == "Zone 4" then
                CFrameSelectedZone = CFrame.new(
                    -34054.6875, 30.2187767, -2560.12012,
                    0.0935864747, -0.00122954219, 0.995610416,
                    0.0624034069, 0.998040259, -0.00463332096,
                    -0.993653536, 0.062563099, 0.0934797972
                )
            elseif getgenv().SelectedZone == "Zone 5" then
                CFrameSelectedZone = CFrame.new(
                    -38887.5547, 30.0004578, -2162.99023,
                    -0.188895494, -0.00704088295, 0.981971979,
                    -0.0372481011, 0.999306023, -1.39882339e-09,
                    -0.981290519, -0.0365765914, -0.189026669
                )
            elseif getgenv().SelectedZone == "Zone 6" then
                CFrameSelectedZone = CFrame.new(
                    -44541.7617, 30.0003204, -1244.8584,
                    -0.0844199061, -0.00553312758, 0.9964149,
                    -0.0654025897, 0.997858942, 2.02319411e-10,
                    -0.99428153, -0.0651681125, -0.0846010372
                )
            end
        end
    end)
end)
-- Auto Penetra Rochas
Sea:AddToggle({
    Name = "Auto Penetra Rochas Quando o Barco Passa",
    Default = true,
    Callback = function(Value)
        getgenv().GoThroughRocks = Value
    end
})
spawn(function()
    while task.wait(1) do
        if getgenv().GoThroughRocks or getgenv().SailBoat then
            for _, boat in ipairs(game:GetService("Workspace").Boats:GetChildren()) do
                for _, part in ipairs(boat:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        else
            for _, boat in ipairs(game:GetService("Workspace").Boats:GetChildren()) do
                for _, part in ipairs(boat:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
            end
        end
    end
end)
-- Auto Sea Event
Sea:AddToggle({
    Name = "Auto Sea Event",
    Default = false,
    Callback = function(Value)
        getgenv().SailBoat = Value
        StopTween(Value)
    end
})
function CheckBoat()
    local workspace = game:GetService("Workspace")
    local boats = workspace:FindFirstChild("Boats")
    local selectedBoat = getgenv().SelectedBoat
    if not (boats and selectedBoat) then
        return false
    end
    for _, boat in pairs(boats:GetChildren()) do
        if boat.Name == selectedBoat then
            if boat:FindFirstChild("MyBoatEsp") then
                return boat
            end
        end
    end
    return false
end
function CheckEnemiesBoat()
    local enemies = game:GetService("Workspace"):FindFirstChild("Enemies")    
    if not enemies then
        return false
    end
    return enemies:FindFirstChild("FishBoat") 
        or enemies:FindFirstChild("PirateBrigade") 
        or enemies:FindFirstChild("PirateGrandBrigade") 
        and true or false
end
function CheckShark()
    local workspace = game:GetService("Workspace")
    local enemies = workspace:FindFirstChild("Enemies")
    local player = game.Players.LocalPlayer
    local character = player and player.Character
    local rootPart = character and character:FindFirstChild("HumanoidRootPart")
    if not (enemies and rootPart) then
        return false
    end
    for _, v in pairs(enemies:GetChildren()) do
        local humanoid = v:FindFirstChild("Humanoid")
        local enemyRoot = v:FindFirstChild("HumanoidRootPart")
        if v.Name == "Shark" and humanoid and enemyRoot and humanoid.Health > 0 then
            if (enemyRoot.Position - rootPart.Position).Magnitude <= 200 then
                return true
            end
        end
    end
    return false
end
function CheckPiranha()
    local workspace = game:GetService("Workspace")
    local enemies = workspace:FindFirstChild("Enemies")
    local player = game.Players.LocalPlayer
    local character = player and player.Character
    local rootPart = character and character:FindFirstChild("HumanoidRootPart")
    if not (enemies and rootPart) then
        return false
    end
    for _, v in pairs(enemies:GetChildren()) do
        local humanoid = v:FindFirstChild("Humanoid")
        local enemyRoot = v:FindFirstChild("HumanoidRootPart")
        if v.Name == "Piranha" and humanoid and enemyRoot and humanoid.Health > 0 then
            if (enemyRoot.Position - rootPart.Position).Magnitude <= 200 then
                return true
            end
        end
    end
    return false
end
function AddEsp(Name, Parent)
    if not Parent or not Parent:IsA("Instance") then
        return
    end
    local BillboardGui = Instance.new("BillboardGui")
    local TextLabel = Instance.new("TextLabel")
    BillboardGui.Name = Name
    BillboardGui.Parent = Parent
    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    BillboardGui.AlwaysOnTop = true
    BillboardGui.Size = UDim2.new(0, 200, 0, 50)
    BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
    TextLabel.Parent = BillboardGui
    TextLabel.BackgroundTransparency = 1
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.TextSize = 15
    TextLabel.Text = "YOUR BOAT IS HERE↓"
    return BillboardGui
end
spawn(function()
    while wait(0.2) do
        pcall(function()
            if getgenv().SailBoat then
                if not CheckBoat() then
                    BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781)                    
                    if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                        topos(CFrame.new(-16224, 9, 439))
                    else
                        buyb = topos(BuyBoatCFrame)
                    end
                    if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position 
                        - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then                        
                        if buyb then buyb:Stop() end
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", getgenv().SelectedBoat)
                        for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                            if v.Name == getgenv().SelectedBoat then
                                if (v.VehicleSeat.CFrame.Position 
                                    - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                    AddEsp('MyBoatEsp', v)
                                end
                            end
                        end
                    end
                elseif CheckBoat() then
                    for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                        if v.Name == getgenv().SelectedBoat then
                            if v:FindFirstChild("MyBoatEsp") then
                                if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                    if ((CheckShark() and getgenv().AutoKillShark) 
                                        or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and getgenv().AutoTerrorshark) 
                                        or (CheckPiranha() and getgenv().AutoKillPiranha) 
                                        or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and getgenv().AutoKillFishCrew) 
                                        or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and getgenv().RelzFishBoat) 
                                        or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and getgenv().RelzPirateBrigade) 
                                        or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and getgenv().RelzPirateGrandBrigade) 
                                        or (CheckSeaBeast() and getgenv().AutoSeaBest)) then                                        
                                        if stoppos then stoppos:Stop() end
                                    else
                                        stoppos = topos(v.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                    end
                                else
                                    repeat 
                                        wait()
                                        stopboat = TPB(CFrameSelectedZone, v.VehicleSeat)
                                    until ((CheckShark() and getgenv().AutoKillShark) 
                                        or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and getgenv().AutoTerrorshark) 
                                        or (CheckPiranha() and getgenv().AutoKillPiranha) 
                                        or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and getgenv().AutoKillFishCrew) 
                                        or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and getgenv().RelzFishBoat) 
                                        or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and getgenv().RelzPirateBrigade) 
                                        or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and getgenv().RelzPirateGrandBrigade) 
                                        or (CheckSeaBeast() and getgenv().AutoSeaBest)) 
                                        or game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false 
                                        or getgenv().SailBoat == false                                    
                                    if stopboat then stopboat:Stop() end
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                                    wait(0.1)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        while task.wait(0.2) do
            
            if getgenv().SailBoat then
                local enemies = game:GetService("Workspace").Enemies
                local hasEnemy = false

                if (CheckShark() and getgenv().AutoKillShark) or 
                   (enemies:FindFirstChild("Terrorshark") and getgenv().AutoTerrorshark) or 
                   (CheckPiranha() and getgenv().AutoKillPiranha) or 
                   (enemies:FindFirstChild("Fish Crew Member") and getgenv().AutoKillFishCrew) or 
                   (enemies:FindFirstChild("FishBoat") and getgenv().RelzFishBoat) or 
                   (enemies:FindFirstChild("PirateBrigade") and getgenv().RelzPirateBrigade) or 
                   (enemies:FindFirstChild("PirateGrandBrigade") and getgenv().RelzPirateGrandBrigade) or 
                   (CheckSeaBeast() and getgenv().AutoSeaBest) then
                    hasEnemy = true
                end

                if hasEnemy then
                    local player = game.Players.LocalPlayer
                    local char = player.Character
                    local humanoid = char and char:FindFirstChild("Humanoid")

                    if humanoid and humanoid.Sit then
                        local vim = game:GetService("VirtualInputManager")
                        -- simula tecla de pulo para levantar o personagem
                        vim:SendKeyEvent(true, 32, false, game)
                        task.wait(0.1)
                        vim:SendKeyEvent(false, 32, false, game)
                    end
                end
            end
        end
    end)
end)

spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if not getgenv().SailBoat then return end            
            local enemies = game:GetService("Workspace").Enemies:GetChildren()
            if getgenv().AutoKillFishCrew then
                for _, enemy in pairs(enemies) do
                    if enemy.Name == "Fish Crew Member" and enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") and enemy.Humanoid.Health > 0 then
                        StartBring = true
                        repeat
                            task.wait()
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)
                            local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                            local enemyPos = enemy.HumanoidRootPart.Position
                            if (enemyPos - playerPos).Magnitude > 5 then
                                topos(enemy.HumanoidRootPart.CFrame * Pos)
                            end
                            getgenv().SeaSkill = false
                        until not getgenv().AutoKillFishCrew or not enemy.Parent or enemy.Humanoid.Health <= 0
                        StartBring = false
                    end
                end
            end
            if getgenv().RelzFishBoat then
                for _, enemy in pairs(enemies) do
                    if enemy:FindFirstChild("Engine") then
                        local boatCFrame = enemy.Engine.CFrame
                        repeat
                            task.wait()
                            local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position                            
                            if (boatCFrame.Position - playerPos).Magnitude > 5 then
                                topos(boatCFrame)
                            end
                            getgenv().SeaSkill = (boatCFrame.Position - playerPos).Magnitude <= 50
                            Skillaimbot = true
                            AimBotSkillPosition = boatCFrame.Position + Vector3.new(0, -15, 0)
                        until not enemy.Parent or enemy.Health < 0 or not getgenv().RelzFishBoat
                        Skillaimbot = false
                        getgenv().SeaSkill = false
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if not getgenv().SailBoat then return end
            local enemies = game:GetService("Workspace").Enemies:GetChildren()
            if getgenv().AutoKillFishCrew then
                for _, enemy in pairs(enemies) do
                    if enemy.Name == "Fish Crew Member" and enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") and enemy.Humanoid.Health > 0 then
                        getgenv().StartMagnet = true
                        repeat
                            task.wait()
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)
                            topos(enemy.HumanoidRootPart.CFrame * Pos)
                            getgenv().SeaSkill = false
                        until not getgenv().AutoKillFishCrew or not enemy.Parent or enemy.Humanoid.Health <= 0
                        getgenv().StartMagnet = false
                    end
                end
            elseif getgenv().RelzFishBoat then
                for _, enemy in pairs(enemies) do
                    if enemy:FindFirstChild("Engine") then
                        local boatCFrame = enemy.Engine.CFrame
                        repeat
                            task.wait()
                            local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                            getgenv().SeaSkill = (boatCFrame.Position - playerPos).Magnitude <= 50                            
                            if (boatCFrame.Position - playerPos).Magnitude > 5 then
                                topos(boatCFrame)
                            end
                            Skillaimbot = true
                            AimBotSkillPosition = boatCFrame.Position + Vector3.new(0, -15, 0)
                        until not enemy.Parent or enemy.Health < 0 or not getgenv().RelzFishBoat
                        Skillaimbot = false
                        getgenv().SeaSkill = false
                    end
                end
            end
        end)
    end
end)
-- Auto Shark
Sea:AddToggle({
    Name = "Auto Shark",
    Default = false,
    Callback = function(Value)
        getgenv().AutoKillShark = Value
        StopTween(Value)
    end
})

-- Auto Piranha
Sea:AddToggle({
    Name = "Auto Piranha",
    Default = false,
    Callback = function(Value)
        getgenv().AutoKillPiranha = Value
        StopTween(Value)
    end
})

-- Auto Fish Crew
Sea:AddToggle({
    Name = "Auto Fish Crew",
    Default = false,
    Callback = function(Value)
        getgenv().AutoKillFishCrew = Value
        StopTween(Value)
    end
})
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            local player = game.Players.LocalPlayer
            local char = player and player.Character
            local root = char and char:FindFirstChild("HumanoidRootPart")
            if not root then return end            
            local enemies = game:GetService("Workspace").Enemies:GetChildren()
            if getgenv().AutoKillShark and World3 then
                for _, v in pairs(enemies) do
                    if v.Name == "Shark" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if (v.HumanoidRootPart.Position - root.Position).Magnitude <= 500 then
                            EquipWeapon(getgenv().SelectWeapon)
                            repeat
                                task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                v.HumanoidRootPart.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * Pos)
                            until not getgenv().AutoKillShark or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end
            if getgenv().AutoKillPiranha and World3 then
                for _, v in pairs(enemies) do
                    if v.Name == "Piranha" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if (v.HumanoidRootPart.Position - root.Position).Magnitude <= 500 then
                            EquipWeapon(getgenv().SelectWeapon)
                            repeat
                                task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                v.HumanoidRootPart.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * Pos)
                            until not getgenv().AutoKillPiranha or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end
            if getgenv().AutoKillFishCrew and World3 then
                for _, v in pairs(enemies) do
                    if v.Name == "Fish Crew Member" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if (v.HumanoidRootPart.Position - root.Position).Magnitude <= 500 then
                            EquipWeapon(getgenv().SelectWeapon)
                            repeat
                                task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                v.HumanoidRootPart.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                MonFarm = v.Name
                                PosMon = v.HumanoidRootPart.CFrame
                            until not getgenv().AutoKillFishCrew or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end
            if getgenv().AutoTerrorshark and World3 then
                for _, v in pairs(enemies) do
                    if v.Name == "Terrorshark" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        EquipWeapon(getgenv().SelectWeapon)
                        repeat
                            task.wait(0.1)
                            AutoHaki()
                            EquipWeapon(getgenv().SelectWeapon)
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            if char.Humanoid.Health < 2000 then
                                fastpos(v.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0))
                                task.wait(1)
                            else
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 55, 0))
                            end
                            TerrorSharkpos = v.HumanoidRootPart.CFrame
                        until not getgenv().AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if getgenv().AutoTerrorshark then
                local player = game.Players.LocalPlayer
                local char = player and player.Character
                local root = char and char:FindFirstChild("HumanoidRootPart")
                if not root then return end                
                local shark = game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark")
                if shark and shark:FindFirstChild("HumanoidRootPart") then
                    if (shark.HumanoidRootPart.Position - root.Position).Magnitude <= 150 then
                        repeat
                            task.wait()
                        until not getgenv().AutoTerrorshark
                    end
                end
            end
        end)
    end
end)
function UpDownPos(pos)
    if typeof(pos) ~= "CFrame" then return end
    fastpos(pos * CFrame.new(0, 40, 0))
    task.wait(1)
    fastpos(pos * CFrame.new(0, 300, 0))
    task.wait(2)
end
-- Auto Ghost Ship
Sea:AddToggle({
    Name = "Auto Ghost Ship",
    Default = false,
    Callback = function(Value)
        getgenv().RelzFishBoat = Value
        StopTween(Value)
        if not Value then
            getgenv().SeaSkill = false
            Skillaimbot = false
        end
    end
})

-- Auto Pirate Brigade
Sea:AddToggle({
    Name = "Auto Pirate Brigade",
    Default = false,
    Callback = function(Value)
        getgenv().RelzPirateBrigade = Value
        StopTween(Value)
    end
})




------shop --------
local codes = {
    "WildDares",
    "BossBuild",
    "GetPranked",
    "Sub2OfficialNoobie",
    "Sub2Daigrock",
    "Sub2NoobMaster123",
    "Bluxxy",
    "JCWK",
    "Enyu_is_Pro",
    "Sub2Fer999",
    "kittgaming",
    "TheGreatAce",
    "StrawHatMaine",
    "TantaiGaming",
    "Axiore",
    "SUB2GAMERROBOT_EXP1",
    "MagicBus",
    "StarcodeHEO",
    "Sub2CaptainMaui",
    "FIGHT4FRUIT",
    "EARN_FRUITS",
}

Shop:AddButton({
    "Resgatar Codigos",
    function()
        local delayBetweenRequests = 0.5

        local function RedeemCode(value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end

        for _, v in pairs(codes) do
            task.spawn(function()
                RedeemCode(v)
                task.wait(delayBetweenRequests)
            end)
        end
    end
})


local Estilo = Shop:AddSection({"Estilos De Lutas"})

Shop:AddButton({"Black Leg", function()

    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    local Player = Players.LocalPlayer
    local Remotes = ReplicatedStorage:WaitForChild("Remotes")
    local CommF_Remote = Remotes:WaitForChild("CommF_")

    local BlackLegCFrame

    if Sea1 then
        BlackLegCFrame = CFrame.new(-987.518066, 13.7870522, 3988.70605, -0.607431293, 7.52590523e-08, -0.794372201, 8.1810434e-08, 1, 3.21824345e-08, 0.794372201, -4.54393145e-08, -0.607431293) -- SEA 1
    elseif Sea2 then
        BlackLegCFrame = CFrame.new(-4991.45264, 42.7050362, -4501.51514, -0.218945563, 4.65661287e-09, 0.975737095, -6.30680006e-08, 1, -2.46800482e-08, -0.975737035, -6.68223947e-08, -0.218945593) -- SEA 2
    elseif Sea3 then
        BlackLegCFrame = CFrame.new(-5041.89258, 371.348022, -3176.3645,0.635458767, -6.51252137e-08, 0.772134781,-4.38871055e-08, 1, 1.20462985e-07,-0.772134781, -1.10436019e-07, 0.635458767) -- SEA 3
    end

    local char = Player.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp or not BlackLegCFrame then return end

    local oldCFrame = hrp.CFrame

    hrp.CFrame = BlackLegCFrame
    task.wait(0.5)

    pcall(function()
        CommF_Remote:InvokeServer("BuyBlackLeg")
    end)

    task.wait(0.5)

    hrp.CFrame = oldCFrame

end})

Shop:AddButton({"Electro", function()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF_Remote = Remotes:WaitForChild("CommF_")

local ElectroCFrame

if Sea1 then
    ElectroCFrame = CFrame.new(-5386.11328, 13.6967278, -2148.62183, -0.140635401, 5.53933677e-10, -0.990061462, 1.77915238e-09, 1, 3.06770748e-10, 0.990061462, -1.71832737e-09, -0.140635401) -- SEA 1
elseif Sea2 then
    ElectroCFrame = CFrame.new(-4949.58496, 42.269043, -4439.55176, -0.999497354, -3.29182832e-08, -0.0317031071, -3.58877585e-08, 1, 9.30960411e-08, 0.0317031071, 9.41870013e-08, -0.999497354) -- SEA 2
elseif Sea3 then
    ElectroCFrame = CFrame.new(-4991.88379, 314.550995, -3203.14795, -0.346307486, -4.93926429e-08, 0.93812108, -6.97880864e-10, 1, 5.23929806e-08, -0.93812108, 1.74893842e-08, -0.346307486) -- SEA 3
end

 local char = Player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp or not ElectroCFrame then return end

        local oldCFrame = hrp.CFrame

        hrp.CFrame = ElectroCFrame
        task.wait(0.5)

        pcall(function()
            return CommF_Remote:InvokeServer("BuyElectro")
        end)
              
        task.wait(0.5)

        hrp.CFrame = oldCFrame

end})


Shop:AddButton({"Fishman Karate", function()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF_Remote = Remotes:WaitForChild("CommF_")

local FishmanKarateCFrame

if Sea1 then
    FishmanKarateCFrame = CFrame.new(61581.1562, 18.9060364, 986.073792, -0.255703419, 1.54686024e-08, -0.966755271, -2.58013291e-08, 1, 2.28248975e-08, 0.966755271, 3.07799759e-08, -0.255703419) -- SEA 1
elseif Sea2 then
    FishmanKarateCFrame = CFrame.new(-4985.33447, 42.269043, -4459.22266, -0.602542937, 4.28864553e-08, 0.798086464, -6.15731688e-09, 1, -5.83852824e-08, -0.798086464, -4.00937097e-08, -0.602542937) -- SEA 2
elseif Sea3 then
    FishmanKarateCFrame = CFrame.new(-5020.99854, 371.348022, -3185.0188, 0.939474165, -2.79029688e-08, 0.342619687, -1.24160735e-08, 1, 1.15485335e-07, -0.342619687, -1.12749483e-07, 0.939474165) -- SEA 3
end

local char = Player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp or not FishmanKarateCFrame then return end

        local oldCFrame = hrp.CFrame

        hrp.CFrame = FishmanKarateCFrame
        task.wait(0.5)

        pcall(function()
            return CommF_Remote:InvokeServer("BuyFishmanKarate")
        end)
       
        task.wait(0.5)

        hrp.CFrame = oldCFrame

end})


Shop:AddButton({"Dragon Claw", function()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF_Remote = Remotes:WaitForChild("CommF_")

local DragonBreathCFrame

if Sea2 then
    DragonBreathCFrame = CFrame.new(1384.20996, 247.55751, -5191.08984, -0.105659857, 1.14118691e-07, 0.994402349, -8.83555035e-11, 1, -1.14770479e-07, -0.994402349, -1.22144925e-08, -0.105659857) -- SEA 2
elseif Sea3 then
    DragonBreathCFrame = CFrame.new(-4979.09424, 371.347961, -3204.54907, 0.820647717, 4.9866749e-08, 0.571434438, -9.74734604e-09, 1, -7.32675645e-08, -0.571434438, 5.45568923e-08, 0.820647717) -- SEA 3
end

local char = Player.Character
local hrp = char and char:FindFirstChild("HumanoidRootPart")
if not hrp or not DragonBreathCFrame then return end

local oldCFrame = hrp.CFrame

hrp.CFrame = DragonBreathCFrame
task.wait(0.5)

pcall(function()
    CommF_Remote:InvokeServer("BlackbeardReward", "DragonClaw", "1")
end)

task.wait(0.3)

pcall(function()
    CommF_Remote:InvokeServer("BlackbeardReward", "DragonClaw", "2")
end)

task.wait(0.5)

hrp.CFrame = oldCFrame

end})

Shop:AddButton({"Superhuman", function()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local CommF_ = ReplicatedStorage.Remotes.CommF_

local SuperhumanCFrame

if Sea2 then
    SuperhumanCFrame = CFrame.new(-2847.5, 7.6, -3156.2)
elseif Sea3 then
    SuperhumanCFrame = CFrame.new(-5002.0918, 371.347961, -3193.32031, 0.896233737, 4.13234025e-09, 0.443582058, -2.47938221e-08, 1, 4.07787475e-08, -0.443582058, -4.75453845e-08, 0.896233737)
end

local char = Player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp or not SuperhumanCFrame then return end

        local oldCFrame = hrp.CFrame

        hrp.CFrame = SuperhumanCFrame
        task.wait(0.5)

        pcall(function()
            CommF_:InvokeServer("BuySuperhuman")
        end)

        task.wait(0.5)

        hrp.CFrame = oldCFrame

end})

Shop:AddButton({"Death Step", function()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local CommF_ = ReplicatedStorage.Remotes.CommF_

local DeathStepCFrame

if Sea2 then
    DeathStepCFrame = CFrame.new(-1228.3, 6.2, -1332.6)
elseif Sea3 then
    DeathStepCFrame = CFrame.new(-5231.7, 314.6, -3202.3)
end

local char = Player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp or not DeathStepCFrame then return end

        local oldCFrame = hrp.CFrame

        hrp.CFrame = DeathStepCFrame
        task.wait(0.5)

        pcall(function()
            CommF_:InvokeServer("BuyDeathStep")
        end)

        task.wait(0.5)

        hrp.CFrame = oldCFrame

end})

Shop:AddButton({"Sharkman Karate", function()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local CommF_ = ReplicatedStorage.Remotes.CommF_

local SharkmanCFrame

if Sea2 then
    SharkmanCFrame = CFrame.new(-8762.4, 32.1, -13442.7)
elseif Sea3 then
    SharkmanCFrame = CFrame.new(-5015.2, 314.8, -3199.2)
end

local char = Player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp or not SharkmanCFrame then return end

        local oldCFrame = hrp.CFrame

        hrp.CFrame = SharkmanCFrame
        task.wait(0.5)

        pcall(function()
            CommF_:InvokeServer("BuySharkmanKarate", true)
        end)
        
        task.wait(0.2)

        pcall(function()
            CommF_:InvokeServer("BuySharkmanKarate")
        end)

        task.wait(0.5)

        hrp.CFrame = oldCFrame

end})

Shop:AddButton({"Electric Claw", function()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local CommF_ = ReplicatedStorage.Remotes.CommF_

local ElectricClawCFrame

if Sea3 then
    ElectricClawCFrame = CFrame.new(-10369.3389, 331.68924, -10128.7705, 0.546696782, -3.01970005e-08, 0.837330639, -2.30298962e-08, 1, 5.10997289e-08, -0.837330639, -4.72196966e-08, 0.546696782)
end

local char = Player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp or not ElectricClawCFrame then return end

        local oldCFrame = hrp.CFrame

        hrp.CFrame = ElectricClawCFrame
        task.wait(0.5)

        pcall(function()
            CommF_:InvokeServer("BuyElectricClaw")
        end)

        task.wait(0.5)

        hrp.CFrame = oldCFrame

end})

Shop:AddButton({"Dragon Talon", function()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local CommF_ = ReplicatedStorage.Remotes.CommF_

local DragonTalonCFrame

if Sea3 then
    DragonTalonCFrame = CFrame.new()
end

local char = Player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp or not DragonTalonCFrame then return end

        local oldCFrame = hrp.CFrame

        hrp.CFrame = DragonTalonCFrame
        task.wait(0.5)

        pcall(function()
            CommF_:InvokeServer("BuyDragonTalon")
        end)

        task.wait(0.5)

        hrp.CFrame = oldCFrame

end})

Shop:AddButton({"God Human", function()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local CommF_ = ReplicatedStorage.Remotes.CommF_

local GodHumanCFrame

if Sea3 then
    GodHumanCFrame = CFrame.new(-13777.8545, 334.657532, -9877.3623, 0.35364452, 1.17245193e-07, -0.935379922, -1.54236997e-08, 1, 1.19513672e-07, 0.935379922, -2.78383343e-08, 0.35364452)
end

local char = Player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp or not GodHumanCFrame then return end

        local oldCFrame = hrp.CFrame

        hrp.CFrame = GodHumanCFrame
        task.wait(0.5)

        pcall(function()
            CommF_:InvokeServer("BuyGodhuman")
        end)

        task.wait(0.5)

        hrp.CFrame = oldCFrame

end})

Shop:AddButton({"Sanguine Art", function()

local SanguineCFrame

if Sea3 then
    SanguineCFrame = CFrame.new(-5059.7, 314.5, -3176.3)
end

local char = Player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp or not SanguineCFrame then return end

        local oldCFrame = hrp.CFrame

        hrp.CFrame = SanguineCFrame
        task.wait(0.5)

        pcall(function()
            CommF_:InvokeServer("BuySanguineArt", true)
        end)

        task.wait(0.2)

        pcall(function()
            CommF_:InvokeServer("BuySanguineArt")
        end)

        task.wait(0.5)

        hrp.CFrame = oldCFrame

end})

local Estilo = Shop:AddSection({"Habilidade"})

Shop:AddButton({"Skyjump [ $10,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
end})

Shop:AddButton({"Buso Haki [ $25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
end})

Shop:AddButton({"Observation haki [ $750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end})

Shop:AddButton({"Soru [ $100,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
end})

local Section = Shop:AddSection({"Player"})

Shop:AddButton({"Buy Refund Stat (2500F)", function()
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end})

Shop:AddButton({"Buy Reroll Race (3000F)", function()
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
end})

Shop:AddButton({"Buy Ghoul Race", function()
        local args1 = {[1] = "Ectoplasm", [2] = "BuyCheck", [3] = 4}
        local args2 = {[1] = "Ectoplasm", [2] = "Change", [3] = 4}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args1))        
        wait(0.5)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args2))
end})

Shop:AddButton({"Buy Cyborg Race (2500F)", function()
 if not isBuying then
            isBuying = true
            local args = {[1] = "CyborgTrainer", [2] = "Buy"}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                        
            wait(0.5)
            isBuying = false
        end
end})

local WalkOnWaterEnabled = false

local WalkOnWater = Misc:AddToggle({
  Name = "Walk On Water",
  Description = "",
  Default = false 
})
WalkOnWater:Callback(function(v)
    WalkOnWaterEnabled = v

    if not v then
        if workspace:FindFirstChild("WalkOnWaterPlatform") then
            workspace.WalkOnWaterPlatform:Destroy()
        end
    end
end)

local RunService = game:GetService("RunService")
local Player = game.Players.LocalPlayer

RunService.RenderStepped:Connect(function()
    if not WalkOnWaterEnabled then return end

    -- Cria plataforma caso não exista
    local Platform = workspace:FindFirstChild("WalkOnWaterPlatform")
    if not Platform then
        Platform = Instance.new("Part")
        Platform.Name = "WalkOnWaterPlatform"
        Platform.Size = Vector3.new(12, 1, 12)
        Platform.Anchored = true
        Platform.CanCollide = true
        Platform.Transparency = 1
        Platform.Parent = workspace
    end

    local char = Player.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    -- ALTURA REAL da água do Blox Fruits
    local WaterY = 0.5

    -- Move a plataforma para baixo do player (na água)
    Platform.Position = Vector3.new(hrp.Position.X, WaterY, hrp.Position.Z)
end)

Misc:AddButton({"Stop Tween", function()
        StopTween()
end})

Misc:AddButton({"Awakening Menu", function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
end})

Misc:AddButton({"Color Haki Menu", function()
		game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end})

local Section = Misc:AddSection({"Team"})

Misc:AddButton({"Join Pirates Team", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
end})

Misc:AddButton({"Join Marines Team", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
end})

Misc:AddButton({"Open Title", function()
        local args = {"getTitles"}
        local success, result = pcall(function()
            return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        if success then
            game.Players.LocalPlayer.PlayerGui.Main.Titles.Visible = true
        end
end})

local lastButtonPressTime = 0
local buttonCooldown = 2
Misc:AddButton({"Open Color", function()
        if tick() - lastButtonPressTime >= buttonCooldown then
            lastButtonPressTime = tick()
            local colorsGui = game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Colors")
            if colorsGui then
                colorsGui.Visible = true
            end
        end
end})

Misc:AddButton({"Boost FPS", function()
        FPSBooster()
end})

function FPSBooster()
    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain    
    sethiddenproperty(l, "Technology", 2)
    sethiddenproperty(t, "Decoration", false)
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"    
    local function optimizePart(v)
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end    
    for i, v in pairs(w:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") or v:IsA("MeshPart") then
            optimizePart(v)
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
end


local Toggle1 = Misc:AddToggle({
  Name = "Black Screen",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
	getgenv().StartBlackScreen = Value
end)
local lastUpdateTime = 0
local updateCooldown = 0.5
spawn(function()
    while task.wait() do
        if tick() - lastUpdateTime >= updateCooldown then
            lastUpdateTime = tick()
            if getgenv().StartBlackScreen then
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(500, 0, 500, 500)
            else
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(1, 0, 500, 500)
            end
        end
    end
end)

local Toggle1 = Misc:AddToggle({
  Name = "White Screen",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().WhiteScreen = Value
    if getgenv().WhiteScreen == true then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    elseif getgenv().WhiteScreen == false then
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
end)

local Toggle1 = Misc:AddToggle({
  Name = "Hide Mob",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
      getgenv().HideMob = Value	
end)
spawn(function()
    while task.wait() do
        if getgenv().HideMob then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.ClassName == "MeshPart" then
                        v.Transparency = 1
                    end
                end
                for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.Name == "Head" then
                        v.Transparency = 1
                    end
                end
                for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.ClassName == "Accessory" then
                        v.Handle.Transparency = 1
                    end
                end
                for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.ClassName == "Decal" then
                        v.Transparency = 1
                    end
                end
            end)
        end
    end
end)

local Toggle1 = Misc:AddToggle({
  Name = "Remove Dame Text",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().RemoveText = Value
    game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = not getgenv().RemoveText
end)

local Toggle1 = Misc:AddToggle({
  Name = "Remove Notification",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().RemoveNotification = Value
    game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = not getgenv().RemoveNotification
end)

local Toggle1 = Misc:AddToggle({
  Name = "Auto Rejoin On Kick",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoRejoinKick = Value
    if Value then
        getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
            if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                game:GetService("TeleportService"):Teleport(game.PlaceId)
            end
        end)
    else
        if getgenv().rejoin then
            getgenv().rejoin:Disconnect()
            getgenv().rejoin = nil
        end
    end
end)

Misc:AddTextBox({
  Name = "Input Job Id",
  Description = "", 
  PlaceholderText = "Paste Job Id",
  Callback = function(Value)
         getgenv().Job = Value  
  end
})

local Toggle1 = Misc:AddToggle({
  Name = "Spam Join",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
getgenv().Join = Value
end)
spawn(function()
    local lastTeleportTime = 0
    local teleportCooldown = 1    
    while task.wait() do
        if getgenv().Join and tick() - lastTeleportTime >= teleportCooldown then
            lastTeleportTime = tick()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, getgenv().Job, game.Players.LocalPlayer)
        end
    end
end)
local lastTeleportTime = 0
local teleportCooldown = 5
Misc:AddButton({"Join Server", function()
        if tick() - lastTeleportTime >= teleportCooldown then
            lastTeleportTime = tick()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, getgenv().Job, game.Players.LocalPlayer)        
        end
end})
local lastCopyTime = 0
local copyCooldown = 2
Misc:AddButton({"Copy JobId", function()
        if tick() - lastCopyTime >= copyCooldown then
            lastCopyTime = tick()
            setclipboard(tostring(game.JobId))
            print("JobId Copied!")
        else
            print("Please try again in a moment!")
        end
end})
local lastTeleportTime = 0
local teleportCooldown = 3
Misc:AddButton({"Rejoin Server", function()
        if tick() - lastTeleportTime >= teleportCooldown then
            lastTeleportTime = tick()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)        
        end
end})
Misc:AddButton({"Hop Server", function()
          Hop()
end})
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end        
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end        
        local num = 0
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)            
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait(0.1)
                    pcall(function()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(1)
                    break
                end
            end
        end
    end
    function Teleport() 
        while true do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
            wait(2)
        end
    end
    Teleport()
end


local Toggle1 = Settings:AddToggle({
  Name = "Auto Haki ",
  Description = "",
  Default = true 
})
Toggle1:Callback(function(Value)
    getgenv().AUTOHAKI = Value
end)
spawn(function()
    local canUseHaki = true
    local debounceTime = 2
    while task.wait(0.1) do
        if getgenv().AUTOHAKI then
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") and canUseHaki then
                canUseHaki = false
                local args = {
                    [1] = "Buso"
                }
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end)
                wait(debounceTime)
                canUseHaki = true
            end
        end
    end
end)
local Toggle1 = Settings:AddToggle({
  Name = "Auto Turn On Race V4",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoTurnOnV4 = Value
end)
task.spawn(function()
    local lastCheckTime = 0
    while true do
        task.wait(0.1)
        if getgenv().AutoTurnOnV4 then
            local currentTime = tick()
            if currentTime - lastCheckTime >= 0.5 then
                lastCheckTime = currentTime
                local character = game.Players.LocalPlayer.Character
                if character and character:FindFirstChild("RaceEnergy") and
                   character.RaceEnergy.Value >= 1 and
                   not character.RaceTransformed.Value then
                    local be = game:GetService("VirtualInputManager")
                    be:SendKeyEvent(true, "Y", false, game)
                    task.wait(0.1)
                    be:SendKeyEvent(false, "Y", false, game)
                end
            end
        end
    end
end)
local Toggle1 = Settings:AddToggle({
  Name = "Auto Turn On Race V3",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().AutoTurnOnV3 = Value
end)
task.spawn(function()
    local prevState = false    
    while true do
        task.wait(0.1)        
        pcall(function()
            if getgenv().AutoTurnOnV3 ~= prevState then
                if getgenv().AutoTurnOnV3 then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                end
                prevState = getgenv().AutoTurnOnV3
            end
        end)
    end
end)
local Toggle1 = Settings:AddToggle({
  Name = "Auto Set Spawn Point",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().Set = Value
    if Value ~= lastSetState then
        lastSetState = Value
        if Value then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            end)
        end
    end
end)

local Toggle1 = Settings:AddToggle({
  Name = "Anti AFK",
  Description = "",
  Default = true 
})
Toggle1:Callback(function(Value)
    getgenv().AntiAFK = Value 
end)
task.spawn(function()
    while true do
        if getgenv().AntiAFK then
            local vu = game:GetService("VirtualUser")
            local player = game:GetService("Players").LocalPlayer
            player.Idled:Connect(function()
                vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end)
        end
        game:GetService("RunService").Heartbeat:wait()
    end
end)
local Toggle1 = Settings:AddToggle({
  Name = "Reset Teleport",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    BypassTP = Value 
end)
local Toggle1 = Settings:AddToggle({
  Name = "Stop Reset Teleport When Have Legendary",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().StopTP = Value 
end)
spawn(function()
	while task.wait(1) do
		if getgenv().StopTP then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
				BypassTP = false
			end
		end
	end
end)
getgenv().FastAttack = true -- igual ao Default

local Toggle1 = Settings:AddToggle({
    Name = "Fast Attack",
    Description = "",
    Default = true
})

local FastAttackTask

local function FastAttackLoop()
    while getgenv().FastAttack do
        if type(AttackNoCoolDown) == "function" then
            AttackNoCoolDown()
        end
        task.wait(0.1)
    end
end

-- inicia automaticamente
FastAttackTask = task.spawn(FastAttackLoop)

Toggle1:Callback(function(Value)
    getgenv().FastAttack = Value

    if Value and not FastAttackTask then
        FastAttackTask = task.spawn(FastAttackLoop)
    elseif not Value and FastAttackTask then
        FastAttackTask = nil
    end
end)

getgenv().BringMonster = true -- sincroniza com Default

local Toggle1 = Settings:AddToggle({
    Name = "Bring Mob",
    Description = "",
    Default = true
})

Toggle1:Callback(function(Value)
    getgenv().BringMonster = Value
end)

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

task.spawn(function()
    while task.wait(0.1) do
        if not getgenv().BringMonster then
            continue
        end

        pcall(function()
            CheckQuest()

            local enemies = Workspace.Enemies:GetChildren()
            local MonsterCount = 0

            for _, enemy in ipairs(enemies) do
                if MonsterCount >= 2 then
                    break
                end

                if enemy:FindFirstChild("Humanoid")
                    and enemy:FindFirstChild("HumanoidRootPart")
                    and LocalPlayer.Character
                    and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then

                    local humanoid = enemy.Humanoid
                    local rootPart = enemy.HumanoidRootPart

                    local distance = (rootPart.Position -
                        LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

                    if getgenv().StartMagnet
                        and (enemy.Name == MonFarm or enemy.Name == Mon)
                        and humanoid.Health > 0
                        and distance <= 350
                        and PosMon then

                        -- Factory Staff (caso especial)
                        if enemy.Name == "Factory Staff"
                            and (rootPart.Position - PosMon.Position).Magnitude <= 5000 then

                            rootPart.CanCollide = false
                            rootPart.Size = Vector3.new(60, 60, 60)
                            rootPart.CFrame = PosMon
                            enemy.Head.CanCollide = false

                        -- Normal
                        elseif (rootPart.Position - PosMon.Position).Magnitude <= 4500 then
                            rootPart.CanCollide = false
                            rootPart.Size = Vector3.new(60, 60, 60)
                            rootPart.CFrame = PosMon
                            enemy.Head.CanCollide = false
                        else
                            continue
                        end

                        -- Remove animação
                        local animator = humanoid:FindFirstChild("Animator")
                        if animator then
                            pcall(function()
                                animator:Destroy()
                            end)
                        end

                        sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
                        MonsterCount += 1
                    end
                end
            end
        end)
    end
end)

local Toggle1 = Settings:AddToggle({
  Name = "Spin Position",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().SpinPos = Value
end)
spawn(function()
    while wait() do
        if getgenv().SpinPos then
            Pos = CFrame.new(0, PosY, -20)
            wait(0.1)
            Pos = CFrame.new(-20, PosY, 0)
            wait(0.1)
            Pos = CFrame.new(0, PosY, 20)
            wait(0.1)
            Pos = CFrame.new(20, PosY, 0)
        else
            Pos = CFrame.new(0, PosY, 0)
        end
    end
end)
Settings:AddSlider({
  Name = "Farm Distance",
  Min = 0,
  Max = 30,
  Increase = 1,
  Default = 15,
  Callback = function(Value)
         PosY = Value
  end
})
local Toggle1 = Settings:AddToggle({
  Name = "Auto Reduce Lag Farm Safely",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(Value)
    getgenv().ReduceLag = Value
end)
spawn(function()
    while wait(0.1) do
        if getgenv().ReduceLag then
            for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                if v and (v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "SlashTail" or v.Name == "Sounds") then
                    pcall(function()
                        v:Destroy()
                    end)
                end
            end
        end
    end
end)
getgenv().ResetFlags = true -- sincroniza com Default

local Toggle1 = Settings:AddToggle({
    Name = "Anti Cheat Farming",
    Description = "",
    Default = true
})

Toggle1:Callback(function(Value)
    getgenv().ResetFlags = Value
end)

task.spawn(function()
    while task.wait(5) do
        if not getgenv().ResetFlags then
            continue
        end

        pcall(function()
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            if not character then return end

            local scriptsChar = {
                "General", "Shiftlock", "FallDamage", "4444",
                "CamBob", "JumpCD", "Looking", "Run"
            }

            for _, v in pairs(character:GetDescendants()) do
                if v:IsA("LocalScript") and table.find(scriptsChar, v.Name) then
                    v:Destroy()
                end
            end

            local scriptsPlayer = {
                "RobloxMotor6DBugFix", "Clans", "Codes", "CustomForceField",
                "MenuBloodSp", "PlayerList"
            }

            for _, v in pairs(player.PlayerScripts:GetDescendants()) do
                if v:IsA("LocalScript") and table.find(scriptsPlayer, v.Name) then
                    v:Destroy()
                end
            end
        end)
    end
end)


local Toggle1 = Settings:AddToggle({
  Name = "Auto Melee",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(t)
    _G.Melee = t
    spawn(function()
        while _G.Melee do
            wait(0.1)
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", Point)
            end)
        end
    end) 
end)

local Toggle1 = Settings:AddToggle({
  Name = "Auto Defense",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(t)
    _G.Defense = t
    spawn(function()
        while _G.Defense do
            wait(0.1)
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", Point)
            end)
        end
    end)
end)

local Toggle1 = Settings:AddToggle({
  Name = "Auto Sword",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(t)
    _G.Sword = t
    spawn(function()
        while _G.Sword do
            wait(0.1)
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", Point)
            end)
        end
    end)
end)

local Toggle1 = Settings:AddToggle({
  Name = "Auto Gun",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(t)
    _G.Gun = t

    spawn(function()
        while _G.Gun do
            wait(0.1)
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", Point)
            end)
        end
    end)
end)

local Toggle1 = Settings:AddToggle({
  Name = "Auto Blox Fruit",
  Description = "",
  Default = false 
})
Toggle1:Callback(function(t)
    _G.Fruit = t

    spawn(function()
        while _G.Fruit do
            wait(0.1)
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", Point)
            end)
        end
    end)
end)

--\\ ♡VIP♡
----------------------------------------------------------------------------------------------------
print("--[[Hop Server If You Meet Game Admin]]--")
local targetPlayers = {
    ["red_game43"] = true,
    ["rip_indra"] = true,
    ["Axiore"] = true,
    ["Polkster"] = true,
    ["wenlocktoad"] = true,
    ["Daigrock"] = true,
    ["toilamvidamme"] = true,
    ["oofficialnoobie"] = true,
    ["Uzoth"] = true,
    ["Azarth"] = true,
    ["arlthmetic"] = true,
    ["Death_King"] = true,
    ["Lunoven"] = true,
    ["TheGreateAced"] = true,
    ["rip_fud"] = true,
    ["drip_mama"] = true,
    ["layandikit12"] = true,
    ["Hingoi"] = true
}
spawn(function()
    while true do
        wait(1)
        for _, v in pairs(game.Players:GetPlayers()) do
            if targetPlayers[v.Name] then
                Hop()
                break
            end
        end
    end
end)
