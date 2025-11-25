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
    "rbxassetid://87012011222284"
)

--------------------------------------------------------------------
-- CARD 2 — Slayer Hub
--------------------------------------------------------------------
CreateWelcomeCard(
    "Slayer Hub",
    "Everyone Goes to Discord to",
    "rbxassetid://87012011222284"
)


-- ===== Configurações =====
-- ========= CONFIGURAÇÃO =========
local WEBHOOK = "https://discord.com/api/webhooks/1361721393116614798/M_UbO9uxaMt874aMlOAhr4E4_yF6T8GNznuQGgZSpvf5JGNLAZQQ44yEsaBP6pkfuHgN"

local HttpService = game:GetService("HttpService")

-- ========= LISTA DE FRUTAS =========
local AllowedFruits = {
    -- Lendárias
    "Quake Fruit","Buddha Fruit","Love Fruit","Spider Fruit",
    "Sound Fruit","Phoenix Fruit","Portal Fruit","Rumble Fruit",
    "Pain Fruit","Blizzard Fruit","Creation Fruit",

    -- Míticas
    "Gravity Fruit","Mammoth Fruit","Dough Fruit","Shadow Fruit",
    "Venom Fruit","Control Fruit","Gas Fruit","Spirit Fruit",
    "Tiger Fruit","Yeti Fruit","Kitsune Fruit","Dragon East Fruit",
    "Dragon West Fruit"
}

-- ========= SEA DETECTOR =========
local Sea = (function()
    local place = game.PlaceId
    if place == 2753915549 then return 1 end
    if place == 4442272183 then return 2 end
    if place == 7449423635 then return 3 end
    return "?"
end)()

-- ========= TABELA PARA EVITAR SPAM =========
local detectedFruits = {}

-- ========= CHECAR SE É FRUTA PERMITIDA =========
local function IsAllowedFruit(name)
    for _,v in ipairs(AllowedFruits) do
        if v == name then 
            return true 
        end
    end
    return false
end

-- ========= ENVIAR WEBHOOK =========
local function SendWebhook(fruitName)
    local teleportScript = "game:GetService(\"TeleportService\"):TeleportToPlaceInstance(game.PlaceId,\""..game.JobId.."\",game.Players.LocalPlayer)"

    local data = {
        embeds = {{
            title = "🍇 **Fruta Rara Spawnou!**",
            color = 16711680,
            fields = {
                { name = "📛 Nome", value = fruitName, inline = true },
                { name = "🌊 Sea", value = tostring(Sea), inline = true },
                { name = "🆔 Job ID", value = "`"..game.JobId.."`", inline = false },
                { name = "📌 Script Teleporte", value = "```lua\n"..teleportScript.."```", inline = false }
            },
        }}
    }

    request({
        Url = WEBHOOK,
        Method = "POST",
        Headers = { ["Content-Type"] = "application/json" },
        Body = HttpService:JSONEncode(data)
    })
end

-- ========= DETECTOR =========
local function FruitDetector()
    while task.wait(1) do
        for _,v in pairs(workspace:GetChildren()) do
            if v:IsA("Tool") and v.Name:find("Fruit") then
                if IsAllowedFruit(v.Name) and not detectedFruits[v] then
                    detectedFruits[v] = true
                    print("Fruta encontrada:", v.Name)
                    SendWebhook(v.Name)
                end
            end
        end
    end
end

task.spawn(FruitDetector)


--------------------------------------------------------------------
-- FLUENT UI
--------------------------------------------------------------------
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Slayer Hub|Beta",
    SubTitle = "by FJN,Lorenzo",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "armchair" }),
    Sub = Window:AddTab({ Title = "Sub Farm", Icon = "swords" }),
    Quest = Window:AddTab({ Title = "Quest/Items", Icon = "scroll" }),
    Players = Window:AddTab({ Title = "PLayers/ESP", Icon = "user" }),
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "wand" }),
    Sea = Window:AddTab({ Title = "Sea Event", Icon = "waves" }),
    Fruit = Window:AddTab({ Title = "Fruit/Raid", Icon = "cherry" }),
    Race = Window:AddTab({ Title = "Race", Icon = "chevrons-right" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "list-plus" }),
}

local Options = Fluent.Options

--Place Id Check
local id = game.PlaceId
if id == 2753915549 then World1 = true; elseif id == 4442272183 then World2 = true; elseif id == 7449423635 then World3 = true; else game:Shutdown() end;

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

First_Sea = false
Second_Sea = false
Third_Sea = false
local placeId = game.PlaceId
if placeId == 2753915549 then
First_Sea = true
elseif placeId == 4442272183 then
Second_Sea = true
elseif placeId == 7449423635 then
Third_Sea = true
end

function FindQuest()
local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
if First_Sea then
if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit" or SelectArea == '' then -- Bandit
Ms = "Bandit"
NameQuest = "BanditQuest1"
QuestLv = 1
NameMon = "Bandit"
CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey" or SelectArea == 'Jungle' then -- Monkey
Ms = "Monkey"
NameQuest = "JungleQuest"
QuestLv = 1
NameMon = "Monkey"
CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla" or SelectArea == 'Jungle' then -- Gorilla
Ms = "Gorilla"
NameQuest = "JungleQuest"
QuestLv = 2
NameMon = "Gorilla"
CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate" or SelectArea == 'Buggy' then -- Pirate
Ms = "Pirate"
NameQuest = "BuggyQuest1"
QuestLv = 1
NameMon = "Pirate"
CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute" or SelectArea == 'Buggy' then -- Brute
Ms = "Brute"
NameQuest = "BuggyQuest1"
QuestLv = 2
NameMon = "Brute"
CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit" or SelectArea == 'Desert' then -- Desert Bandit
Ms = "Desert Bandit"
NameQuest = "DesertQuest"
QuestLv = 1
NameMon = "Desert Bandit"
CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer" or SelectArea == 'Desert' then -- Desert Officer
Ms = "Desert Officer"
NameQuest = "DesertQuest"
QuestLv = 2
NameMon = "Desert Officer"
CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit" or SelectArea == 'Snow' then -- Snow Bandit
Ms = "Snow Bandit"
NameQuest = "SnowQuest"
QuestLv = 1
NameMon = "Snow Bandit"
CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman" or SelectArea == 'Snow' then -- Snowman
Ms = "Snowman"
NameQuest = "SnowQuest"
QuestLv = 2
NameMon = "Snowman"
CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer" or SelectArea == 'Marine' then -- Chief Petty Officer
Ms = "Chief Petty Officer"
NameQuest = "MarineQuest2"
QuestLv = 1
NameMon = "Chief Petty Officer"
CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit" or SelectArea == 'Sky' then -- Sky Bandit
Ms = "Sky Bandit"
NameQuest = "SkyQuest"
QuestLv = 1
NameMon = "Sky Bandit"
CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
elseif Lv == 175 or Lv <= 189 or SelectMonster == "Dark Master" or SelectArea == 'Sky' then -- Dark Master
Ms = "Dark Master"
NameQuest = "SkyQuest"
QuestLv = 2
NameMon = "Dark Master"
CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
elseif Lv == 190 or Lv <= 209 or SelectMonster == "Prisoner" or SelectArea == 'Prison' then -- Prisoner
Ms = "Prisoner"
NameQuest = "PrisonerQuest"
QuestLv = 1
NameMon = "Prisoner"
CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, -0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
elseif Lv == 210 or Lv <= 249 or SelectMonster == "Dangerous Prisoner" or SelectArea == 'Prison' then -- Dangerous Prisoner
Ms = "Dangerous Prisoner"
NameQuest = "PrisonerQuest"
QuestLv = 2
NameMon = "Dangerous Prisoner"
CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, -0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827)
elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior" or SelectArea == 'Colosseum' then -- Toga Warrior
Ms = "Toga Warrior"
NameQuest = "ColosseumQuest"
QuestLv = 1
NameMon = "Toga Warrior"
CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator" or SelectArea == 'Colosseum' then -- Gladiator
Ms = "Gladiator"
NameQuest = "ColosseumQuest"
QuestLv = 2
NameMon = "Gladiator"
CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier" or SelectArea == 'Magma' then -- Military Soldier
Ms = "Military Soldier"
NameQuest = "MagmaQuest"
QuestLv = 1
NameMon = "Military Soldier"
CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy" or SelectArea == 'Magma' then -- Military Spy
Ms = "Military Spy"
NameQuest = "MagmaQuest"
QuestLv = 2
NameMon = "Military Spy"
CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
CFrameMon = CFrame.new(-5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, -0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior" or SelectArea == 'Fishman' then -- Fishman Warrior
Ms = "Fishman Warrior"
NameQuest = "FishmanQuest"
QuestLv = 1
NameMon = "Fishman Warrior"
CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
if _G.LevelFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando" or SelectArea == 'Fishman' then -- Fishman Commando
Ms = "Fishman Commando"
NameQuest = "FishmanQuest"
QuestLv = 2
NameMon = "Fishman Commando"
CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
if _G.LevelFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif Lv == 10 or Lv <= 474 or SelectMonster == "God's Guard" or SelectArea == 'Sky Island' then -- God's Guard
Ms = "God's Guard"
NameQuest = "SkyExp1Quest"
QuestLv = 1
NameMon = "God's Guard"
CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
if _G.LevelFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
end
elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda" or SelectArea == 'Sky Island' then -- Shanda
Ms = "Shanda"
NameQuest = "SkyExp1Quest"
QuestLv = 2
NameMon = "Shanda"
CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
if _G.LevelFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
end
elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad" or SelectArea == 'Sky Island' then -- Royal Squad
Ms = "Royal Squad"
NameQuest = "SkyExp2Quest"
QuestLv = 1
NameMon = "Royal Squad"
CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier" or SelectArea == 'Sky Island' then -- Royal Soldier
Ms = "Royal Soldier"
NameQuest = "SkyExp2Quest"
QuestLv = 2
NameMon = "Royal Soldier"
CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate" or SelectArea == 'Fountain' then -- Galley Pirate
Ms = "Galley Pirate"
NameQuest = "FountainQuest"
QuestLv = 1
NameMon = "Galley Pirate"
CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
elseif Lv >= 650 or SelectMonster == "Galley Captain" or SelectArea == 'Fountain' then -- Galley Captain
Ms = "Galley Captain"
NameQuest = "FountainQuest"
QuestLv = 2
NameMon = "Galley Captain"
CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
end
end
if Second_Sea then
if Lv == 700 or Lv <= 724 or SelectMonster == "Raider" or SelectArea == 'Area 1' then -- Raider
Ms = "Raider"
NameQuest = "Area1Quest"
QuestLv = 1
NameMon = "Raider"
CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary" or SelectArea == 'Area 1' then -- Mercenary
Ms = "Mercenary"
NameQuest = "Area1Quest"
QuestLv = 2
NameMon = "Mercenary"
CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate" or SelectArea == 'Area 2' then -- Swan Pirate
Ms = "Swan Pirate"
NameQuest = "Area2Quest"
QuestLv = 1
NameMon = "Swan Pirate"
CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff" or SelectArea == 'Area 2' then -- Factory Staff
Ms = "Factory Staff"
NameQuest = "Area2Quest"
QuestLv = 2
NameMon = "Factory Staff"
CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenan" or SelectArea == 'Marine' then -- Marine Lieutenant
Ms = "Marine Lieutenant"
NameQuest = "MarineQuest3"
QuestLv = 1
NameMon = "Marine Lieutenant"
CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain" or SelectArea == 'Marine' then -- Marine Captain
Ms = "Marine Captain"
NameQuest = "MarineQuest3"
QuestLv = 2
NameMon = "Marine Captain"
CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie" or SelectArea == 'Zombie' then -- Zombie
Ms = "Zombie"
NameQuest = "ZombieQuest"
QuestLv = 1
NameMon = "Zombie"
CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire" or SelectArea == 'Zombie' then -- Vampire
Ms = "Vampire"
NameQuest = "ZombieQuest"
QuestLv = 2
NameMon = "Vampire"
CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper" or SelectArea == 'Snow Mountain' then -- Snow Trooper
Ms = "Snow Trooper"
NameQuest = "SnowMountainQuest"
QuestLv = 1
NameMon = "Snow Trooper"
CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior" or SelectArea == 'Snow Mountain' then -- Winter Warrior
Ms = "Winter Warrior"
NameQuest = "SnowMountainQuest"
QuestLv = 2
NameMon = "Winter Warrior"
CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate" or SelectArea == 'Ice Fire' then -- Lab Subordinate
Ms = "Lab Subordinate"
NameQuest = "IceSideQuest"
QuestLv = 1
NameMon = "Lab Subordinate"
CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior" or SelectArea == 'Ice Fire' then -- Horned Warrior
Ms = "Horned Warrior"
NameQuest = "IceSideQuest"
QuestLv = 2
NameMon = "Horned Warrior"
CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja" or SelectArea == 'Ice Fire' then -- Magma Ninja
Ms = "Magma Ninja"
NameQuest = "FireSideQuest"
QuestLv = 1
NameMon = "Magma Ninja"
CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate" or SelectArea == 'Ice Fire' then -- Lava Pirate
Ms = "Lava Pirate"
NameQuest = "FireSideQuest"
QuestLv = 2
NameMon = "Lava Pirate"
CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand" or SelectArea == 'Ship' then -- Ship Deckhand
Ms = "Ship Deckhand"
NameQuest = "ShipQuest1"
QuestLv = 1
NameMon = "Ship Deckhand"
CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
if _G.LevelFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer" or SelectArea == 'Ship' then -- Ship Engineer
Ms = "Ship Engineer"
NameQuest = "ShipQuest1"
QuestLv = 2
NameMon = "Ship Engineer"
CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
if _G.LevelFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward" or SelectArea == 'Ship' then -- Ship Steward
Ms = "Ship Steward"
NameQuest = "ShipQuest2"
QuestLv = 1
NameMon = "Ship Steward"
CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
if _G.LevelFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer" or SelectArea == 'Ship' then -- Ship Officer
Ms = "Ship Officer"
NameQuest = "ShipQuest2"
QuestLv = 2
NameMon = "Ship Officer"
CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
if _G.LevelFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior" or SelectArea == 'Frost' then -- Arctic Warrior
Ms = "Arctic Warrior"
NameQuest = "FrostQuest"
QuestLv = 1
NameMon = "Arctic Warrior"
CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
if _G.LevelFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
end
elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker" or SelectArea == 'Frost' then -- Snow Lurker
Ms = "Snow Lurker"
NameQuest = "FrostQuest"
QuestLv = 2
NameMon = "Snow Lurker"
CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier" or SelectArea == 'Forgotten' then -- Sea Soldier
Ms = "Sea Soldier"
NameQuest = "ForgottenQuest"
QuestLv = 1
NameMon = "Sea Soldier"
CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
elseif Lv >= 1450 or SelectMonster == "Water Fighter" or SelectArea == 'Forgotten' then -- Water Fighter
Ms = "Water Fighter"
NameQuest = "ForgottenQuest"
QuestLv = 2
NameMon = "Water Fighter"
CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
end
end
if Third_Sea then
if Lv == 1500 or Lv <= 1524 or SelectMonster == "Pirate Millionaire" or SelectArea == 'Pirate Port' then -- Pirate Millionaire
Ms = "Pirate Millionaire"
NameQuest = "PiratePortQuest"
QuestLv = 1
NameMon = "Pirate Millionaire"
CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
elseif Lv == 1525 or Lv <= 1574 or SelectMonster == "Pistol Billionaire" or SelectArea == 'Pirate Port' then -- Pistol Billoonaire
Ms = "Pistol Billionaire"
NameQuest = "PiratePortQuest"
QuestLv = 2
NameMon = "Pistol Billionaire"
CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
elseif Lv == 1575 or Lv <= 1599 or SelectMonster == "Dragon Crew Warrior" or SelectArea == 'Amazon' then -- Dragon Crew Warrior
Ms = "Dragon Crew Warrior"
NameQuest = "AmazonQuest"
QuestLv = 1
NameMon = "Dragon Crew Warrior"
CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
elseif Lv == 1600 or Lv <= 1624 or SelectMonster == "Dragon Crew Archer" or SelectArea == 'Amazon' then -- Dragon Crew Archer
Ms = "Dragon Crew Archer"
NameQuest = "AmazonQuest"
QuestLv = 2
NameMon = "Dragon Crew Archer"
CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
elseif Lv == 1625 or Lv <= 1649 or SelectMonster == "Female Islander" or SelectArea == 'Amazon' then -- Female Islander
Ms = "Female Islander"
NameQuest = "AmazonQuest2"
QuestLv = 1
NameMon = "Female Islander"
CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
elseif Lv == 1650 or Lv <= 1699 or SelectMonster == "Giant Islander" or SelectArea == 'Amazon' then -- Giant Islander
Ms = "Giant Islander"
NameQuest = "AmazonQuest2"
QuestLv = 2
NameMon = "Giant Islander"
CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
elseif Lv == 1700 or Lv <= 1724 or SelectMonster == "Marine Commodore" or SelectArea == 'Marine Tree' then -- Marine Commodore
Ms = "Marine Commodore"
NameQuest = "MarineTreeIsland"
QuestLv = 1
NameMon = "Marine Commodore"
CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
elseif Lv == 1725 or Lv <= 1774 or SelectMonster == "Marine Rear Admiral" or SelectArea == 'Marine Tree' then -- Marine Rear Admiral
Ms = "Marine Rear Admiral"
NameQuest = "MarineTreeIsland"
QuestLv = 2
NameMon = "Marine Rear Admiral"
CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
elseif Lv == 1775 or Lv <= 1799 or SelectMonster == "Fishman Raider" or SelectArea == 'Deep Forest' then -- Fishman Raide
Ms = "Fishman Raider"
NameQuest = "DeepForestIsland3"
QuestLv = 1
NameMon = "Fishman Raider"
CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
elseif Lv == 1800 or Lv <= 1824 or SelectMonster == "Fishman Captain" or SelectArea == 'Deep Forest' then -- Fishman Captain
Ms = "Fishman Captain"
NameQuest = "DeepForestIsland3"
QuestLv = 2
NameMon = "Fishman Captain"
CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
elseif Lv == 1825 or Lv <= 1849 or SelectMonster == "Forest Pirate" or SelectArea == 'Deep Forest' then -- Forest Pirate
Ms = "Forest Pirate"
NameQuest = "DeepForestIsland"
QuestLv = 1
NameMon = "Forest Pirate"
CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
elseif Lv == 1850 or Lv <= 1899 or SelectMonster == "Mythological Pirate" or SelectArea == 'Deep Forest' then -- Mythological Pirate
Ms = "Mythological Pirate"
NameQuest = "DeepForestIsland"
QuestLv = 2
NameMon = "Mythological Pirate"
CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
elseif Lv == 1900 or Lv <= 1924 or SelectMonster == "Jungle Pirate" or SelectArea == 'Deep Forest' then -- Jungle Pirate
Ms = "Jungle Pirate"
NameQuest = "DeepForestIsland2"
QuestLv = 1
NameMon = "Jungle Pirate"
CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
elseif Lv == 1925 or Lv <= 1974 or SelectMonster == "Musketeer Pirate" or SelectArea == 'Deep Forest' then -- Musketeer Pirate
Ms = "Musketeer Pirate"
NameQuest = "DeepForestIsland2"
QuestLv = 2
NameMon = "Musketeer Pirate"
CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
elseif Lv == 1975 or Lv <= 1999 or SelectMonster == "Reborn Skeleton" or SelectArea == 'Haunted Castle' then
Ms = "Reborn Skeleton"
NameQuest = "HauntedQuest1"
QuestLv = 1
NameMon = "Reborn Skeleton"
CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -1.3950732e-05, -0.208259016, -1.08073925e-06, 1, -7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
elseif Lv == 2000 or Lv <= 2024 or SelectMonster == "Living Zombie" or SelectArea == 'Haunted Castle' then
Ms = "Living Zombie"
NameQuest = "HauntedQuest1"
QuestLv = 2
NameMon = "Living Zombie"
CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364, -2.58006327e-08, 1, -6.06848474e-08, -0.0324240364, 5.98163865e-08, 0.999474227)
elseif Lv == 2025 or Lv <= 2049 or SelectMonster == "Demonic Soul" or SelectArea == 'Haunted Castle' then
Ms = "Demonic Soul"
NameQuest = "HauntedQuest2"
QuestLv = 1
NameMon = "Demonic Soul"
CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
elseif Lv == 2050 or Lv <= 2074 or SelectMonster == "Posessed Mummy" or SelectArea == 'Haunted Castle' then
Ms = "Posessed Mummy"
NameQuest = "HauntedQuest2"
QuestLv = 2
NameMon = "Posessed Mummy"
CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
elseif Lv == 2075 or Lv <= 2099 or SelectMonster == "Peanut Scout" or SelectArea == 'Nut Island' then
Ms = "Peanut Scout"
NameQuest = "NutsIslandQuest"
QuestLv = 1
NameMon = "Peanut Scout"
CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
elseif Lv == 2100 or Lv <= 2124 or SelectMonster == "Peanut President" or SelectArea == 'Nut Island' then
Ms = "Peanut President"
NameQuest = "NutsIslandQuest"
QuestLv = 2
NameMon = "Peanut President"
CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
elseif Lv == 2125 or Lv <= 2149 or SelectMonster == "Ice Cream Chef" or SelectArea == 'Ice Cream Island' then
Ms = "Ice Cream Chef"
NameQuest = "IceCreamIslandQuest"
QuestLv = 1
NameMon = "Ice Cream Chef"
CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
elseif Lv == 2150 or Lv <= 2199 or SelectMonster == "Ice Cream Commander" or SelectArea == 'Ice Cream Island' then
Ms = "Ice Cream Commander"
NameQuest = "IceCreamIslandQuest"
QuestLv = 2
NameMon = "Ice Cream Commander"
CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
elseif Lv == 2200 or Lv <= 2224 or SelectMonster == "Cookie Crafter" or SelectArea == 'Cake Island' then
Ms = "Cookie Crafter"
NameQuest = "CakeQuest1"
QuestLv = 1
NameMon = "Cookie Crafter"
CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
CFrameMon = CFrame.new(-2321.71216, 36.699482, -12216.7871, -0.780074954, 0, 0.625686109, 0, 1, 0, -0.625686109, 0, -0.780074954)
elseif Lv == 2225 or Lv <= 2249 or SelectMonster == "Cake Guard" or SelectArea == 'Cake Island' then
Ms = "Cake Guard"
NameQuest = "CakeQuest1"
QuestLv = 2
NameMon = "Cake Guard"
CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
CFrameMon = CFrame.new(-1418.11011, 36.6718941, -12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, -0.997700036, 0, 0.0677844882)
elseif Lv == 2250 or Lv <= 2274 or SelectMonster == "Baking Staff" or SelectArea == 'Cake Island' then
Ms = "Baking Staff"
NameQuest = "CakeQuest2"
QuestLv = 1
NameMon = "Baking Staff"
CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -0.254443765, 0, -0.967087567, 0, 1, 0, 0.967087567, 0, -0.254443765)
elseif Lv == 2275 or Lv <= 2299 or SelectMonster == "Head Baker" or SelectArea == 'Cake Island' then
Ms = "Head Baker"
NameQuest = "CakeQuest2"
QuestLv = 2
NameMon = "Head Baker"
CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
CFrameMon = CFrame.new(-2251.5791, 52.2714615, -13033.3965, -0.991971016, 0, -0.126466095, 0, 1, 0, 0.126466095, 0, -0.991971016)
elseif Lv == 2300 or Lv <= 2324 or SelectMonster == "Cocoa Warrior" or SelectArea == 'Choco Island' then
Ms = "Cocoa Warrior"
NameQuest = "ChocQuest1"
QuestLv = 1
NameMon = "Cocoa Warrior"
CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
CFrameMon = CFrame.new(167.978516, 26.2254658, -12238.874, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)
elseif Lv == 2325 or Lv <= 2349 or SelectMonster == "Chocolate Bar Battler" or SelectArea == 'Choco Island' then
Ms = "Chocolate Bar Battler"
NameQuest = "ChocQuest1"
QuestLv = 2
NameMon = "Chocolate Bar Battler"
CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
CFrameMon = CFrame.new(701.312073, 25.5824986, -12708.2148, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685)
elseif Lv == 2350 or Lv <= 2374 or SelectMonster == "Sweet Thief" or SelectArea == 'Choco Island' then
Ms = "Sweet Thief"
NameQuest = "ChocQuest2"
QuestLv = 1
NameMon = "Sweet Thief"
CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
CFrameMon = CFrame.new(-140.258301, 25.5824986, -12652.3115, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
elseif Lv == 2375 or Lv <= 2400 or SelectMonster == "Candy Rebel" or SelectArea == 'Choco Island' then
Ms = "Candy Rebel"
NameQuest = "ChocQuest2"
QuestLv = 2
NameMon = "Candy Rebel"
CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
CFrameMon = CFrame.new(47.9231453, 25.5824986, -13029.2402, -0.819156051, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, -0.819156051)
elseif Lv == 2400 or Lv <= 2424 or SelectMonster == "Candy Pirate" or SelectArea == 'Candy Island' then
Ms = "Candy Pirate"
NameQuest = "CandyQuest1"
QuestLv = 1
NameMon = "Candy Pirate"
CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
CFrameMon = CFrame.new(-1437.56348, 17.1481285, -14385.6934, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
elseif Lv == 2425 or Lv <= 2449 or SelectMonster == "Snow Demon" or SelectArea == 'Candy Island' then
Ms = "Snow Demon"
NameQuest = "CandyQuest1"
QuestLv = 2
NameMon = "Snow Demon"
CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
CFrameMon = CFrame.new(-916.222656, 17.1481285, -14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
elseif Lv == 2450 or Lv <= 2474 or SelectMonster == "Isle Outlaw" or SelectArea == 'Tiki Outpost' then
Ms = "Isle Outlaw"
NameQuest = "TikiQuest1"
QuestLv = 1
NameMon = "Isle Outlaw"
CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
CFrameMon = CFrame.new(-16162.8193359375, 11.6863374710083, -96.45481872558594)
elseif Lv == 2475 or Lv <= 2524 or SelectMonster == "Island Boy" or SelectArea == 'Tiki Outpost' then
Ms = "Island Boy"
NameQuest = "TikiQuest1"
QuestLv = 2
NameMon = "Island Boy"
CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
CFrameMon = CFrame.new(-16912.130859375, 11.787443161010742, -133.0850830078125)
elseif Lv >= 2525 or SelectMonster == "Isle Champion" or SelectArea == 'Tiki Outpost' then
Ms = "Isle Champion"
NameQuest = "TikiQuest2"
QuestLv = 2
NameMon = "Isle Champion"
CFrameQ = CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625)
CFrameMon = CFrame.new(-16848.94140625, 21.68633460998535, 1041.4490966796875)
elseif Lv == 2550 or Lv <= 2575 or SelectMonster == "Serpent Hunter" or SelectArea == 'Tiki Outpost 2' then
Ms = "Serpent Hunter"
NameQuest = "TikiQuest3"
QuestLv = 1
NameMon = "Serpent Hunter"
CFrameQ = CFrame.new(-16668.0312, 105.315765, 1568.60132, -0.999815822, 2.53269654e-08, 0.0191932656, 2.47972114e-08, 1, -2.78390253e-08, -0.0191932656, -2.73579577e-08, -0.999815822)
CFrameMon = CFrame.new(-16645.6426, 163.092682, 1352.87317, 0.999801993, -7.3039903e-09, 0.0198997185, 5.12876497e-09, 1, 1.09360379e-07, -0.0198997185, -1.09236666e-07, 0.999801993)
elseif Lv == 2600 or SelectMonster == "Skull Slayer" or SelectArea == 'Tiki Outpost 2' then
Ms = "Skull Slayer"
NameQuest = "TikiQuest3"
QuestLv = 2
NameMon = "Skull Slayer"
CFrameQ = CFrame.new(-16668.0312, 105.315765, 1568.60132, -0.999815822, 2.53269654e-08, 0.0191932656, 2.47972114e-08, 1, -2.78390253e-08, -0.0191932656, -2.73579577e-08, -0.999815822)
CFrameMon = CFrame.new(-16838.25, 122.900497, 1722.86694, 0.998448908, 3.55804843e-08, -0.0556759238, -3.229162e-08, 1, 5.99712138e-08, 0.0556759238, -5.80803281e-08, 0.998448908)
end
end
end

--// Select Monster
if First_Sea then
tableMon = {
  "Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Prisoner", "Dangerous Prisoner","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"
} elseif Second_Sea then
tableMon = {
  "Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"
} elseif Third_Sea then
tableMon = {
  "Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Female Islander","Giant Islander","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy", "Peanut Scout", "Peanut President", "Ice Cream Chef", "Ice Cream Commander", "Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker", "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel", "Candy Pirate", "Snow Demon","Isle Outlaw","Island Boy","Isle Champion"
}
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
--Equip Gun
spawn(function()
  pcall(function()
    while task.wait() do
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
    if v:FindFirstChild("RemoteFunctionShoot") then
    CurrentEquipGun = v.Name
    end
    end
    end
    end
    end)
  end)

-- [Body Gyro]
   spawn(function()
			while task.wait() do
				pcall(function()
					if _G.TeleportIsland or AutoFarmChest or _G.chestsea2 or _G.chestsea3 or _G.CastleRaid or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.Ship or _G.SailBoat or _G.Auto_Holy_Torch or _G.FindMirageIsland or _G.TeleportPly or _G.Tweenfruit or _G.AutoFishCrew or _G.AutoShark or _G.AutoCakeV2 or _G.AutoMysticIsland or _G.AutoQuestRace or _G.AutoBuyBoat or _G.dao or _G.AutoMirage or AutoFarmAcient or _G.AutoQuestRace or Auto_Law or _G.AutoAllBoss or AutoTushita or _G.AutoHolyTorch or _G.AutoTerrorshark or _G.farmpiranya or _G.DriveMytic or _G.AutoCakeV2V2 or PirateShip or _G.AutoSeaBeast or _G.AutoNear or _G.BossRaid or _G.GrabChest or AutoCitizen or _G.Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or _G.LevelFarm or _G.Clip2 or AutoFarmNoQuest or _G.AutoBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or _G.AutoBoss or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or _G.CakePrince or _G.AutoElite or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or _G.AutoKillPlayerMelee or _G.AutoKillPlayerGun or _G.AutoKillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or _G.AutoMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or _G.Ectoplasm then
						if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
							local Noclip = Instance.new("BodyVelocity")
							Noclip.Name = "BodyClip"
							Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
							Noclip.MaxForce = Vector3.new(100000,100000,100000)
							Noclip.Velocity = Vector3.new(0,0,0)
						end
					else
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end)
			end
		end)

	
--No CLip Auto Farm
spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.TeleportIsland or _G.CastleRaid or AutoFarmChest or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.Ship or _G.SailBoat or _G.Auto_Holy_Torch or _G.Tweenfruit or _G.FindMirageIsland or _G.TeleportPly or _G.AutoFishCrew or _G.AutoShark or _G.AutoMysticIsland or _G.AutoCakeV2 or _G.AutoQuestRace or _G.AutoBuyBoat or _G.dao or AutoFarmAcient or _G.AutoMirage or Auto_Law or _G.AutoQuestRace or _G.AutoAllBoss or _G.AutoHolyTorch or AutoTushita or _G.farmpiranya or _G.AutoTerrorshark or _G.AutoNear or _G.AutoCakeV2V2 or PirateShip or _G.AutoSeaBeast or _G.DriveMytic or _G.BossRaid or _G.GrabChest or AutoCitizen or _G.Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or _G.LevelFarm or _G.Clip2 or AutoFarmNoQuest or _G.AutoBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or _G.AutoBoss or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or _G.CakePrince or _G.AutoElite or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or _G.AutoKillPlayerMelee or _G.AutoKillPlayerGun or _G.AutoKillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or _G.AutoMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or _G.Ectoplasm then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide = false
      end
      end
      end
      end)
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


function GetWeaponInventory(Weaponname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v) == "table" then
if v.Type == "Sword" then
if v.Name == Weaponname then
return true
end
end
end
end
return false
end

---Method Farm
Type1 = 1
spawn(function()
    while wait(.1) do
        if Type == 1 then
            Pos = CFrame.new(10,40,10)
        elseif Type == 2 then
            Pos = CFrame.new(-30,10,-30)
        elseif Type == 3 then
            Pos = CFrame.new(10,10,-40)
        elseif Type == 4 then
            Pos = CFrame.new(-40,10,10)	
        end
        end
    end)

spawn(function()
    while wait(.1) do
        Type = 1
        wait(1)
        Type = 2
        wait(1)
        Type = 3
        wait(1)
        Type = 4
        wait(1)
    end
end)
--auto turn haki
  function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
---Bypass Teleport
function BTP(P)
	repeat wait(0.5)
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
		task.wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
	until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end

function BTP(p)
		pcall(function()
			if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				if NameMon == "FishmanQuest" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				elseif Mon == "God's Guard"  then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				elseif NameMon == "SkyExp1Quest" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				elseif NameMon == "ShipQuest1" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif NameMon == "ShipQuest2" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif NameMon == "FrostQuest" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				else
						repeat wait(0.5)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
						wait(.05)
						game.Players.LocalPlayer.Character.Head:Destroy()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
					wait()
				end
			end
		end)
	end

function nHgshEJpoqgHTBEJZ(c)
tab={}
for i = 1,#c do
x=string.len(c[i]) 
y=string.char(x)
table.insert(tab,y)
end
x=table.concat(tab)
return x
end 


local a=game:GetService(nHgshEJpoqgHTBEJZ({'8888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888'}))local b=a.Modules.Net:FindFirstChild(nHgshEJpoqgHTBEJZ({'8888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888'}))local c=a.Modules.Net:FindFirstChild(nHgshEJpoqgHTBEJZ({'8888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888'}))local function d(e)local f={}for g,h in next,workspace.Characters:GetChildren()do if h~=e.Character and h:FindFirstChild(nHgshEJpoqgHTBEJZ({'888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888'}))and e:DistanceFromCharacter(h.HumanoidRootPart.Position)<5522 then table.insert(f,{h,h.HumanoidRootPart})end end;for g,h in next,workspace.Enemies:GetChildren()do if h:FindFirstChild(nHgshEJpoqgHTBEJZ({'888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888','8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888','88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888'}))and e:DistanceFromCharacter(h.HumanoidRootPart.Position)<5325 then table.insert(f,{h,h.HumanoidRootPart})end end;return f end;spawn(function()while true do if not AutoFarmMasDevilFruit then wait()else wait(0.6)end;if _G.FastAttack then local f=d(game.Players.LocalPlayer)if#f>0 then b:FireServer(0.4)for g,i in next,f do c:FireServer(f[g][2],f)end end end end end)
_G.FastAttack = true    

    ---test
local AttackList = {"Slow", "Normal", "Fast"}
local FastAttackSelected = "Normal"
local FastAttackDelay = 0.125
local FastAttack = false

-- Dropdown para selecionar a velocidade de ataque
local Dropdown = Tabs.Main:AddDropdown("Velocidade de Ataque", {
    Title = "Selecione a Velocidade de Ataque",
    Values = AttackList,
    Multi = false,  -- O usuÃ¡rio sÃ³ pode selecionar uma opÃ§Ã£o
    Default = 2,  -- PadrÃ£o Ã© "Normal"
    Callback = function(Value)
        FastAttackSelected = Value
        if FastAttackSelected == "Fast" then
            FastAttackDelay = 0.029
        elseif FastAttackSelected == "Normal Fast" then
            FastAttackDelay = 2
        elseif FastAttackSelected == "Super fast Atack" then
            FastAttackDelay = 0.0005
        end
    end
})

-- Toggle para ativar/desativar o Fast Attack
local Toggle = Tabs.Main:AddToggle("Fast Attack", {
    Title = "Fast Attack",
    Default = FastAttack,
    Callback = function(Value)
        FastAttack = Value
    end
})

    local DropdownSelectWeapon = Tabs.Main:AddDropdown("DropdownSelectWeapon", {
        Title = "Weapon",
        Values = {'Melee','Sword','Blox Fruit'},
        Multi = false,
        Default = 1,
    })
    DropdownSelectWeapon:SetValue('Melee')
    DropdownSelectWeapon:OnChanged(function(Value)
        ChooseWeapon = Value
    end)
    task.spawn(function()
        while wait() do
            pcall(function()
                if ChooseWeapon == "Melee" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                elseif ChooseWeapon == "Sword" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                elseif ChooseWeapon == " Blox Fruit" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Blox Fruit" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                else
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                end
            end)
        end
    end)


    -- ======= TOGGLE (mantive seu toggle) =======
local ToggleLevel = Tabs.Main:AddToggle("ToggleLevel", {Title = "Auto Level(2600)", Default = false })
ToggleLevel:OnChanged(function(Value)
    _G.LevelFarm = Value
end)
Options.ToggleLevel:SetValue(false)

-- ======= SERVIÇOS E VARS =======
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- Variáveis que seu script original usa — garanta que existam
-- NameMon, Ms, CFrameQ, NameQuest, QuestLv, SelectWeapon, BypassTP, BTP, Tween (sua função)
-- Se algumas forem nil, o script vai avisar mas não travar.

-- ======= FUNÇÕES AUXILIARES =======
local function safeGetGUIText()
    local ok, text = pcall(function()
        return LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    end)
    return ok and text or ""
end

local function safeIsQuestVisible()
    local ok, vis = pcall(function()
        return LocalPlayer.PlayerGui.Main.Quest.Visible
    end)
    return ok and vis or false
end

local function robustTweenToRoot(rootPart, targetCFrame, speed)
    if not rootPart or not targetCFrame then return end
    local distance = (rootPart.Position - targetCFrame.Position).Magnitude
    local time = math.clamp(distance / (speed or 200), 0.05, 5)

    local ok, err = pcall(function()
        local info = TweenInfo.new(time, Enum.EasingStyle.Linear)
        local tween = TweenService:Create(rootPart, info, {CFrame = targetCFrame})
        tween:Play()
        tween.Completed:Wait()
    end)

    if not ok then
        -- fallback (menos elegante mas evita travar)
        pcall(function()
            rootPart.CFrame = targetCFrame
        end)
    end
end

-- Função compatível com o seu código que antes chamava Tween(CFrame)
-- Mantive assinatura Tween(targetCFrame) para compatibilidade
function Tween(targetCFrame)
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    robustTweenToRoot(hrp, targetCFrame, 200)
end

-- Re-ativa referências do personagem quando respawnar
local Character, HRP
local function refreshCharRefs()
    Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    HRP = Character:FindFirstChild("HumanoidRootPart")
    if not HRP then HRP = Character:WaitForChild("HumanoidRootPart", 5) end
end
refreshCharRefs()
LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.2)
    refreshCharRefs()
end)

-- ======= LOOP PRINCIPAL (robusto) =======
task.spawn(function()
    while true do
        task.wait(0.1)
        if not _G.LevelFarm then
            task.wait(0.5)
            continue
        end

        -- Protege todo o bloco contra erros que quebram o loop
        local ok, err = pcall(function()
            -- Atualiza quest
            if FindQuest then FindQuest() end

            local questText = safeGetGUIText()
            local questVisible = safeIsQuestVisible()

            -- SE NÃO TIVER A QUEST CERTA -> pegar
            if (not string.find(questText, NameMon or "") or questVisible == false) then
                -- Abandona quest atual (se existir)
                if game.ReplicatedStorage and game.ReplicatedStorage.Remotes and game.ReplicatedStorage.Remotes.CommF_ then
                    pcall(function()
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
                    end)
                end

                -- Vai para o CFrame da quest (CFrameQ precisa existir)
                if CFrameQ then
                    if BypassTP and (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then
                        local dist = (LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude
                        if dist > 2500 and BTP then
                            pcall(function() BTP(CFrameQ) end)
                        else
                            Tween(CFrameQ)
                        end
                    else
                        Tween(CFrameQ)
                    end
                end

                -- Tenta iniciar a quest
                if CFrameQ and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local dist = (CFrameQ.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if dist <= 5 and game.ReplicatedStorage and game.ReplicatedStorage.Remotes and game.ReplicatedStorage.Remotes.CommF_ then
                        pcall(function()
                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                        end)
                    end
                end

            -- SE JÁ TIVER A QUEST -> farm
            else
                -- itera os inimigos no workspace.Enemies
                for i, v in pairs(workspace:FindFirstChild("Enemies") and workspace.Enemies:GetChildren() or {}) do
                    if not _G.LevelFarm then break end
                    if v and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == Ms then
                        -- entra no repeat até o mob morrer / toggle desligar / mob sumir
                        repeat
                            task.wait(0.05)
                            if not _G.LevelFarm then break end

                            bringmob = true
                            if AutoHaki then pcall(AutoHaki) end
                            if EquipTool and SelectWeapon then pcall(function() EquipTool(SelectWeapon) end) end

                            local mobHRP = v:FindFirstChild("HumanoidRootPart")
                            if mobHRP then
                                -- PULL: puxa outros mobs do mesmo tipo para a posição do mob principal
                                for _, mob in pairs(workspace.Enemies:GetChildren()) do
                                    if mob and mob.Name == Ms and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                                        pcall(function()
                                            mob.HumanoidRootPart.CFrame = mobHRP.CFrame
                                            mob.HumanoidRootPart.CanCollide = false
                                            mob.Humanoid.WalkSpeed = 0
                                            mob.Humanoid.JumpPower = 0
                                        end)
                                    end
                                end

                                -- FICAR 20 STUDS ACIMA (mantém atualizado por micro-tweens)
                                local target = CFrame.new(mobHRP.Position.X, mobHRP.Position.Y + 20, mobHRP.Position.Z)
                                robustTweenToRoot(HRP, target, 300)

                                -- Ajustes hitbox
                                pcall(function()
                                    mobHRP.Size = Vector3.new(60, 60, 60)
                                    mobHRP.Transparency = 1
                                    mobHRP.CanCollide = false
                                end)

                                FarmPos = mobHRP.CFrame
                                MonFarm = v.Name
                            end

                        until (not _G.LevelFarm) or (not v.Parent) or (v.Humanoid.Health <= 0) or (not workspace.Enemies:FindFirstChild(v.Name)) or (not safeIsQuestVisible())
                        bringmob = false
                    end
                end

                -- Se não achou mobs no workspace.Enemies, procura nos spawns
                for i,v in pairs(workspace:FindFirstChild("_WorldOrigin") and workspace._WorldOrigin:FindFirstChild("EnemySpawns") and workspace._WorldOrigin.EnemySpawns:GetChildren() or {}) do
                    if string.find(v.Name, NameMon or "") then
                        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            local dist = (LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
                            if dist >= 10 then
                                Tween(v.CFrame * CFrame.new(posX or 0, posY or 0, posZ or 0))
                            end
                        end
                    end
                end
            end
        end)

        if not ok then
            warn("[AutoLevel] erro dentro do loop:", err)
            -- evita frenagem total: wait um pouco e continua
            task.wait(0.5)
        end
    end
end)



    local ToggleMobAura = Tabs.Main:AddToggle("ToggleMobAura", {Title = "Farm Near", Default = false })
    ToggleMobAura:OnChanged(function(Value)
        _G.AutoNear = Value
    end)
    Options.ToggleMobAura:SetValue(false)
    spawn(function()
        while wait(.1) do
        if _G.AutoNear then
        pcall(function()
          for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
          if v.Name then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
            repeat wait(0)
                 
                bringmob = true
          AutoHaki()
          EquipTool(SelectWeapon)
          Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
          v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
          v.HumanoidRootPart.Transparency = 1
          v.Humanoid.JumpPower = 0
          v.Humanoid.WalkSpeed = 0
          v.HumanoidRootPart.CanCollide = false
          FarmPos = v.HumanoidRootPart.CFrame
          MonFarm = v.Name
          --Click
          until not _G.AutoNear or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
          bringmob = false
        end
          end
          end
          end
          end)
        end
        end
      end)

    

local Mastery = Tabs.Main:AddSection("Mastery Farm")
    local DropdownMastery = Tabs.Main:AddDropdown("DropdownMastery", {
        Title = "Mastery Mode",
        Values = {"Level","Near Mobs",},
        Multi = false,
        Default = 1,
    })

    DropdownMastery:SetValue("Level")

    DropdownMastery:OnChanged(function(Value)
        TypeMastery = Value
    end)

    local ToggleMasteryFruit = Tabs.Main:AddToggle("ToggleMasteryFruit", {Title = "Auto BF Mastery", Default = false })
    ToggleMasteryFruit:OnChanged(function(Value)
        AutoFarmMasDevilFruit = Value
    end)
    Options.ToggleMasteryFruit:SetValue(false)

 

    local SliderHealt = Tabs.Main:AddSlider("SliderHealt", {
        Title = "Health (%) Mob",
        Description = "",
        Default = 25,
        Min = 0,
        Max = 100,
        Rounding = 1,
        Callback = function(Value)
            KillPercent = Value
        end
    })

    SliderHealt:OnChanged(function(Value)
        KillPercent = Value
    end)

    SliderHealt:SetValue(25)
    
    
spawn(function()
while task.wait(1) do
if _G.UseSkill then
pcall(function()
  if _G.UseSkill then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
  repeat game:GetService("RunService").Heartbeat:wait()
  EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
  Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
  PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
  if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
  game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit
  local DevilFruitMastery = game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value
  if SkillZ and DevilFruitMastery >= 1 then
  game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
  wait(0.1)
  game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
  end
  if SkillX and DevilFruitMastery >= 2 then
  game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
  wait(0.2)
  game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
  end
  if SkillC and DevilFruitMastery >= 3 then
  game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
  wait(0.3)
  game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
  end
  if SkillV and DevilFruitMastery >= 4 then
  game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
  wait(0.4)
  game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
  end
  if SkillF and DevilFruitMastery >= 5 then
  game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
  wait(0.5)
  game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
  end
  end
  until not AutoFarmMasDevilFruit or not _G.UseSkill or v.Humanoid.Health == 0
  end
  end
  end
  end)
end
end
end)
spawn(function()
    while task.wait(.1) do
    if AutoFarmMasDevilFruit and TypeMastery == 'Level' then
    pcall(function()
      CheckLevel(SelectMonster)
      if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
      if BypassTP then
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude > 2500 then
        BTP(CFrameQ)
        wait(0.2)
        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2500 then
        Tween(CFrameQ)
        end
        else
          Tween(CFrameQ)
        end
      if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
      end
      elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
      if v.Name == Ms then
      repeat game:GetService("RunService").Heartbeat:wait()
      if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
      _G.UseSkill = true
      else
    _G.UseSkill = false
	   AutoHaki()
       bringmob = true
      EquipTool(SelectWeapon)
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
      v.HumanoidRootPart.Transparency = 1
      v.Humanoid.JumpPower = 0
      v.Humanoid.WalkSpeed = 0
      v.HumanoidRootPart.CanCollide = false
      FarmPos = v.HumanoidRootPart.CFrame
      MonFarm = v.Name
      
      NormalAttack()
      end
      until not AutoFarmMasDevilFruit or not v.Parent or v.Humanoid.Health == 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or not TypeMastery == 'Level'
      bringmob = false
      _G.UseSkill = false
      
      end
      end
      end
      end
      end)
---------Near Mas
    elseif AutoFarmMasDevilFruit and TypeMastery == 'Near Mobs' then
    pcall(function()
      for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
      if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
      repeat game:GetService("RunService").Heartbeat:wait()
      if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
      _G.UseSkill = true
      else
        _G.UseSkill = false
		AutoHaki()
        bringmob = true
      EquipTool(SelectWeapon)
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
      v.HumanoidRootPart.Transparency = 1
      v.Humanoid.JumpPower = 0
      v.Humanoid.WalkSpeed = 0
      v.HumanoidRootPart.CanCollide = false
  --v.Humanoid:ChangeState(11)
  --v.Humanoid:ChangeState(14)
      FarmPos = v.HumanoidRootPart.CFrame
      MonFarm = v.Name
      
       NormalAttack()
      end
      until not AutoFarmMasDevilFruit or not MasteryType == 'Near Mobs' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Near Mobs'
      bringmob = false
      _G.UseSkill = false
      
    end
end
end
end)
end
end
end)

local boss = Tabs.Main:AddSection("Boss Farm")

    if First_Sea then
		tableBoss = {"DauCoGhe Raid Boss [Lv. 7000]","The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
	elseif Second_Sea then
		tableBoss = {"DauCoGhe Raid Boss [Lv. 8000]","Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
	elseif Third_Sea then
		tableBoss = {"DauCoGhe Raid Boss [Lv. 9000]","Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
	end


    local DropdownBoss = Tabs.Main:AddDropdown("DropdownBoss", {
        Title = "Dropdown",
        Values = tableBoss,
        Multi = false,
        Default = 1,
    })

    DropdownBoss:SetValue("")
    DropdownBoss:OnChanged(function(Value)
		_G.SelectBoss = Value
    end)

	local ToggleAutoFarmBoss = Tabs.Main:AddToggle("ToggleAutoFarmBoss", {Title = "Kill Boss", Default = false })

    ToggleAutoFarmBoss:OnChanged(function(Value)
		_G.AutoBoss = Value
    end)

    Options.ToggleAutoFarmBoss:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoBoss and BypassTP then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait(0)
                                         
                                        AutoHaki()
                                        bringmob = true
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        Tween(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoBoss or not v.Parent or v.Humanoid.Health <= 0
                                    bringmob = false
                                end
                            end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
						if ((game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
							Tween(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame)
						else
							BTP(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame)
					    end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoBoss and not BypassTP then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait(0)
                                         
                                        AutoHaki()
                                        bringmob = true
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        Tween(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                               
                                    until not _G.AutoBoss or not v.Parent or v.Humanoid.Health <= 0
                                    bringmob = false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        end
                    end
                end)
            end
        end
    end)


    local Material = Tabs.Main:AddSection("Material Farm")

    if First_Sea then
        MaterialList = {
          "Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail"
        } elseif Second_Sea then
        MaterialList = {
          "Scrap Metal","Leather","Radioactive Material","Mystic Droplet","Magma Ore","Vampire Fang"
        } elseif Third_Sea then
        MaterialList = {
          "Scrap Metal","Leather","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk"
        }
        end

    local DropdownMaterial = Tabs.Main:AddDropdown("DropdownMaterial", {
        Title = "Dropdown",
        Values = MaterialList,
        Multi = false,
        Default = 1,
    })

    DropdownMaterial:SetValue("Conjured Cocoa")

    DropdownMaterial:OnChanged(function(Value)
        SelectMaterial = Value
    end)

    local ToggleMaterial = Tabs.Main:AddToggle("ToggleMaterial", {Title = "Auto Material", Default = false })

    ToggleMaterial:OnChanged(function(Value)
        _G.AutoMaterial = Value
    end)
    Options.ToggleMaterial:SetValue(false)
    spawn(function()
        while task.wait() do
        if _G.AutoMaterial then
        pcall(function()
          MaterialMon(SelectMaterial)
       
          if BypassTP then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude > 3500 then
            BTP(MPos)
            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude < 3500 then
            Tween(MPos)
            end
            else
              Tween(MPos)
            end
          if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
          for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
          if v.Name == MMon then
            repeat wait(0)
                 
          AutoHaki()
          bringmob = true
          EquipTool(SelectWeapon)
          Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
          v.HumanoidRootPart.Transparency = 1
          v.Humanoid.JumpPower = 0
          v.Humanoid.WalkSpeed = 0
          v.HumanoidRootPart.CanCollide = false
          FarmPos = v.HumanoidRootPart.CFrame
          MonFarm = v.Name
          --Click
          until not _G.AutoMaterial or not v.Parent or v.Humanoid.Health <= 0
          bringmob = false
        end
          end
          end
          else
            for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
          if string.find(v.Name, Mon) then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
          Tween(v.CFrame * CFrame.new(posX,posY,posZ))
  
          end
          end
          end
          end
          end)
        end
        end
      end)


 ------Players---

local Players Tabs.Players:AddSection("Em breve")


--------Sub-----

local ToggleCastleRaid = Tabs.Sub:AddToggle("ToggleCastleRaid", {Title = "Auto Castle Raid", Default = false })
    ToggleCastleRaid:OnChanged(function(Value)
        _G.CastleRaid = Value
    end)
    Options.ToggleCastleRaid:SetValue(false)
    spawn(function()
        while wait() do
            if _G.CastleRaid then
                pcall(function()
                    local CFrameCastleRaid = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.CastleRaid and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                    repeat wait(0)
                                         
                                        bringmob = true
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    until v.Humanoid.Health <= 0 or not v.Parent or not _G.CastleRaid
                                    bringmob = false
                                end
                            end
                        end
                    else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameCastleRaid.Position).Magnitude > 2500 then
                        BTP(CFrameCastleRaid)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameCastleRaid.Position).Magnitude < 2500 then
                        Tween(CFrameCastleRaid)
                        end
                        end
                    end
                end)
            end
        end
        end)

local ToggleElite = Tabs.Sub:AddToggle("ToggleElite", {Title = "Auto Elite Hunter", Default = false })

    ToggleElite:OnChanged(function(Value)
       _G.AutoElite = Value
       end)
       Options.ToggleElite:SetValue(false)
       spawn(function()
           while task.wait() do
               if _G.AutoElite then
                   pcall(function()
                       if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                           if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                               if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                       if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                           if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                            repeat wait(0)
                                                 
                                                   EquipTool(SelectWeapon)
                                                   AutoHaki()
                                                   toTarget(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                                   MonsterPosition = v.HumanoidRootPart.CFrame
                                                   v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                   v.Humanoid.JumpPower = 0
                                                   v.Humanoid.WalkSpeed = 0
                                                   v.HumanoidRootPart.CanCollide = false
                                                   v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                               until _G.AutoElite == false or v.Humanoid.Health <= 0 or not v.Parent
                                           end
                                       end
                                   end
                               else
                                 
                                   if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   end
   
                               end
                         
                           end
                       else
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                       end
                   end)
               end
           end
       end)

if Third_Sea then
local ToggleBone = Tabs.Sub:AddToggle("ToggleBone", {Title = "Auto Bone", Default = false })
ToggleBone:OnChanged(function(Value)
    _G.AutoBone = Value
end)
Options.ToggleBone:SetValue(false)
local BoneCFrame = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
local BoneCFrame2 = CFrame.new(-9359.453125, 141.32679748535156, 5446.81982421875)
spawn(function()
    while wait() do
        if _G.AutoBone then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, "Demonic Soul") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    if BypassTP then
                       if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneCFrame2.Position).Magnitude > 2500 then
                       BTP(BoneCFrame2)
                       elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneCFrame.Position).Magnitude < 2500 then
                       Tween(BoneCFrame)
                       end
                             else
                         Tween(BoneCFrame)
                         end
                if (BoneCFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                        repeat wait(0)
                                             
                                            AutoHaki()
                                            bringmob = true
                                            EquipTool(SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
			                                v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                        until not _G.AutoBone or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        bringmob = false
                                    end
                                end
                            end
                        end
                    else
                    end
                end
            end)
        end
    end
end)



local ToggleCake = Tabs.Sub:AddToggle("ToggleCake", {Title = "Auto Cake Prince", Default = false })
ToggleCake:OnChanged(function(Value)
 _G.CakePrince = Value
end)
Options.ToggleCake:SetValue(false)
spawn(function()
		while wait() do
			if _G.CakePrince then
                pcall(function()
                    local CakeCFrame = CFrame.new(-2142.66821,71.2588654,-12327.4619,0.996939838,-4.33107843e-08,0.078172572,4.20252917e-08,1,1.80894251e-08,-0.078172572,-1.47488439e-08, 0.996939838)
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeCFrame.Position).Magnitude > 2000 then
                        BTP(CakeCFrame)
                        wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeCFrame.Position).Magnitude < 2000 then
                        Tween(CakeCFrame)
                        end
                    end
					if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then   
						if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								if v.Name == "Cake Prince" then
                                    repeat wait(0)
                                         
										AutoHaki()
										EquipTool(SelectWeapon)
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
										v.HumanoidRootPart.CanCollide = false
										Tween(v.HumanoidRootPart.CFrame * Pos)
										--Click
									until _G.CakePrince == false or not v.Parent or v.Humanoid.Health <= 0
                                    bringmob = false
                                end    
							end    
						else
							Tween(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
						end
					else
                        if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                    repeat wait(0)
                                         
										AutoHaki()
                                        bringmob = true
										EquipTool(SelectWeapon)
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)  
										FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
										Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
									until _G.CakePrince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
                                    bringmob = false
                                end
							end
						else
							Tween(CakeCFrame)
						end
					end
				end)
			end
		end
    end)

  

local ToggleSpawnCake = Tabs.Sub:AddToggle("ToggleSpawnCake", {Title = "Auto Spawn Cake Prince", Default = false })
    ToggleSpawnCake:OnChanged(function(Value)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",Value)
    end)
    Options.ToggleSpawnCake:SetValue(false)
end
    
    
    if Second_Sea then
    local ToggleVatChatKiDi = Tabs.Sub:AddToggle("ToggleVatChatKiDi", {Title = "Auto Ectoplasm", Default = false })
    ToggleVatChatKiDi:OnChanged(function(Value)
        _G.Ectoplasm = Value
    end)
    Options.ToggleVatChatKiDi:SetValue(false)

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.Ectoplasm then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Ship Steward" or v.Name == "Ship Engineer" or v.Name == "Ship Deckhand" or v.Name == "Ship Officer" and v:FindFirstChild("Humanoid") then
                                if v.Humanoid.Health > 0 then
                                    repeat wait(0)
                                         
                                        AutoHaki()
                                        bringmob = true
                                        EquipTool(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        --Click
                                
                                    until _G.Ectoplasm == false or not v.Parent or v.Humanoid.Health == 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                    bringmob = false
                                end
                            end
                        end
                    else
                        local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if Distance > 20000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        end
                        Tween(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                    end
                end
            end)
        end
    end)
end



local MaxSpeed = 260 -- Velocidade ajustada para 260 (seguro contra flags)

local LocalPlayer = game:GetService("Players").LocalPlayer
local Locations = workspace._WorldOrigin.Locations
local Enabled = false -- Controle do Toggle

-- Função para obter o personagem do jogador
local function getCharacter()
    if not LocalPlayer.Character then
        LocalPlayer.CharacterAdded:Wait()
    end
    LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    return LocalPlayer.Character
end

-- Função para ordenar objetos por distância do jogador
local function DistanceFromPlrSort(ObjectList: table)
    local RootPart = getCharacter().HumanoidRootPart
    table.sort(ObjectList, function(ChestA, ChestB)
        local RootPos = RootPart.Position
        local DistanceA = (RootPos - ChestA.Position).Magnitude
        local DistanceB = (RootPos - ChestB.Position).Magnitude
        return DistanceA < DistanceB
    end)
end

-- Busca e organização dos baús
local UncheckedChests = {}
local FirstRun = true

local function getChestsSorted()
    if FirstRun then
        FirstRun = false
        local Objects = workspace:GetDescendants()
        for _, Object in pairs(Objects) do
            if Object.Name:find("Chest") and Object:IsA("BasePart") then
                table.insert(UncheckedChests, Object)
            end
        end
    end

    local Chests = {}
    for _, Chest in pairs(UncheckedChests) do
        if Chest:FindFirstChild("TouchInterest") then
            table.insert(Chests, Chest)
        end
    end
    DistanceFromPlrSort(Chests)
    return Chests
end

-- Ativar ou desativar o Noclip
local function toggleNoclip(Toggle: boolean)
    for _, Part in pairs(getCharacter():GetChildren()) do
        if Part:IsA("BasePart") then
            Part.CanCollide = not Toggle
        end
    end
end

-- Função de teleporte
local function Teleport(Goal: CFrame, Speed)
    if not Speed then
        Speed = MaxSpeed
    end

    toggleNoclip(true)
    local RootPart = getCharacter().HumanoidRootPart
    local Magnitude = (RootPart.Position - Goal.Position).Magnitude

    while Magnitude > 1 and Enabled do
        local Direction = (Goal.Position - RootPart.Position).unit
        RootPart.CFrame = RootPart.CFrame + Direction * (Speed * task.wait())
        Magnitude = (RootPart.Position - Goal.Position).Magnitude
    end

    toggleNoclip(false)
end

-- Implementação do Antikick
spawn(function()
    while task.wait(30) do
        if Enabled then
            pcall(function()
                sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            end)
        end
    end
end)

-- Função principal
local function main()
    while task.wait(0.5) do
        if Enabled then
            local Chests = getChestsSorted()
            if #Chests > 0 then
                Teleport(Chests[1].CFrame)
            else
                print("Nenhum baú encontrado. Esperando...")
            end
        end
    end
end


-- Toggle para ativar/desativar
local Toggle = Tabs.Sub:AddToggle("Auto Chest", {Title = "Auto Chester", Default = false})

Toggle:OnChanged(function(value)
    Enabled = value
    print("Toggle changed:", value)
    if Enabled then
        spawn(main) -- Inicia o script
    else
        print("Script desativado.")
    end
end)

-- Configuração inicial
local TpDelay = 0.2 -- Tempo entre TPs (em segundos, ajustável)
local LocalPlayer = game:GetService("Players").LocalPlayer
local Enabled = false -- Controle do Toggle
local ChestCounter = 0 -- Contador de baús

-- Função para obter o personagem do jogador
local function getCharacter()
    if not LocalPlayer.Character then
        LocalPlayer.CharacterAdded:Wait()
    end
    LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    return LocalPlayer.Character
end

-- Função para ordenar objetos por distância do jogador
local function DistanceFromPlrSort(ObjectList: table)
    local RootPart = getCharacter().HumanoidRootPart
    table.sort(ObjectList, function(ChestA, ChestB)
        local RootPos = RootPart.Position
        local DistanceA = (RootPos - ChestA.Position).Magnitude
        local DistanceB = (RootPos - ChestB.Position).Magnitude
        return DistanceA < DistanceB
    end)
end

-- Busca e organização dos baús
local UncheckedChests = {}
local FirstRun = true

local function getChestsSorted()
    if FirstRun then
        FirstRun = false
        local Objects = workspace:GetDescendants()
        for _, Object in pairs(Objects) do
            if Object.Name:find("Chest") and Object:IsA("BasePart") then
                table.insert(UncheckedChests, Object)
            end
        end
    end

    local Chests = {}
    for _, Chest in pairs(UncheckedChests) do
        if Chest:FindFirstChild("TouchInterest") then
            table.insert(Chests, Chest)
        end
    end
    DistanceFromPlrSort(Chests)
    return Chests
end

-- Ativar ou desativar o Noclip
local function toggleNoclip(Toggle: boolean)
    for _, Part in pairs(getCharacter():GetChildren()) do
        if Part:IsA("BasePart") then
            Part.CanCollide = not Toggle
        end
    end
end

-- Função de teleporte instantâneo
local function Teleport(Goal: CFrame)
    toggleNoclip(true)
    local RootPart = getCharacter().HumanoidRootPart
    RootPart.CFrame = Goal -- Teleporta diretamente para o baú mais próximo
    toggleNoclip(false)
end

-- Implementação do Antikick
spawn(function()
    while task.wait(30) do
        if Enabled then
            pcall(function()
                sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            end)
        end
    end
end)

-- Reseta o jogador após pegar 3 baús
local function resetCharacter()
    LocalPlayer.Character:BreakJoints() -- Reseta o personagem
    ChestCounter = 0 -- Reseta o contador de baús
end

-- Função principal
local function main()
    while Enabled do
        local Chests = getChestsSorted()
        if #Chests > 0 then
            Teleport(Chests[1].CFrame) -- Teleporta instantaneamente para o baú mais próximo
            ChestCounter += 1
            print("Baú coletado:", ChestCounter)

            -- Reseta o personagem após pegar 3 baús
            if ChestCounter >= 3 then
                print("Resetando personagem...")
                resetCharacter()
            end
        else
            print("Nenhum baú encontrado. Esperando...")
        end

        task.wait(TpDelay) -- Espera o tempo configurado antes de ir para o próximo baú
    end
end


-- Toggle para ativar/desativar
local Toggle = Tabs.Sub:AddToggle("Teleport to Chests", {Title = "TP Chests (Chances de kick)", Default = false})

Toggle:OnChanged(function(value)
    Enabled = value
    print("Toggle changed:", value)
    if Enabled then
        spawn(main) -- Inicia o script
    else
        print("Script desativado.")
    end
end)



------Quest---


local ToggleHallow = Tabs.Quest:AddToggle("ToggleHallow", {Title = "Auto Hallow Scythe [Fully]", Default = false })

    ToggleHallow:OnChanged(function(Value)
        AutoHallowSycthe = Value
    end)
    Options.ToggleHallow:SetValue(false)
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name , "Soul Reaper") then
                                repeat wait(0)
                                     
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    v.HumanoidRootPart.Transparency = 1
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
									--Click
                                until v.Humanoid.Health <= 0 or AutoHallowSycthe == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat Tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                        EquipTool("Hallow Essence")
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
                    end
                end)
    
            end
        end
    end)
	
	
	spawn(function()
           while wait(0.001) do
           if AutoHallowSycthe then
           local args = {
            [1] = "Bones",
            [2] = "Buy",
            [3] = 1,
            [4] = 1
           }
          
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
           end
           end
           end)
        

local ToggleYama = Tabs.Quest:AddToggle("ToggleYama", {Title = "Auto Get Yama", Default = false })
           ToggleYama:OnChanged(function(Value)
            _G.AutoYama = Value
           end)
           Options.ToggleYama:SetValue(false)
           spawn(function()
            while wait() do
                if _G.AutoYama then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                        repeat wait(.1)
                            fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                    end
                end
            end
        end)

local ToggleTushita = Tabs.Quest:AddToggle("ToggleTushita", {Title = "Auto Tushita", Default = false })
        ToggleTushita:OnChanged(function(Value)
            AutoTushita = Value
        end)
        Options.ToggleTushita:SetValue(false)
           spawn(function()
                   while wait() do
                               if AutoTushita then
                                   if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                                       for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                           if v.Name == ("Longma" or v.Name == "Longma") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                            repeat wait(0)
                                                 
                                                   AutoHaki()
                                                   if not game.Players.LocalPlayer.Character:FindFirstChild(SelectWeapon) then
                                                       wait()
                                                       EquipTool(SelectWeapon)
                                                   end
                                                   FarmPos = v.HumanoidRootPart.CFrame
                                                     --Click
                                                   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                   v.Humanoid.JumpPower = 0
                                                   v.Humanoid.WalkSpeed = 0
                                                   v.HumanoidRootPart.CanCollide = false
                                                   v.Humanoid:ChangeState(11)
                                                   Tween(v.HumanoidRootPart.CFrame * Pos)
                                               until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
                                           end
                                       end
                                   else
                                       Tween(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                                   end
                               end
                           end
                   end)


local ToggleHoly = Tabs.Quest:AddToggle("ToggleHoly", {Title = "Auto Holy Torch", Default = false })
                   ToggleHoly:OnChanged(function(Value)
                    _G.Auto_Holy_Torch = Value
                   end)
                   Options.ToggleHoly:SetValue(false)
                   spawn(function()
                    while wait() do
                        if _G.Auto_Holy_Torch then
                            pcall(function()
                                wait(1)
                                repeat Tween(CFrame.new(-10752, 417, -9366)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
                                wait(1)
                                repeat Tween(CFrame.new(-11672, 334, -9474)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
                                wait(1)
                                repeat Tween(CFrame.new(-12132, 521, -10655)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
                                wait(1)
                                repeat Tween(CFrame.new(-13336, 486, -6985)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
                                wait(1)
                                repeat Tween(CFrame.new(-13489, 332, -7925)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                            end)
                        end
                    end
                end)



local ToggleLaw = Tabs.Quest:AddToggle("ToggleLaw", {Title = "Auto Koko", Default = false })

ToggleLaw:OnChanged(function(Value)
    Auto_Law = Value
end)
Options.ToggleLaw:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if Auto_Law then
                if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    wait(0.3)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait(0.4) do
            if Auto_Law then
                if not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                    end
                end
                if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Order" then
                                repeat wait(0)
                                     
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                                    --Click
                                until not v.Parent or v.Humanoid.Health <= 0 or Auto_Law == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                        Tween(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                    end
                end
            end
        end
    end)
end)

local Quests = Tabs.Quest:AddSection("Quests")

local ToggleThird = Tabs.Quest:AddToggle("AutoThird", {
    Title = "Auto Third Sea",
    Default = false
})

ToggleThird:OnChanged(function()
    AutoThird = Options.AutoThird.Value
    if AutoThird then
        task.spawn(function()
            while AutoThird do
                pcall(function()
                    -- Inicia missão
                    game:GetService("ReplicatedStorage")
                        :WaitForChild("Remotes")
                        :WaitForChild("CommF_")
                        :InvokeServer("ZQuestProgress", "Begin")

                    -- Pega boss Rip_Indra
                    local boss = workspace._WorldOrigin.EnemySpawns:FindFirstChild("rip_indra [Lv. 1500] [Boss]")
                    if boss and boss:FindFirstChild("HumanoidRootPart") then
                        -- Tween para cima do boss (sem dano, só hover)
                        local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            hrp.CFrame = boss.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
                        end
                    end
                end)
                task.wait(.2)
            end
        end)
    end
end)

local Items = Tabs.Quest:AddSection("Items Farm")

-- Cria o toggle Fluent
local QuestToggle = Tabs.Quest:AddToggle("QuestToggle", {
    Title = "Auto Saber",
    Default = false
})

QuestToggle:OnChanged(function(Value)
    _G.QuestTP = Value

    if Value then
        -- Executa a quest em uma thread separada
        task.spawn(function()
            local player = game.Players.LocalPlayer
            local char = player.Character or player.CharacterAdded:Wait()
            local hrp = char:WaitForChild("HumanoidRootPart")
            local TweenService = game:GetService("TweenService")
            local RepStorage = game:GetService("ReplicatedStorage")

            -- Função de tween
            local function tweenToPart(part, time)
                if not part then return end
                time = time or 2  -- mais lento
                local info = TweenInfo.new(time, Enum.EasingStyle.Linear)
                local goal = {CFrame = part.CFrame + Vector3.new(0,3,0)}
                local tw = TweenService:Create(hrp, info, goal)
                tw:Play()
                tw.Completed:Wait()
            end

            -- Equipar ferramenta
            local function equipTool(toolName)
                local bp = player:FindFirstChild("Backpack")
                if char:FindFirstChild(toolName) then return true end
                if bp and bp:FindFirstChild(toolName) then
                    bp[toolName].Parent = char
                    return true
                end
                return false
            end

            -- Invocar remote
            local function invokeRemote(args)
                local remote = RepStorage:WaitForChild("Remotes"):WaitForChild("CommF_")
                pcall(function()
                    remote:InvokeServer(unpack(args))
                end)
            end

            -- ===== PEGAR PARTES =====
            local w = workspace.Map
            local Buttons = {
                w.Jungle.QuestPlates.Plate1.Button,
                w.Jungle.QuestPlates.Plate2.Button,
                w.Jungle.QuestPlates.Plate3.Button,
                w.Jungle.QuestPlates.Plate4.Button,
                w.Jungle.QuestPlates.Plate5.Button,
            }

            local Torch = w.Jungle.Torch
            local Fire = w.Desert.Burn.Fire
            local Cup = w.Desert.Cup
            local relicPos = CFrame.new(-1405.94336, 29.8334923, 4.98515654, 0.874396563, -1.35668641e-08, 0.485212028, -1.22983606e-08, 1, 5.01234645e-08, -0.485212028, -4.97950978e-08, 0.874396563)

            local sickManCFrame = CFrame.new(1454.52771, 88.2334976, -1386.77637)
            local relicNPC_CFrame = CFrame.new(-911.656433, 13.7335024, 4077.12036)

            -- ===== EXECUTAR QUEST =====
            if _G.QuestTP then
                -- Plates
                for _,b in ipairs(Buttons) do
                    tweenToPart(b, 1.5)
                    task.wait(0.2)
                end

                -- Torch
                tweenToPart(Torch, 2)
                task.wait(0.2)

                -- Fire
                tweenToPart(Fire, 2)
                task.wait(0.2)

                -- Cup
                tweenToPart(Cup, 2)
                equipTool("Cup")
                task.wait(0.2)
            end

            -- Sick Man
            tweenToPart({CFrame = sickManCFrame}, 2)
            invokeRemote({"ProQuestProgress", "SickMan"})
            task.wait(0.3)

            -- NPC Relíquia
            tweenToPart({CFrame = relicNPC_CFrame}, 2)
            invokeRemote({"ProQuestProgress", "RichSon"})
            task.wait(0.3)

            -- Equip Relic e posiciona
            if equipTool("Relic") then
                local relic = char:FindFirstChild("Relic")
                if relic then
                    relic.Handle.CFrame = relicPos + Vector3.new(0,2,0)
                    tweenToPart({CFrame = relicPos}, 2)
                    print("✔ Relic equipada e posicionada!")
                end
            end
        end)
    end
end)

-- Inicializa o toggle desligado
QuestToggle:SetValue(false)




-- ================================================
-- =============  TOGGLE AUTO WARDEN  ==============
-- ================================================
local ToggleAutoWarden = Tabs.Quest:AddToggle("ToggleAutoWarden", {
    Title = "Auto Warden",
    Default = false
})

ToggleAutoWarden:OnChanged(function(Value)
    _G.AutoWarden = Value
end)

Options.ToggleAutoWarden:SetValue(false)


-- ================================================
-- =============  SISTEMA DE FOLLOW VOANDO  ========
-- ================================================
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer


-- Tween suave e rápido (não buga)
local function SmoothTween(Root, targetCF)
    local tweenInfo = TweenInfo.new(
        0.15,                 -- tween curto evita bug
        Enum.EasingStyle.Linear
    )
    local tween = TweenService:Create(Root, tweenInfo, { CFrame = targetCF })
    tween:Play()
end


spawn(function()
    while task.wait(0.1) do
        if _G.AutoWarden then

            local Char = Player.Character or Player.CharacterAdded:Wait()
            local Root = Char:WaitForChild("HumanoidRootPart")

            -- Procura Chief Warden
            local Warden = workspace.Enemies:FindFirstChild("Chief Warden")

            if Warden and Warden:FindFirstChild("HumanoidRootPart") then
                local hrp = Warden.HumanoidRootPart

                -- Fica 20 studs acima do Warden
                local targetCF = CFrame.new(
                    hrp.Position.X,
                    hrp.Position.Y + 20,
                    hrp.Position.Z
                )

                SmoothTween(Root, targetCF)
            end
        end
    end
end)

-- ================================================
-- =============  TOGGLE AUTO CACHICOL  ============
-- ================================================
local ToggleAutoCachicol = Tabs.Quest:AddToggle("ToggleAutoCachicol", {
    Title = "Auto Capa(Rosa)",
    Default = false
})

ToggleAutoCachicol:OnChanged(function(Value)
    _G.AutoCachicol = Value
end)

Options.ToggleAutoCachicol:SetValue(false)


-- ================================================
-- =============  SISTEMA TWEEN VOANDO  ============
-- ================================================
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- Tween curto e suave
local function SmoothTween(Root, targetCF)
    local tweenInfo = TweenInfo.new(
        0.15,                  -- pequeno, rápido, não buga
        Enum.EasingStyle.Linear
    )
    local tween = TweenService:Create(Root, tweenInfo, { CFrame = targetCF })
    tween:Play()
end

spawn(function()
    while task.wait(0.1) do
        if _G.AutoCachicol then

            local Char = Player.Character or Player.CharacterAdded:Wait()
            local Root = Char:WaitForChild("HumanoidRootPart")
            
            local Swan = workspace.Enemies:FindFirstChild("Swan")

            if Swan and Swan:FindFirstChild("HumanoidRootPart") then
                local hrp = Swan.HumanoidRootPart
                
                -- SEMPRE fica 20 studs acima, real-time
                local targetCF = CFrame.new(
                    hrp.Position.X,
                    hrp.Position.Y + 20,
                    hrp.Position.Z
                ) * CFrame.Angles(0, math.rad(0), 0)

                SmoothTween(Root, targetCF)
            end
        end
    end
end)



-- ================================================
-- =============  TOGGLE AUTO BOSS  =================
-- ================================================
local ToggleAutoPoleV1 = Tabs.Quest:AddToggle("ToggleAutoPoleV1", {
    Title = "Auto Pole V1",
    Default = false
})

ToggleAutoPoleV1:OnChanged(function(Value)
    _G.AutoBoss = Value
end)

Options.ToggleAutoPoleV1:SetValue(false)


-- ================================================
-- =============  AUTO TWEEN VOANDO  ===============
-- ================================================
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- Função segura de tween sem bug
local function TweenToCF(Root, targetCF, speed)
    local distance = (Root.Position - targetCF.Position).Magnitude
    local time = distance / speed

    local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(Root, tweenInfo, { CFrame = targetCF })

    tween:Play()
    tween.Completed:Wait()
end

spawn(function()
    while task.wait(0.3) do
        if _G.AutoBoss then

            local Char = Player.Character or Player.CharacterAdded:Wait()
            local Root = Char:WaitForChild("HumanoidRootPart")

            -- Boss Thunder God
            local Boss = workspace._WorldOrigin.EnemySpawns:FindFirstChild("Thunder God [Lv. 575] [Boss]")

            if Boss then
                -- Mantém posição 20 studs acima do boss
                local targetCF = Boss.CFrame + Vector3.new(0, 20, 0)

                -- Tween voando (velocidade 200)
                TweenToCF(Root, targetCF, 200)
            end
        end
    end
end)


--Teleport
-- Verificar qual Sea o jogador está
local Sea1, Sea2, Sea3 = false, false, false
if game.PlaceId == 2753915549 then
    Sea1 = true
elseif game.PlaceId == 4442272183 then
    Sea2 = true
elseif game.PlaceId == 7449423635 then
    Sea3 = true
else
    game:GetService("Players").LocalPlayer:Kick("Do not Support, Please wait...")
end

-- Inicializar a aba "Teleport"
local Teleport = Tabs.Teleport:AddSection("Move")

-- Botões para trocar de Sea
Tabs.Teleport:AddButton({
    Title = "Sea 1",
    Description = "Teleport to Sea 1",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})

Tabs.Teleport:AddButton({
    Title = "Sea 2",
    Description = "Teleport to Sea 2",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})

Tabs.Teleport:AddButton({
    Title = "Sea 3",
    Description = "Teleport to Sea 3",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})

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
        "The Cafe", "Frist Spot", "Dark Area", "Flamingo Mansion",
        "Flamingo Room", "Green Zone", "Factory", "Coliseum",
        "Zombie Island", "Two Snow Mountain", "Punk Hazard", "Cursed Ship",
        "Ice Castle", "Forgotten Island", "Ussop Island",
    }
elseif Sea3 then
    IslandList = {
        "Mansion", "Port Town", "Great Tree", "Castle On The Sea",
        "MiniSky", "Hydra Island", "Floating Turtle", "Haunted Castle",
        "Ice Cream Island", "Peanut Island", "Cake Island", "Cocoa Island",
        "Candy Island", "Tiki Outpost",
    }
end

-- Dropdown para escolher a ilha
local DropdownIsland = Tabs.Teleport:AddDropdown("DropdownIsland", {
    Title = "Choose Island",
    Description = "Select an island to teleport",
    Values = IslandList,
    Multi = false,
    Default = 1,
})

-- Guardar a ilha selecionada
DropdownIsland:OnChanged(function(Value)
    _G.SelectedIsland = Value
    print("Selected Island:", Value)
end)

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


-- Teleporte para a ilha selecionada
Tabs.Teleport:AddButton({
    Title = "Teleport Island",
    Description = "Teleport to the selected island",
    Callback = function()
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
        elseif _G.SelectedIsland == "The Cafe" then
            TeleportToPosition(CFrame.new(-377.284424, 73.0550919, 291.670776))
        elseif _G.SelectedIsland == "Frist Spot" then
            TeleportToPosition(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
        elseif _G.SelectedIsland == "Dark Area" then
            TeleportToPosition(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
        elseif _G.SelectedIsland == "Flamingo Mansion" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
        elseif _G.SelectedIsland == "Flamingo Room" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625))
        elseif _G.SelectedIsland == "Green Zone" then
            TeleportToPosition(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
        elseif _G.SelectedIsland == "Factory" then
            TeleportToPosition(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
        elseif _G.SelectedIsland == "Coliseum" then
            TeleportToPosition(CFrame.new(-1834.78308, 45.8297157, 1365.29724))
        elseif _G.SelectedIsland == "Zombie Island" then
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
        elseif _G.SelectedIsland == "Great Tree" then
            TeleportToPosition(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
        elseif _G.SelectedIsland == "Castle On The Sea" then
            TeleportToPosition(CFrame.new(-4993.75879, 314.555542, -2996.44507, -0.374604046, 2.25014496e-09, 0.92718488, -1.82605771e-11, 1, -2.43423437e-09, -0.92718488, -9.28805033e-10, -0.374604046))
        elseif _G.SelectedIsland == "MiniSky" then
            Tween2(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
        elseif _G.SelectedIsland == "Port Town" then
            TeleportToPosition(CFrame.new(-301.832092, 20.6410122, 5558.41553))
        elseif _G.SelectedIsland == "Hydra Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5753.5478515625, 610.7880859375, -282.33172607421875))
        elseif _G.SelectedIsland == "Floating Turtle" then
            TeleportToPosition(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
        elseif _G.SelectedIsland == "Mansion" then
            TeleportToPosition(CFrame.new(-12468.4482, 374.954041, -7540.47461, -0.999880493, -1.46357868e-08, -0.0154578825, -1.45267256e-08, 1, -7.16764781e-09, 0.0154578825, -6.94223878e-09, -0.999880493))
        elseif _G.SelectedIsland == "Haunted Castle" then
            TeleportToPosition(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
        elseif _G.SelectedIsland == "Ice Cream Island" then
            TeleportToPosition(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
        elseif _G.SelectedIsland == "Peanut Island" then
            TeleportToPosition(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
        elseif _G.SelectedIsland == "Cake Island" then
            TeleportToPosition(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
        elseif _G.SelectedIsland == "Cocoa Island" then
            TeleportToPosition(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
        elseif _G.SelectedIsland == "Candy Island" then
            TeleportToPosition(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
        elseif _G.SelectedIsland == "Tiki Outpost" then
            TeleportToPosition(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
        end
    end
})

------Fruit----
local Fruit = Tabs.Fruit:AddSection("Fruta")

local ToggleRandomFruit = Tabs.Fruit:AddToggle("RandomFruit", {
    Title = "Random Fruit",
    Default = false 
})

ToggleRandomFruit:OnChanged(function(value)
    _G.RandomFruit = value
    if _G.RandomFruit then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
    end
end)

-- Define o valor inicial do toggle (sem usar Options, apenas com a variável)
ToggleRandomFruit:SetValue(false)



-- Toggle simples
local TweenToFruitToggle = Tabs.Fruit:AddToggle("TweenToFruit", {
    Title = "Tween To Fruit",
    Default = false
})

-- Services
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- Função de tween com offset
local function TweenToPosition(targetCFrame)
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    
    -- Adiciona offset para não colidir com o fruto
    local offset = CFrame.new(0, 3, 0) 
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(HumanoidRootPart, tweenInfo, {CFrame = targetCFrame * offset})
    tween:Play()
    tween.Completed:Wait() -- Espera o tween terminar antes de criar outro
end

-- Loop principal
spawn(function()
    while wait(0.5) do  -- aumenta o wait pra reduzir bug
        if TweenToFruitToggle.Value then
            local fruits = {}
            for _, v in pairs(game.Workspace:GetChildren()) do
                if v:IsA("Tool") and v:FindFirstChild("Handle") and string.find(v.Name, "Fruit") then
                    table.insert(fruits, v.Handle)
                end
            end

            -- Tween para cada fruta
            for _, handle in pairs(fruits) do
                if handle.Parent then
                    TweenToPosition(handle.CFrame)
                end
            end
        end
    end
end)


local Toggle = Tabs.Fruit:AddToggle("Auto Store", {Title = "Auto Store", Default = false})

local AutoStoreTask

Toggle:OnChanged(function(value)
    print("Toggle changed:", value)
    getgenv().AutoStoreFruits = value

    if value then
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
                ["Barrier Fruit"] = "Barrier-Barrier",
                ["Magma Fruit"] = "Magma-Magma",
                ["Quake Fruit"] = "Quake-Quake",
                ["Buddha Fruit"] = "Buddha-Buddha",
                ["Love Fruit"] = "Love-Love",
                ["Spider Fruit"] = "Spider-Spider",
                ["Sound Fruit"] = "Sound-Sound",
                ["Phoenix Fruit"] = "Phoenix-Phoenix",
                ["Portal Fruit"] = "Portal-Portal",
                ["Rumble Fruit"] = "Rumble-Rumble",
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
                ["Leopard Fruit"] = "Leopard-Leopard",
                ["Yeti Fruit"] = "Yeti-Yeti",
                ["Kitsune Fruit"] = "Kitsune-Kitsune",
                ["Dragon East Fruit"] = "Dragon-Dragon",
                ["Dragon West Fruit"] = "Dragon-Dragon"
            }
            return fruitTable[Fruit] or nil
        end

        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer

        -- garante que não tenha duas threads rodando
        if AutoStoreTask then return end

        AutoStoreTask = task.spawn(function()
            while getgenv().AutoStoreFruits do
                task.wait(1)
                pcall(function()
                    if not Player.Character then return end
                    local plrBag = Player.Backpack
                    local plrChar = Player.Character

                    local function StoreIfNotStored(Fruit)
                        if Fruit:IsA("Tool") and Fruit:FindFirstChild("Fruit") then
                            local fruitName = Get_Fruit(Fruit.Name)
                            if fruitName then
                                local stored = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CheckFruit", fruitName)
                                if not stored then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", fruitName, Fruit)
                                end
                            end
                        end
                    end

                    for _, Fruit in pairs(plrChar:GetChildren()) do
                        StoreIfNotStored(Fruit)
                    end
                    for _, Fruit in pairs(plrBag:GetChildren()) do
                        StoreIfNotStored(Fruit)
                    end
                end)
            end
            AutoStoreTask = nil -- reset quando toggle desligar
        end)
    end
end)

local Raid = Tabs.Fruit:AddSection("Raid")

local Chips = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Buddha","Sand","Phoenix","Dough"}

local DropdownRaid = Tabs.Fruit:AddDropdown("DropdownRaid", {
    Title = "Dropdown",
    Values = Chips,
    Multi = false,
    Default = 1,
})
DropdownRaid:SetValue("...")
DropdownRaid:OnChanged(function(Value)
    SelectChip = Value
end)

local ToggleBuy = Tabs.Fruit:AddToggle("ToggleBuy", {Title = "Buy Chip", Default = false })
ToggleBuy:OnChanged(function(Value)
    _G.Auto_Buy_Chips_Dungeon = Value
end)
Options.ToggleBuy:SetValue(false)
spawn(function()
    while wait() do
		if _G.Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = SelectChip
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
        end
    end
end)


-- Toggle para Auto Start Raid
local ToggleStart = Tabs.Fruit:AddToggle("ToggleStart", {
    Title = "Auto Start Raid",
    Default = false
})

ToggleStart:OnChanged(function(Value)
    _G.Auto_StartRaid = Value
end)

ToggleStart:SetValue(false) -- inicializa desligado

-- Função para detectar a ilha
function GetIsland(IslandName)
    return workspace["_WorldOrigin"].Locations:FindFirstChild(IslandName) ~= nil
end

-- Função para clicar no centro do botão de raid
local function ClickButtonCenter(raidSummon)
    if not raidSummon or not raidSummon:FindFirstChild("Button") then return end
    local mainPart = raidSummon.Button:FindFirstChild("Main")
    if not mainPart then return end

    -- Move o personagem para o centro do Main
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    hrp.CFrame = mainPart.CFrame + Vector3.new(0, 3, 0) -- 3 studs acima para não ficar dentro do chão

    task.wait(0.1) -- pequena pausa para o personagem posicionar

    -- Dispara o click
    local clickDetector = mainPart:FindFirstChild("ClickDetector")
    if clickDetector then
        fireclickdetector(clickDetector)
    end
end

-- Loop principal
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                local player = game.Players.LocalPlayer
                local mainGui = player.PlayerGui:FindFirstChild("Main")
                local timer = mainGui and mainGui:FindFirstChild("Timer")
                local hasChip = player.Backpack:FindFirstChild("Special Microchip") 
                                or player.Character:FindFirstChild("Special Microchip")

                if hasChip and (not timer or timer.Visible == false) then

                    -- Detecta o Sea atual
                    local CircleIsland = workspace.Map:FindFirstChild("CircleIsland")
                    local BoatCastle = workspace.Map:FindFirstChild("Boat Castle")

                    if CircleIsland then
                        local raidSummon = CircleIsland:FindFirstChild("RaidSummon2")
                        ClickButtonCenter(raidSummon)
                        repeat task.wait() until GetIsland("Island 1")
                        task.wait(1)
                    elseif BoatCastle then
                        local raidSummon = BoatCastle:FindFirstChild("RaidSummon2")
                        ClickButtonCenter(raidSummon)
                        repeat task.wait() until GetIsland("Island 1")
                        task.wait(1)
                    end

                end
            end
        end)
    end
end)


local ToggleKillAura = Tabs.Fruit:AddToggle("ToggleKillAura", {Title = "Kill Aura", Default = false })
ToggleKillAura:OnChanged(function(Value)
    KillAura = Value
end)
Options.ToggleKillAura:SetValue(false)
spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                        until not KillAura or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)


-- Serviços
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Toggle Auto Next Island
local ToggleNextIsland = Tabs.Fruit:AddToggle("ToggleNextIsland", {
    Title = "Auto Next Island",
    Default = false
})

local AutoNextIsland = false
ToggleNextIsland:OnChanged(function(Value)
    AutoNextIsland = Value
end)

ToggleNextIsland:SetValue(false)

-- Função de Tween para ir até uma ilha
local function TweenToIsland(islandCFrame, duration)
    duration = duration or 1
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:WaitForChild("HumanoidRootPart")

    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local tween = TweenService:Create(hrp, tweenInfo, {CFrame = islandCFrame * CFrame.new(0,70,100)})
    tween:Play()
    tween.Completed:Wait()
end

-- Loop principal do Auto Next Island
spawn(function()
    while task.wait(0.1) do
        if AutoNextIsland then
            pcall(function()
                local raidMap = workspace.Map:FindFirstChild("RaidMap")
                if not raidMap then return end

                -- Verifica se existe alguma ilha do 1 ao 5
                for i = 1,5 do
                    local island = raidMap:FindFirstChild("RaidIsland"..i)
                    if island then
                        TweenToIsland(island.CFrame, 2) -- 2 segundos de Tween
                        task.wait(1) -- espera 1 segundo antes de ir para a próxima ilha
                    end
                end
            end)
        end
    end
end)




local ToggleAwake = Tabs.Fruit:AddToggle("ToggleAwake", {Title = "Auto Awake", Default = false })
ToggleAwake:OnChanged(function(Value)
    AutoAwakenAbilities = Value
end)
Options.ToggleAwake:SetValue(false)
spawn(function()
    while task.wait() do
        if AutoAwakenAbilities then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end)
        end
    end
end)


local ToggleGetFruit = Tabs.Fruit:AddToggle("ToggleGetFruit", {Title = "Get Fruit Low Bely", Default = false })
ToggleGetFruit:OnChanged(function(Value)
    _G.Autofruit = Value
end)

spawn(function()
    while wait(.1) do
        pcall(function()
     if _G.Autofruit then
         
local args = {
    [1] = "LoadFruit",
    [2] = "Rocket-Rocket"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))




local args = {
    [1] = "LoadFruit",
    [2] = "Spin-Spin"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Blade-Blade"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))





local args = {
    [1] = "LoadFruit",
    [2] = "Spring-Spring"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Bomb-Bomb"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Smoke-Smoke"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Spike-Spike"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Flame-Flame"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Eagle-Eagle"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Ice-Ice"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Sand-Sand"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Dark-Dark"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Ghost-Ghost"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Diamond-Diamond"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Light-Light"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Rubber-Rubber"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Creation-Creation"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)
end
end)


if Second_Sea then
Tabs.Fruit:AddButton({
    Title = "Raid Lab",
    Description = "",
    Callback = function()
        Tween2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
    end
})
elseif Third_Sea then
    Tabs.Fruit:AddButton({
        Title = "Raid Lab",
        Description = "",
        Callback = function()
            Tween2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
        end
    })
end

-----race----
Tabs.Race:AddButton({
    Title = "Timple Of Time",
    Description = "",
    Callback = function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
    end
})


Tabs.Race:AddButton({
    Title = "Lever Pull",
    Description = "",
    Callback = function()
        Tween2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end
})


Tabs.Race:AddButton({
    Title = "Acient One",
    Description = "",
    Callback = function()
        Tween2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end
})


local Mastery = Tabs.Race:AddSection("Auto Race")


Tabs.Race:AddButton({
    Title = "Race Door",
    Description = "",
    Callback = function()
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
        wait(0.1)
           Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
           wait(0.1)
              Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
              wait(0.1)
                 Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
            wait(0.5)
                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                    Tween2(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    Tween2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                    Tween2(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                    Tween2(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                    Tween2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                    Tween2(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
                    end
    end
})


local ToggleHumanandghoul = Tabs.Race:AddToggle("ToggleHumanandghoul", {Title = "Auto [ Human / Ghoul ] Trial", Default = false })
ToggleHumanandghoul:OnChanged(function(Value)
    KillAura = Value
end)
Options.ToggleHumanandghoul:SetValue(false)


local ToggleAutotrial = Tabs.Race:AddToggle("ToggleAutotrial", {Title = "Auto Trial", Default = false })
ToggleAutotrial:OnChanged(function(Value)
    _G.AutoQuestRace = Value
end)
Options.ToggleAutotrial:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
					for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
						if v.Name ==  "snowisland_Cylinder.081" then
							BTPZ(v.CFrame* CFrame.new(0,0,0))
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if v.Name ==  "HumanoidRootPart" then
							Tween(v.CFrame* Pos)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
					Tween(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v.Name == "StartPoint" then
							Tween(v.CFrame* CFrame.new(0,10,0))
					  	end
				   	end
				end
			end
        end
    end)
end)

if Third_Sea then
local ToggleMirageIsland = Tabs.Race:AddToggle("ToggleMirageIsland", {Title = "Hop Mirage Island", Default = false })
ToggleMirageIsland:OnChanged(function(Value)
    _G.FindMirageIsland = Value
end)
Options.ToggleMirageIsland:SetValue(false)

spawn(function()
    while wait() do
    if _G.FindMirageIsland then
        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            if HighestPointRealCFrame and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - HighestPointRealCFrame.Position).Magnitude > 10 then
            Tween(getHighestPoint().CFrame * CFrame.new(0, 211.88, 0))
                end
        elseif not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            Hop()
            end
        end
    end
end)
end

local Mastery = Tabs.Race:AddSection("Auto Train")

local ToggleAutoAcientQuest = Tabs.Race:AddToggle("ToggleAutoAcientQuest", {Title = "Auto Train", Default = false })
ToggleAutoAcientQuest:OnChanged(function(Value)
    AutoFarmAcient = Value
end)
Options.ToggleAutoAcientQuest:SetValue(false)
local AcientCframe = CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875)

spawn(function()
    pcall(function()
        while wait() do
            if AutoFarmAcient then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                    AutoFarmAcient = false
                    toTarget(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875))
                end
            end
        end
    end)
end)
spawn(function()
    while wait() do 
        if AutoFarmAcient then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    bringmob = true
                                    repeat wait(0)
                                     
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                until not AutoFarmAcient or not v.Parent or v.Humanoid.Health <= 0
                          bringmob = false
                            end
                        end
                    end
                else
                toTarget(AcientCframe)
                end
            end)
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if AutoFarmAcient then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                    AutoFarmAcient = true
                end
            end
        end
    end)
end)
spawn(function()
while wait() do
    pcall(function()
        if AutoFarmAcient then
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
            wait(0.1)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
        end
    end)
end
end)

------Sea-------

 local RoughSea = Tabs.Sea:AddSection("Mar Agitado")

local Boats = {
    "Dinghy",
    "Guardian",
    "PirateGrandBrigade",
    "PirateBrigade",
    "MarineGrandBrigade",
    "MarineBrigade",
    "PirateSloop",
    "MarineSloop",
    "Beast Hunter"
}

local BoatDropdown = Tabs.Sea:AddDropdown("BoatDealer", {
    Title = "Comprar Barco",
    Values = Boats,
    Multi = false,
    Default = ""
})

BoatDropdown:OnChanged(function(selectedBoat)
    print("Barco selecionado:", selectedBoat)

    local args = {
        "BuyBoat",
        selectedBoat
    }

    pcall(function()
        game:GetService("ReplicatedStorage")
            :WaitForChild("Remotes")
            :WaitForChild("CommF_")
            :InvokeServer(unpack(args))
    end)
end)

-- ===== CONFIG =====
local Zones = {
    ["Lv Infinite"] = Vector3.new(-10000000, 45, 37016.25)
}

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ===== VARIÁVEIS GLOBAIS =====
_G.BoatFly = false
_G.BoatSpeed = 200 -- velocidade inicial

-- ===== TOGGLE DO BARCO =====
local ToggleBoatFly = Tabs.Sea:AddToggle("BoatFly", {
    Title = "Voar com Barco",
    Default = false
})

ToggleBoatFly:OnChanged(function(value)
    _G.BoatFly = value
end)

-- ===== SLIDER DE VELOCIDADE =====
local BoatSpeedSlider = Tabs.Sea:AddSlider("BoatSpeed", {
    Title = "Velocidade do Barco",
    Description = "Ajuste a velocidade do barco",
    Default = _G.BoatSpeed,
    Min = 50,
    Max = 300,
    Rounding = 1,
    Callback = function(Value)
        _G.BoatSpeed = Value
        print("Velocidade do barco alterada:", Value)
    end
})

BoatSpeedSlider:OnChanged(function(Value)
    _G.BoatSpeed = Value
end)

-- ===== LOOP DE VOAR =====
RunService.RenderStepped:Connect(function(dt)
    if _G.BoatFly then
        for _, Boat in pairs(workspace:WaitForChild("Boats"):GetChildren()) do
            if Boat.PrimaryPart == nil and Boat:FindFirstChild("Hull") then
                Boat.PrimaryPart = Boat.Hull
            end

            -- DESATIVA COLISÃO DO BARCO
            for _, part in pairs(Boat:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end

            -- DESATIVA COLISÃO DO JOGADOR
            if LocalPlayer.Character then
                for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end

            -- MOVIMENTO DO BARCO
            if Boat.PrimaryPart then
                local targetPos = Zones["Lv Infinite"]
                local currentPos = Boat.PrimaryPart.Position
                local direction = Vector3.new(targetPos.X - currentPos.X, 0, targetPos.Z - currentPos.Z)
                local distance = direction.Magnitude
                if distance > 5 then
                    local move = direction.Unit * _G.BoatSpeed * dt
                    local newPos = currentPos + Vector3.new(move.X, 0, move.Z)
                    Boat:SetPrimaryPartCFrame(CFrame.new(Vector3.new(newPos.X, 45, newPos.Z)))
                end
            end
        end
    end
end)

-- ================================
--      CONFIGURAÇÕES GLOBAIS
-- ================================
_G.AutoSeaBeast = false
_G.SeaHeight = 130
_G.BoatFly = false

-- ================================
--      TOGGLE NO HUB
-- ================================
local ToggleSeaBeAst = Tabs.Sea:AddToggle("ToggleSeaBeAst", {
    Title = "Auto Sea Beast",
    Default = false
})

ToggleSeaBeAst:OnChanged(function(Value)
    _G.AutoSeaBeast = Value
end)

-- ================================
--      FUNÇÕES AUXILIARES
-- ================================
local Player = game.Players.LocalPlayer

-- Pular do barco
local function JumpOffBoat()
    local char = Player.Character
    if char and char:FindFirstChild("Humanoid") then
        char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        task.wait(0.2)
        char.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
    end
end

-- Equipar todas as ferramentas
local function EquipAllTools()
    local char = Player.Character
    local backpack = Player:FindFirstChild("Backpack")
    if not char or not backpack then return end

    for _, tool in ipairs(backpack:GetChildren()) do
        if tool:IsA("Tool") then
            char.Humanoid:EquipTool(tool)
            task.wait(0.1)
        end
    end
end

-- Determina o tipo de arma
local function GetWeaponType(tool)
    if not tool then return nil end
    local name = tool.Name:lower()
    if tool:FindFirstChild("RemoteEvent") then return "DevilFruit" end
    if tool:FindFirstChild("Melee") or tool:FindFirstChild("Activate") then return "Melee" end
    if tool:FindFirstChild("SwordSlash") then return "Sword" end
    if string.find(name,"gun") or string.find(name,"rifle") or tool:FindFirstChild("RemoteFunctionShoot") then return "Gun" end
    return nil
end

-- Keys de skill por tipo
local SkillSets = {
    DevilFruit = {"Z","X","C","V","F"},
    Melee = {"Z","X","C"},
    Sword = {"Z","X"},
    Gun = {"Z","X"}
}

-- Ataca com todas as skills de um tipo
local function UseSkills(tool)
    local Type = GetWeaponType(tool)
    if not Type then return end
    local Keys = SkillSets[Type]
    for _, key in ipairs(Keys) do
        game:GetService("VirtualInputManager"):SendKeyEvent(true,key,false,game)
        task.wait(0.12)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,key,false,game)
    end
end

-- ================================
--      LOOP AUTO SEA BEAST
-- ================================
task.spawn(function()
    local BoatDisabled = false
    local SeaBeastAlive = false

    while true do
        task.wait(0.3)
        if not _G.AutoSeaBeast then
            BoatDisabled = false
            SeaBeastAlive = false
        else
            pcall(function()
                local SeaFolder = workspace:FindFirstChild("SeaBeasts")
                if not SeaFolder then return end

                local seaBeast = SeaFolder:FindFirstChild("SeaBeast1")
                if not seaBeast or not seaBeast:FindFirstChild("HumanoidRootPart") or not seaBeast:FindFirstChild("Humanoid") then
                    SeaBeastAlive = false
                    return
                end

                -- detecta spawn do Sea Beast
                if not SeaBeastAlive then
                    JumpOffBoat()
                    if not BoatDisabled then
                        _G.BoatFly = false
                        BoatDisabled = true
                    end
                    SeaBeastAlive = true
                end

                -- teleporta acima do Sea Beast
                local hrp = seaBeast.HumanoidRootPart
                local myHRP = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
                if myHRP then
                    myHRP.CFrame = CFrame.new(hrp.Position.X, _G.SeaHeight, hrp.Position.Z)
                end

                -- equipa todas as tools
                EquipAllTools()

                -- ataca com todas as skills de cada ferramenta
                local char = Player.Character
                if char then
                    for _, tool in ipairs(char:GetChildren()) do
                        if tool:IsA("Tool") then
                            UseSkills(tool)
                        end
                    end
                end

                -- desliga execução quando o Sea Beast morre
                if seaBeast.Humanoid.Health <= 0 then
                    SeaBeastAlive = false
                end
            end)
        end
    end
end)

-- Toggle Terrorshark Auto Jump + Stop Boat
local ToggleTerrorshark = Tabs.Sea:AddToggle("ToggleTerrorshark", {
    Title = "Kill Terrorshark",
    Default = false
})

ToggleTerrorshark:OnChanged(function(Value)
    _G.AutoTerrorshark = Value
end)

-- Função para checar Terrorshark
local function CheckTerrorshark()
    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == "Terrorshark" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            return v
        end
    end
    return nil
end

-- Função para pular do barco
local function JumpOffBoat()
    local player = game.Players.LocalPlayer
    local char = player.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        task.wait(0.2)
        char.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
    end
end

-- Função para equipar ferramenta (Melee ou outra)
local function EquipTool(tooltipName)
    local player = game.Players.LocalPlayer
    local char = player.Character
    local backpack = player:FindFirstChild("Backpack")
    if not char or not backpack then return end

    for _, tool in ipairs(backpack:GetChildren()) do
        if tool:IsA("Tool") and tool.ToolTip == tooltipName then
            char.Humanoid:EquipTool(tool)
            break
        end
    end
end

-- Loop principal Terrorshark
spawn(function()
    while task.wait(0.5) do
        if _G.AutoTerrorshark then
            pcall(function()
                local Terrorshark = CheckTerrorshark()
                if Terrorshark then
                    -- Para o barco
                    _G.BoatFly = false

                    -- Pula do barco
                    JumpOffBoat()

                    -- Equipar a ferramenta desejada (ex: Melee)
                    EquipTool("Melee")

                    -- Modifica Terrorshark para facilitar interação
                    Terrorshark.HumanoidRootPart.CanCollide = false
                    Terrorshark.Humanoid.WalkSpeed = 0
                    Terrorshark.HumanoidRootPart.Size = Vector3.new(50,50,50)

                    -- Teleporta próximo do Terrorshark
                    Tween(Terrorshark.HumanoidRootPart.CFrame * CFrame.new(0,5,2))
                end
                -- Não faz nada se Terrorshark ainda não spawnou
            end)
        end
    end
end)


-- Toggle Piranha Auto Jump + Stop Boat + Equip Melee
local TogglePiranha = Tabs.Sea:AddToggle("TogglePiranha", {
    Title = "Kill Piranha ",
    Default = false
})

TogglePiranha:OnChanged(function(Value)
    _G.farmpiranya = Value
end)

-- Função para checar Piranha
local function CheckPiranha()
    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == "Piranha" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            return v
        end
    end
    return nil
end

-- Função para pular do barco
local function JumpOffBoat()
    local player = game.Players.LocalPlayer
    local char = player.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        task.wait(0.2)
        char.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
    end
end

-- Função para equipar ferramenta (Melee ou outra)
local function EquipTool(tooltipName)
    local player = game.Players.LocalPlayer
    local char = player.Character
    local backpack = player:FindFirstChild("Backpack")
    if not char or not backpack then return end

    for _, tool in ipairs(backpack:GetChildren()) do
        if tool:IsA("Tool") and tool.ToolTip == tooltipName then
            char.Humanoid:EquipTool(tool)
            break
        end
    end
end

-- Loop principal Piranha
spawn(function()
    while task.wait(0.5) do
        if _G.farmpiranya then
            pcall(function()
                local Piranha = CheckPiranha()
                if Piranha then
                    -- Para o barco
                    _G.BoatFly = false

                    -- Pula do barco
                    JumpOffBoat()

                    -- Equipar a ferramenta desejada (ex: Melee)
                    EquipTool("Melee")

                    -- Modifica Piranha para facilitar interação
                    Piranha.HumanoidRootPart.CanCollide = false
                    Piranha.Humanoid.WalkSpeed = 0
                    Piranha.HumanoidRootPart.Size = Vector3.new(50,50,50)

                    -- Teleporta próximo do Piranha
                    Tween(Piranha.HumanoidRootPart.CFrame * CFrame.new(0,5,2))
                end
                -- OBS: Não faz nada se Piranha ainda não spawnou
            end)
        end
    end
end)



-- Toggle Shark Auto Jump + Stop Boat
local ToggleShark = Tabs.Sea:AddToggle("ToggleShark", {
    Title = "Kill Shark ",
    Default = false
})

ToggleShark:OnChanged(function(Value)
    _G.AutoShark = Value
end)

-- Função para checar Shark
local function CheckShark()
    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == "Shark" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            return v
        end
    end
    return nil
end

-- Função para pular do barco
local function JumpOffBoat()
    local player = game.Players.LocalPlayer
    local char = player.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        task.wait(0.2)
        char.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
    end
end

-- Função para equipar ferramenta (Melee ou outra)
local function EquipTool(tooltipName)
    local player = game.Players.LocalPlayer
    local char = player.Character
    local backpack = player:FindFirstChild("Backpack")
    if not char or not backpack then return end

    for _, tool in ipairs(backpack:GetChildren()) do
        if tool:IsA("Tool") and tool.ToolTip == tooltipName then
            char.Humanoid:EquipTool(tool)
            break
        end
    end
end

-- Loop principal Shark
spawn(function()
    while task.wait(0.5) do
        if _G.AutoShark then
            pcall(function()
                local Shark = CheckShark()
                if Shark then
                    -- Para o barco
                    _G.BoatFly = false

                    -- Pula do barco
                    JumpOffBoat()

                    -- Equipar a ferramenta desejada (ex: Melee)
                    EquipTool("Melee")

                    -- Modifica Shark para facilitar ataque
                    Shark.HumanoidRootPart.CanCollide = false
                    Shark.Humanoid.WalkSpeed = 0
                    Shark.HumanoidRootPart.Size = Vector3.new(50,50,50)

                    -- Teleporta próximo do Shark
                    Tween(Shark.HumanoidRootPart.CFrame * CFrame.new(0,5,2))
                end
                -- OBS: Não faz nada se Shark ainda não spawnou
            end)
        end
    end
end)

-- Toggle Fish Crew Melee Equip + Jump
local ToggleFishCrew = Tabs.Sea:AddToggle("ToggleFishCrew", {
    Title = "Kill Fish Crew ",
    Default = false
})

ToggleFishCrew:OnChanged(function(Value)
    _G.AutoFishCrew = Value
end)

-- Função para checar Fish Crew
local function CheckFishCrew()
    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == "Fish Crew Member" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            return v
        end
    end
    return nil
end

-- Função para pular do barco
local function JumpOffBoat()
    local player = game.Players.LocalPlayer
    local char = player.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        task.wait(0.2)
        char.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
    end
end

-- Função para equipar melee
local function EquipMelee()
    local player = game.Players.LocalPlayer
    local char = player.Character
    if not char then return end
    local backpack = player:FindFirstChild("Backpack")
    if not backpack then return end

    for _, tool in ipairs(backpack:GetChildren()) do
        if tool:IsA("Tool") and tool.ToolTip == "Melee" then
            player.Character.Humanoid:EquipTool(tool)
            break
        end
    end
end

-- Loop principal Fish Crew Auto Jump + Equip Melee
spawn(function()
    while task.wait(0.5) do
        if _G.AutoFishCrew then
            pcall(function()
                local Fish = CheckFishCrew()
                if Fish then
                    -- para o barco
                    _G.BoatFly = false

                    -- pula do barco
                    JumpOffBoat()

                    -- equipa melee
                    EquipMelee()
                end
            end)
        end
    end
end)


-- Toggle Pirate Ship
local ToggleShip = Tabs.Sea:AddToggle("ToggleShip", {
    Title = "Kill Ship",
    Default = false
})

ToggleShip:OnChanged(function(Value)
    _G.Ship = Value
end)

-- Função para checar Pirate Ship
local function CheckPirateBoat()
    local PirateNames = {"PirateGrandBrigade", "PirateBrigade"}
    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if table.find(PirateNames, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
            return v
        end
    end
    return nil
end

-- Função para pular do barco
local function JumpOffBoat()
    local player = game.Players.LocalPlayer
    local char = player.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        task.wait(0.2)
        char.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
    end
end

-- Função para equipar Melee do Backpack
local function EquipMelee()
    local player = game.Players.LocalPlayer
    local char = player.Character
    local backpack = player:FindFirstChild("Backpack")
    if not char or not backpack then return end

    for _, tool in ipairs(backpack:GetChildren()) do
        if tool:IsA("Tool") and tool.ToolTip == "Melee" then
            char.Humanoid:EquipTool(tool)
            break
        end
    end
end

-- Loop principal Pirate Ship (sem skill)
spawn(function()
    while task.wait(0.3) do
        pcall(function()
            if not _G.Ship then return end
            local Ship = CheckPirateBoat()
            if Ship then
                -- Para o barco
                _G.BoatFly = false

                -- Pula do barco
                JumpOffBoat()

                -- Move o personagem próximo do navio
                local hrp = Ship:FindFirstChild("HumanoidRootPart")
                if hrp and game.Players.LocalPlayer.Character then
                    local myHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if myHRP then
                        myHRP.CFrame = hrp.CFrame * CFrame.new(0,5,0)
                    end
                end

                -- Equipa Melee
                EquipMelee()

                -- Espera o navio morrer
                repeat task.wait(0.3) until not Ship.Parent or Ship.Health.Value <= 0
            end
        end)
    end
end)




-- Toggle Ghost Ship
local ToggleGhostShip = Tabs.Sea:AddToggle("ToggleGhostShip", {
    Title = "Kill Ghost Ship",
    Default = false
})

ToggleGhostShip:OnChanged(function(Value)
    _G.GhostShip = Value
end)

-- Função para checar Ghost Ship
local function CheckGhostShip()
    local GhostNames = {"GhostShip"}
    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if table.find(GhostNames, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
            return v
        end
    end
    return nil
end

-- Loop principal Ghost Ship (skill só enquanto vivo)
spawn(function()
    while task.wait(0.3) do
        pcall(function()
            if not _G.GhostShip then return end

            local Ghost = CheckGhostShip()
            if Ghost then
                -- Para o barco
                _G.BoatFly = false

                -- Pula do barco
                JumpOffBoat()

                -- Move o personagem próximo do navio
                local hrp = Ghost:FindFirstChild("HumanoidRootPart")
                if hrp and game.Players.LocalPlayer.Character then
                    local myHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if myHRP then
                        myHRP.CFrame = hrp.CFrame * CFrame.new(0,5,0)
                    end
                end

                -- Equipa todas as ferramentas
                EquipAllTools()

                -- Ativa AutoSkill/SkillAimbot **somente enquanto o navio estiver vivo**
                AutoSkill = true
                Skillaimbot = true
                local hrpPlayer = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if hrpPlayer then
                    AimBotSkillPosition = hrpPlayer.CFrame * CFrame.new(0,-5,0)
                end

                repeat
                    task.wait(0.3)
                until not Ghost.Parent or Ghost.Health.Value <= 0

                -- Desliga AutoSkill/SkillAimbot imediatamente
                AutoSkill = false
                Skillaimbot = false
            end
        end)
    end
end)



      local ToggleTPKitsune = Tabs.Sea:AddToggle("ToggleTPKitsune", {Title = "Tween To Kitsune Island", Default = false })
      ToggleTPKitsune:OnChanged(function(Value)
        _G.TweenToKitsune = Value
      end)
      Options.ToggleTPKitsune:SetValue(false)
      spawn(function()
        local kitsuneIsland
        while not kitsuneIsland do
            kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
            wait(1)
        end
        while wait() do
            if _G.TweenToKitsune then
                local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
                if shrineActive then
                    for _, v in pairs(shrineActive:GetDescendants()) do
                        if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                            Tween(v.CFrame)
                        end
                    end
                end
            end
        end
    end)

  


      
-----Shop---
local ToggleRandomBone = Tabs.Shop:AddToggle("ToggleRandomBone", {Title = "Random Bone", Default = false })
ToggleRandomBone:OnChanged(function(Value)  
		_G.AutoRandomBone = Value
end)
Options.ToggleRandomBone:SetValue(false)
	
spawn(function()
	while wait(0.0000000000000000000000000000000000000000000000000001) do
	if _G.AutoRandomBone then
	local args = {
	 [1] = "Bones",
	 [2] = "Buy",
	 [3] = 1,
	 [4] = 1
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end
	end
	end)


Tabs.Shop:AddButton({
	Title = "Geppo",
	Description = "10,000 $",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
	end
})



Tabs.Shop:AddButton({
	Title = "Buso Haki",
	Description = "25,000 $",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
	end
})




Tabs.Shop:AddButton({
	Title = "Soru",
	Description = "100,000 $",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
	end
})


Tabs.Shop:AddButton({
	Title = "Observation Haki",
	Description = "750,000 $(Req.Level 300)",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
	end
})

local Mastery = Tabs.Shop:AddSection("Fighting Styles")


Tabs.Shop:AddButton({
	Title = "Black Leg",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
	end
})

Tabs.Shop:AddButton({
	Title = "Electro",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	end
})
Tabs.Shop:AddButton({
	Title = "Fishman Karate",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
	end
})
Tabs.Shop:AddButton({
	Title = "Dragon Claw",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
	end
})
Tabs.Shop:AddButton({
	Title = "Superhuman",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
	end
})
Tabs.Shop:AddButton({
	Title = "Death Step",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
	end
})
Tabs.Shop:AddButton({
	Title = "Sharkman Karate",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	end
})
Tabs.Shop:AddButton({
	Title = "Electric Claw",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	end
})
Tabs.Shop:AddButton({
	Title = "Dragon Talon",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	end
})
Tabs.Shop:AddButton({
	Title = "Godhuman",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
	end
})


Tabs.Shop:AddButton({
    Title = "Sanguine Art",
    Description = "Price: $5,000,000 + 5,000 Fragments\nMaterials Required:\n2 Dark Fragments\n20 Demonic Wisps\n20 Vampire Fangs\n1 Leviathan Heart",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end
})




local Mastery = Tabs.Shop:AddSection("Misc Items")

Tabs.Shop:AddButton({
	Title = "Reset Status",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
	end
})
Tabs.Shop:AddButton({
	Title = "Spin Race",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
	end
})


------Misc---

local WalkOnWaterEnabled = false

local WalkOnWater = Tabs.Misc:AddToggle("WalkOnWater", {
    Title = "Walk On Water",
    Default = false
})

WalkOnWater:OnChanged(function(v)
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



Tabs.Misc:AddButton({
	Title = "Rejoin Server",
	Description = "",
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end
})




local Mastery = Tabs.Misc:AddSection("Team")


Tabs.Misc:AddButton({
	Title = "Join Pirates Team",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
	end
})


Tabs.Misc:AddButton({
	Title = "Join Marines Team",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
	end
})

local Mastery = Tabs.Misc:AddSection("Open Ui")

Tabs.Misc:AddButton({
	Title = "Devil fruit",
	Description = "",
	Callback = function()
		
	end
})





Tabs.Misc:AddButton({
	Title = "Color Haki Menu",
	Description = "",
	Callback = function()
		game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
	end
})



Tabs.Misc:AddButton({
	Title = "Title Name Menu",
	Description = "",
	Callback = function()
		local args = {
			[1] = "getTitles"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
	end
})



Tabs.Misc:AddButton({
	Title = "Awakening Menu",
	Description = "",
	Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
	end
})


local Mastery = Tabs.Misc:AddSection("Misc")


local ToggleRejoin = Tabs.Misc:AddToggle("ToggleRejoin", {
    Title = "Auto Rejoin",
    Description = "",
    Default = false -- Carrega o valor salvo, ou usa "true" como padrão
})

ToggleRejoin:OnChanged(function(Value)
    _G.AutoRejoin = Value
    
end)

Options.ToggleRejoin:SetValue(false) -- Define o valor inicial do toggle

spawn(function()
    while wait() do
        if _G.AutoRejoin then
            pcall(function()
                getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                        game:GetService("TeleportService"):Teleport(game.PlaceId)
                    end
                end)
            end)
        end
    end
end)
	Tabs.Misc:AddButton({
		Title = "Redeem All Codes",
		Description = "Resgata todos os códigos atualizados.",
		Callback = function()
			-- Lista de códigos atualizados
			local updatedCodes = {
				"GetPranked",
				"BossBuild",
				"WildDares",
				"EARN_FRUITS",
				"JCWK",
				"KITTGAMING",
				"KITT_RESET",
				"SUB2GAMERROBOT_RESET1",
				"Sub2CaptainMaui",
				"SUB2GAMERROBOT_EXP1",
				"Sub2Fer999",
				"Enyu_is_Pro",
				"MagicBus",
				"StarcodeHEO",
				"BLUXXY",
				"THEGREATACE",
				"Sub2OfficialNoobie",
				"StrawHatMaine",
				"SUB2NOOBMASTER123",
				"SUB2DAIGROCK",
				"Axiore",
				"TantaiGaming"
			}
	
			-- Função para resgatar um código
			local function RedeemCode(value)
				game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
			end
	
			-- Resgata todos os códigos da lista
			for _, code in pairs(updatedCodes) do
				RedeemCode(code)
			end
		end
	})
	


--------------------------------------------------------------------
-- BOTÃO PERSONALIZADO
--------------------------------------------------------------------
local Player = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")

-- Criando a ScreenGui do botão
local ButtonGui = Instance.new("ScreenGui")
ButtonGui.Name = "ButtonGui"
ButtonGui.Parent = Player:WaitForChild("PlayerGui")
ButtonGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Criando o ImageButton
local ImageButton = Instance.new("ImageButton")
ImageButton.Parent = ButtonGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderSizePixel = 0
ImageButton.Size = UDim2.new(0, 45, 0, 45)
ImageButton.Position = UDim2.new(0.91, 0, 0.07, 0)
ImageButton.Image = "rbxassetid://91062721750487"

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1,0)
UICorner.Parent = ImageButton

-- Função para alternar a GUI Fluent
local function ToggleFluent()
    if Window and Window.Root then
        Window.Root.Visible = not Window.Root.Visible
    end
end

-- Clique / toque para alternar GUI
ImageButton.MouseButton1Click:Connect(ToggleFluent)
ImageButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        ToggleFluent()
    end
end)

-- Tecla P para alternar GUI (PC)
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.P then
        ToggleFluent()
    end
end)

-- === Código de arrastar ===
local dragging = false
local dragInput, startPos, startMousePos

ImageButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        startPos = ImageButton.Position
        startMousePos = UserInputService:GetMouseLocation()

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

ImageButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = UserInputService:GetMouseLocation() - startMousePos
        ImageButton.Position = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y
        )
    end
end)

