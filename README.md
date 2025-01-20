local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Slayer Hub ",
    SubTitle = "(discord.gg/J37PW97j6a)",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Theme = "Rose",
    MinimizeKey = Enum.KeyCode.LeftControl -- Usado quando não há uma tecla de atalho para minimizar
})



local Tabs = {
    
    Main = Window:AddTab({ Title = "Farm", Icon = "scroll" }),
    Travel = Window:AddTab({ Title = "Travel", Icon = "house-plus" }),
    Fruta = Window:AddTab({ Title = "Fruta", Icon = "apple" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "pencil" }),
    Status = Window:AddTab({ Title = "User and Server", Icon = "user-cog" }),
    Stats = Window:AddTab({ Title = "Auto Status", Icon = "trending-up" })
}

local Options = Fluent.Options

-- Farm Tab

-- Travel Tab

Tabs.Travel:AddButton({
   Title = "Teleporte Sea 1",
   Description = "",
   Callback = function()
       print("Clicked!") 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
   end
})

Tabs.Travel:AddButton({
   Title = "Teleporte Sea 2",
   Description = "",
   Callback = function()
       print("Clicked!") 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
   end
})

Tabs.Travel:AddButton({
   Title = "Teleporte Sea 3",
   Description = "",
   Callback = function()
       print("Clicked!") 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
   end
})

-- Fruta Tab

local Toggle = Tabs.Fruta:AddToggle("Roleta Fruta", {Title = "Roleta Fruta", Default = false})

Toggle:OnChanged(function(value)
    print("Toggle changed:", value)
    if value then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
    end
end)

local Toggle = Tabs.Fruta:AddToggle("Auto Store", {Title = "Auto Store", Default = false})

Toggle:OnChanged(function(value)
    print("Toggle changed:", value)
    if value then
        -- Configuração inicial

getgenv().AutoStoreFruits = true

local function Get_Fruit(Fruit)
  if Fruit == "Rocket Fruit" then
    return "Rocket-Rocket"
  elseif Fruit == "Spin Fruit" then
    return "Spin-Spin"
  elseif Fruit == "Chop Fruit" then
    return "Chop-Chop"
  elseif Fruit == "Spring Fruit" then
    return "Spring-Spring"
  elseif Fruit == "Bomb Fruit" then
    return "Bomb-Bomb"
  elseif Fruit == "Smoke Fruit" then
    return "Smoke-Smoke"
  elseif Fruit == "Spike Fruit" then
    return "Spike-Spike"
  elseif Fruit == "Flame Fruit" then
    return "Flame-Flame"
  elseif Fruit == "Falcon Fruit" then
    return "Falcon-Falcon"
  elseif Fruit == "Ice Fruit" then
    return "Ice-Ice"
  elseif Fruit == "Sand Fruit" then
    return "Sand-Sand"
  elseif Fruit == "Dark Fruit" then
    return "Dark-Dark"
  elseif Fruit == "Ghost Fruit" then
    return "Ghost-Ghost"
  elseif Fruit == "Diamond Fruit" then
    return "Diamond-Diamond"
  elseif Fruit == "Light Fruit" then
    return "Light-Light"
  elseif Fruit == "Rubber Fruit" then
    return "Rubber-Rubber"
  elseif Fruit == "Barrier Fruit" then
    return "Barrier-Barrier"
  elseif Fruit == "Magma Fruit" then
    return "Magma-Magma"
  elseif Fruit == "Quake Fruit" then
    return "Quake-Quake"
  elseif Fruit == "Buddha Fruit" then
    return "Buddha-Buddha"
  elseif Fruit == "Love Fruit" then
    return "Love-Love"
  elseif Fruit == "Spider Fruit" then
    return "Spider-Spider"
  elseif Fruit == "Sound Fruit" then
    return "Sound-Sound"
  elseif Fruit == "Phoenix Fruit" then
    return "Phoenix-Phoenix"
  elseif Fruit == "Portal Fruit" then
    return "Portal-Portal"
  elseif Fruit == "Rumble Fruit" then
    return "Rumble-Rumble"
  elseif Fruit == "Pain Fruit" then
    return "Pain-Pain"
  elseif Fruit == "Blizzard Fruit" then
    return "Blizzard-Blizzard"
  elseif Fruit == "Gravity Fruit" then
    return "Gravity-Gravity"
  elseif Fruit == "Mammoth Fruit" then
    return "Mammoth-Mammoth"
  elseif Fruit == "Dough Fruit" then
    return "Dough-Dough"
  elseif Fruit == "Shadow Fruit" then
    return "Shadow-Shadow"
  elseif Fruit == "Venom Fruit" then
    return "Venom-Venom"
  elseif Fruit == "Control Fruit" then
    return "Control-Control"
    elseif Fruit == "Gas Fruit" then
    return "Gas-Gas"
    elseif Fruit == "Spirit Fruit" then
    return "Spirit-Spirit"
elseif Fruit == "Leopard Fruit" then
    return "Leopard-Leopard" 
 elseif Fruit == "Yeti Fruit" then
    return "Yeti-Yeti"
  elseif Fruit == "Kitsune Fruit" then
    return "Kitsune-Kitsune"
    elseif Fruit == "Dragon  East Fruit" then
    return "Dragon-Dragon"
    elseif Fruit == "Dragon West Fruit" then
    return "Dragon-Dragon"
      end
end

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

task.spawn(function()
  while getgenv().AutoStoreFruits do task.wait()
    pcall(function()
      local plrBag = Player.Backpack
      local plrChar = Player.Character
      for _,Fruit in pairs(plrChar:GetChildren()) do
        if Fruit:IsA("Tool") and Fruit:FindFirstChild("Fruit") then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", Get_Fruit(Fruit.Name), Fruit)
        end
      end
      for _,Fruit in pairs(plrBag:GetChildren()) do
        if Fruit:IsA("Tool") and Fruit:FindFirstChild("Fruit") then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", Get_Fruit(Fruit.Name), Fruit)
        end
      end
    end)
  end
end)
    end
end)

local Toggle = Tabs.Fruta:AddToggle("Find Fruits", {Title = "Find Fruits", Default = false})

Toggle:OnChanged(function(value)
    print("Toggle changed:", value)
    if value then
        -- Teleporte para Frutas no Blox Fruits
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

-- Função para localizar frutas no mapa
local function encontrarFrutas()
    for _, objeto in ipairs(game.Workspace:GetDescendants()) do
        if objeto:IsA("Model") and objeto:FindFirstChild("Handle") then
            if string.find(objeto.Name, "Fruit") then
                return objeto
            end
        end
    end
    return nil
end

-- Função para teleportar até a fruta
local function teleportarParaFruta(fruta)
    if fruta and fruta:FindFirstChild("Handle") then
        local frutaPosicao = fruta.Handle.Position
        HumanoidRootPart.CFrame = CFrame.new(frutaPosicao + Vector3.new(0, 5, 0)) -- Teleporta 5 unidades acima para evitar colisão
        print("Teleportado para a fruta: " .. fruta.Name)
    else
        print("Fruta não encontrada ou já foi coletada.")
    end
end

-- Loop contínuo para encontrar frutas e teleportar
while true do
    local frutaEncontrada = encontrarFrutas()
    if frutaEncontrada then
        teleportarParaFruta(frutaEncontrada)
        break -- Sai do loop após teleportar para a fruta
    else
        print("Nenhuma fruta encontrada no mapa. Tentando novamente em 10 segundos.")
        wait(10) -- Espera 10 segundos antes de procurar novamente
    end
end
    end
end)

local Toggle = Tabs.Fruta:AddToggle("Esp", {Title = "Esp", Default = false})

Toggle:OnChanged(function(value)
    print("Toggle changed:", value)
    if value then
        -- Função para listar frutas no mapa com informações
local function listarFrutas()
    local workspace = game:GetService("Workspace")
    local players = game:GetService("Players")
    local jogador = players.LocalPlayer -- Jogador local

    -- Verifica se o jogador está carregado
    if not jogador.Character or not jogador.Character:FindFirstChild("HumanoidRootPart") then
        warn("Jogador não encontrado.")
        return
    end

    local posicaoJogador = jogador.Character.HumanoidRootPart.Position

    -- Percorre todos os objetos no mapa
    for _, objeto in pairs(workspace:GetDescendants()) do
        -- Verifica se o objeto é uma fruta (ajuste o nome conforme necessário)
        if objeto:IsA("Model") and objeto.Name:lower():find("fruit") then
            local origem = "Desconhecida"

            -- Determina a origem da fruta
            if objeto:FindFirstChild("SpawnTime") then
                origem = "Spawnada" -- Fruta gerada pelo jogo
            elseif objeto:FindFirstChild("DroppedBy") then
                origem = "Dropada" -- Fruta dropada por outro jogador
            end

            -- Calcula a distância entre o jogador e a fruta
            if objeto:FindFirstChild("PrimaryPart") then
                local posicaoFruta = objeto.PrimaryPart.Position
                local distancia = (posicaoJogador - posicaoFruta).Magnitude

                -- Exibe as informações no console com o texto em roxo
                warn("Fruta encontrada!")
                warn("Nome: " .. objeto.Name)
                warn("Distância: " .. math.floor(distancia) .. " unidades")
                warn("Origem: " .. origem)
                warn("-----------------------------")
            end
        end
    end
end

-- Chama a função para listar frutas
listarFrutas()
    end
end)

-- Definindo o valor de Point (ajuste conforme necessário)
local Point = 1 -- Altere para o valor correto

-- Auto Melee
Tabs.Stats:AddToggle("AutoMelee", { Title = "Auto Melee", Default = false }):OnChanged(function(t)
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

-- Auto Defense
Tabs.Stats:AddToggle("AutoDefense", { Title = "Auto Defense", Default = false }):OnChanged(function(t)
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

-- Auto Sword
Tabs.Stats:AddToggle("AutoSword", { Title = "Auto Sword", Default = false }):OnChanged(function(t)
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

-- Auto Gun
Tabs.Stats:AddToggle("AutoGun", { Title = "Auto Gun", Default = false }):OnChanged(function(t)
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

-- Auto Blox Fruit
Tabs.Stats:AddToggle("AutoFruit", { Title = "Auto Blox Fruit", Default = false }):OnChanged(function(t)
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

--shop

local ToggleRandomBone = Tabs.Shop:AddToggle("ToggleRandomBone", {Title = "Random Bone",Description = "", Default = false })
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
	Title = "observation Haki",
	Description = "750,000 $(Req.Level 300)",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
	end
})

local Mastery = Tabs.Shop:AddSection("Fighting Styles")

Tabs.Shop:AddButton({
    Title = "Black Leg",
    Description = "Price: $150,000\nRequirement: None",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end
})

Tabs.Shop:AddButton({
    Title = "Electro",
    Description = "Price: $500,000\nRequirement: Mink Race",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end
})

Tabs.Shop:AddButton({
    Title = "Fishman Karate",
    Description = "Price: $750,000\nRequirement: Fishman Race",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end
})

Tabs.Shop:AddButton({
    Title = "Dragon Claw",
    Description = "Price: 1,500 Fragments\nRequirement: Complete Blackbeard's quest",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
    end
})

Tabs.Shop:AddButton({
    Title = "Superhuman",
    Description = "Price: $3,000,000\nRequirement: 300 Mastery on Black Leg, Electro, Fishman Karate, and Dragon Claw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end
})

Tabs.Shop:AddButton({
    Title = "Death Step",
    Description = "Price: $5,000,000 + 5,000 Fragments\nRequirement: 400 Mastery on Black Leg",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end
})

Tabs.Shop:AddButton({
    Title = "Sharkman Karate",
    Description = "Price: $2,500,000 + 5,000 Fragments\nRequirement: 400 Mastery on Fishman Karate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end
})

Tabs.Shop:AddButton({
    Title = "Electric Claw",
    Description = "Price: $3,000,000\nRequirement: 400 Mastery on Electro",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end
})

Tabs.Shop:AddButton({
    Title = "Dragon Talon",
    Description = "Price: $3,000,000 + 5,000 Fragments\nRequirement: 400 Mastery on Dragon Claw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end
})

Tabs.Shop:AddButton({
    Title = "Sanguine Art",
    Description = "Price: $5,000,000 + 5,000 Fragments\nMaterials Required:\n2 Dark Fragments\n20 Demonic Wisps\n20 Vampire Fangs\n1 Leviathan Heart",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end
})


Tabs.Shop:AddButton({
    Title = "Godhuman",
    Description = "Price: $5,000,000 + 5,000 Fragments\nMaterials Required:\n10 Dragon Scales\n20 Fish Tails\n10 Mystic Droplets\n20 Magma Ores",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
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

--misc

Tabs.Misc:AddToggle("Anti Afk", {Title = "Anti AFK", Default = false}):OnChanged(function(t)
    _G.AntiAFK = t
    if _G.AntiAFK then
        local VirtualUser = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:Connect(function()
            if _G.AntiAFK then
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end
        end)
    end
end)
Tabs.Misc:AddToggle("Auto Haki", {Title = "Auto Haki", Default = true}):OnChanged(function(t)
    _G.AutoHaki = t
    if _G.AutoHaki then
        spawn(function()
            while _G.AutoHaki do
                wait(1) -- Espera 1 segundo para evitar sobrecarga
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                end
            end
        end)
    end
end)


Tabs.Misc:AddButton({
	Title = "Rejoin Server",
	Description = "",
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end
})


Tabs.Misc:AddButton({
	Title = "Hop Server",
	Description = "",
	Callback = function()
		Hop()
	end
})

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
		local num = 0;
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
					wait()
					pcall(function()
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(4)
				end
			end
		end
	end
	function Teleport() 
		while wait() do
			pcall(function()
				TPReturner()
				if foundAnything ~= "" then
					TPReturner()
				end
			end)
		end
	end
	Teleport()
end      


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


local ToggleRejoin = Tabs.Misc:AddToggle("ToggleRejoin", {Title = "Auto Rejoin", Description = "",Default = true })
ToggleRejoin:OnChanged(function(Value)
	_G.AutoRejoin = Value
end)

Options.ToggleRejoin:SetValue(true)
spawn(function()
	while wait() do
		if _G.AutoRejoin then
				getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
					if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
						game:GetService("TeleportService"):Teleport(game.PlaceId)
					end
				 end)
			end
		end
	end)

 --Ss
local Usser = Tabs.Status:AddParagraph({
    Title = "User :",
    Content = "Name : "..game.Players.LocalPlayer.DisplayName.." (@"..game.Players.LocalPlayer.Name..")\nLevel : "..game:GetService("Players").LocalPlayer.Data.Level.Value.."\nBeli : "..game:GetService("Players").LocalPlayer.Data.Beli.Value.."\nFragments : "..game:GetService("Players").LocalPlayer.Data.Fragments.Value.."\nBounty : "..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value.."\nHealth : "..game.Players.LocalPlayer.Character.Humanoid.Health.."/"..game.Players.LocalPlayer.Character.Humanoid.MaxHealth.."\nStamina : "..game.Players.LocalPlayer.Character.Energy.Value.."/"..game.Players.LocalPlayer.Character.Energy.MaxValue.."\nRace : " ..game:GetService("Players").LocalPlayer.Data.Race.Value.."\nDevil Fruit : "..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value..""
})

local Time = Tabs.Status:AddParagraph({
        Title = "Time Zone",
        Content = ""
    })
    
    local function UpdateOS()
        local date = os.date("*t")
        local hour = (date.hour) % 24
        local ampm = hour < 12 and "AM" or "PM"
        local timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm)
        local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
        local LocalizationService = game:GetService("LocalizationService")
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local name = player.Name
        local result, code = pcall(function()
            return LocalizationService:GetCountryRegionForPlayerAsync(player)
        end)
        Time:SetDesc(datetime.." - "..timezone.." [ " .. code .. " ]")
    end
    spawn(function()
        while true do
            UpdateOS()
            game:GetService("RunService").RenderStepped:Wait()
        end
    end)
    
    local Timekl = Tabs.Status:AddParagraph({
        Title = "Time Sever",
        Content = ""
    })
    
    function UpdateTime()
local GameTime = math.floor(workspace.DistributedGameTime+0.5)
local Hour = math.floor(GameTime/(60^2))%24
local Minute = math.floor(GameTime/(60^1))%60
local Second = math.floor(GameTime/(60^0))%60
Timekl:SetDesc("[Time Sever] : Hours : "..Hour.. "  Minutes : "..Minute.."  Seconds : "..Second)
end

spawn(function()
 while task.wait() do
 pcall(function()
  UpdateTime()
  end)
 end
 end)
 
local FM = Tabs.Status:AddParagraph({
        Title = "Full Moon",
        Content = ""
    })
    
    task.spawn(function()
            while task.wait() do
                pcall(function()
                    if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        FM:SetDesc("Moon: 5/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                        FM:SetDesc("Moon: 4/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                        FM:SetDesc("Moon: 3/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                        FM:SetDesc("Moon: 2/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                        FM:SetDesc("Moon: 1/5")
                    else
                        FM:SetDesc("Moon: 0/5")
                    end
                end)
            end
    end)     
 
local Elite_Hunter_Status = Tabs.Status:AddParagraph({
    Title = "Elite Status",
    Content = "Status: "
})


spawn(function()
    while wait() do
        spawn(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                Elite_Hunter_Status:SetDesc("Status : ✅")    
            else
                Elite_Hunter_Status:SetDesc("Status : ❌")    
            end
        end)
    end
end)

local Kitsune = Tabs.Status:AddParagraph({
    Title = "Kitsune Island",
    Content = "Status: "
})

spawn(function()
    pcall(function()
        while wait() do
if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
Kitsune:SetDesc('Status : ✅')
else
  Kitsune:SetDesc('Status : ❌' )
        end
           end
    end)
end)

local Mirragecheck = Tabs.Status:AddParagraph({
    Title = "Mirrage Island",
    Content = "Status: "
})

spawn(function()
    pcall(function()
        while wait() do
if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
Mirragecheck:SetDesc('Status : ✅')
else
  Mirragecheck:SetDesc('Status : ❌' )end
        end
    end)
end)

local FrozenIsland = Tabs.Status:AddParagraph({
    Title = "Frozen Dimension",
    Content = "Status: "
})

spawn(function()
pcall(function()
    while wait() do
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
            FrozenIsland:SetDesc('Status : ✅')
        else
            FrozenIsland:SetDesc('Status : ❌')
        end
    end
end)
end)



-- Agora essa bomba vai
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.908554554, 0, 0.0703517571, 0)
ImageButton.Size = UDim2.new(0, 45, 0, 45)
ImageButton.Image = "rbxassetid://91062721750487"

UICorner.Parent = ImageButton

-- Adicionando a função para pressionar a tecla LeftControl
ImageButton.MouseButton1Down:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
end)




-- Addons:
-- SaveManager (Permite ter um sistema de configurações)
-- InterfaceManager (Permite ter um sistema de gerenciamento de interface)

-- Passa a biblioteca para os nossos gerenciadores
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignora as chaves usadas pelo ThemeManager.
-- (não queremos que as configurações salvem temas, queremos?)
SaveManager:IgnoreThemeSettings()

-- Você pode adicionar índices de elementos que o gerenciador de configurações deve ignorar
SaveManager:SetIgnoreIndexes({})

-- Caso de uso para fazer isso dessa maneira:
-- um hub de scripts pode ter temas em uma pasta global
-- e configurações do jogo em uma pasta separada por jogo
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

Window:SelectTab(1)

Fluent:Notify({
    Title = "Fluent",
    Content = "O script foi carregado.",
    Duration = 8
})

-- Você pode usar o SaveManager:LoadAutoloadConfig() para carregar uma configuração
-- que foi marcada para ser carregada automaticamente!
SaveManager:LoadAutoloadConfig()
