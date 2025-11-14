local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "ＳＬＡＹＥＲ ＨＵＢ | ＳＣＲＩＰＴ ＵＮＩＶＥＲＳＡＬ",
    Icon = "globe", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Slayer Hub",
    LoadingSubtitle = "by FJN",
    Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "SlayerUniversal"
    },
 
 
 })
-- [ Aba: Inicio ]
-- Criação da aba principal
local HomeTab = Window:CreateTab("Inicio 🏠")

HomeTab:CreateParagraph({
    Title = "📜 Log de Atualizações",
    Content = ""
             .."🔹 Versão 0.1 - [08/03/2025]\n"
             .."   • uiui\n"
             .."   • Nova UI.\n"
             .."💡 Caso encontre problemas ou tenha sugestões, nos mande no nosso servidor do Discord!"
})


-- Botões principais
HomeTab:CreateButton({
    Name = " Discord Oficial 🎮",
    Callback = function()
        setclipboard("discord.gg/Duw6zymNmP")
        Rayfield:Notify({
            Title = "Discord Copiado!",
            Content = "Cole no seu navegador para entrar",
            Image = 73536379355418,
            Duration = 5
        })
    end
})




-- [ Aba: Blox Fruits ]
local bf = Window:CreateTab("Blox Fruits", 96912890034305)

local Button = bf:CreateButton({
    Name = "Blue X Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua",true))()
    end,
 })
local Button = bf:CreateButton({
    Name = "Vector hub 🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AAwful/Vector_Hub/0/v2"))()
    end,
 })
local Button = bf:CreateButton({
    Name = "Deep Hub 🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GoblinKun009/Script/refs/heads/main/Deep", true))()
    end,
 })
local Button = bf:CreateButton({
    Name = "Annie Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/1st-Mars/Annie/main/1st.lua'))()
    end,
 })
local Button = bf:CreateButton({
    Name = "Vex Hub 🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yoursvexyyy/VEX/refs/heads/main/bloxfruits%20cash%20farm%20premium"))()
    end,
 })
local Button = bf:CreateButton({
    Name = "Foggy 🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FOGOTY/foggy-bloxfruit/refs/heads/main/script"))()
    end,
 })
local Button = bf:CreateButton({
    Name = "Hoho Hub V4 🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end,
 })

 local Button = bf:CreateButton({
    Name = "Xeter Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
    end,
 })



 local Button = bf:CreateButton({
    Name = "DatThg Hub",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/Bu9WxdDv/raw", true))()
    end,
 })

 local Button = bf:CreateButton({
    Name = "QuantumOnyx Hub",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/PNBbCgUy", true))()
    end,
 })

 local Button = bf:CreateButton({
    Name = "Nat Hub",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/hSer5Sf8", true))()
    end,
 })

local Button = bf:CreateButton({
    Name = "Vxeze Hub🔑",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/xpQNRJAv", true))()
    end,
 })

 local Button = bf:CreateButton({
    Name = "Koatta Hub🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KOBENFF/sdfd/refs/heads/main/Koatta.txt"))()
    end,
 })

 local Button = bf:CreateButton({
    Name = "Zen Hub🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Zenhubtop/zen_hub_pr/main/zennewwwwui.lua", true))()
    end,
 })

local Button = bf:CreateButton({
    Name = "Banana Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Chiriku2013/BananaCatHub/refs/heads/main/BananaCatHub.lua"))()
    end,
 })

local Button = bf:CreateButton({
    Name = "Alchemy Hub🔑",
    Callback = function()
        loadstring(game:HttpGet("https://nicuse.xyz/MainHub.lua"))()
    end,
 })

 local Button = bf:CreateButton({
    Name = "Mera Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Hungtu2121/Mera-Hub-Game/main/MeraHubBloxFruitNew'))()
    end,
 })
 local Button = bf:CreateButton({
    Name = "Beni Hub ",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/BloxFruits/main/BeniHub", true))()
    end,
 })
 local Button = bf:CreateButton({
    Name = "memaybeo Kaitun",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/memaybeohub/NewPage/main/Kaitun.lua'))()
    end,
 })
 
 local Button = bf:CreateButton({
    Name = "Aimbot Blox ",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/d5BcMzyC"))()
    end,
 })
 local Button = bf:CreateButton({
    Name = "Mashii Hub  ",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Flontium2/Mashii-Hub/refs/heads/main/Main.lua"))()
    end,
 })
 local Button = bf:CreateButton({
    Name = "Master Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/onepicesenpai/onepicesenpai/main/onichanokaka'))()
    end,
 })
 local Button = bf:CreateButton({
    Name = "Lap Hub🔑 ",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/BloxFruits/refs/heads/main/LapHub", true))()
    end,
 })
 
 local Button = bf:CreateButton({
    Name = "Lumin Hub ",
    Callback = function()
        loadstring(game:HttpGet("http://lumin-hub.lol/BloxFruits.lua"))()
    end,
 })
 
local Button = bf:CreateButton({
    Name = "Ziner Hub ",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tienvn123tkvn/Test/main/ZINERHUB.lua"))()
    end,
 })
 local Button = bf:CreateButton({
    Name = "TheBillDevHub🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/selciawashere/screepts/refs/heads/main/BFKEYSYS",true))()
    end,
 })
 local Button = bf:CreateButton({
    Name = "Mukuro Hub",
    Callback = function()
        loadstring(game:HttpGet("https://auth.quartyz.com/scripts/Loader.lua"))()
    end,
 })
 local Button = bf:CreateButton({
    Name = "Monster Hub ",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/giahuy2511-coder/MonsterHub/refs/heads/main/MonsterHub"))()
    end,
 })
 
 local Button = bf:CreateButton({
    Name = "RoHub🔑",
    Callback = function()
        _G.settings = {
autoLoadConfig = false, -- self explanatory
joinTeam = "Pirates" -- "Pirates" or "Marines"
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/RO-HUB-CODEX/RO-HUB/refs/heads/main/bloxfruits.lua"))()
    end,
 })
 local Button = bf:CreateButton({
    Name = "TsuoHub ",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/Tsuoscripts"))()
    end,
 })
 
 local Button = bf:CreateButton({
    Name = "Solix Hub V2🔑 ",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/p7Wiyps2"))()
    end,
 })


 
 -- [ Aba: King Legacy]
local kg = Window:CreateTab("King Legacy", "crown")

local Button = kg:CreateButton({
    Name = "Arc Hub 🔑",
    Callback = function()
        getgenv().RaidUI = false
        getgenv().CustomDistance = 10
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChopLoris/ArcHub/main/main.lua"))()
    end,
 })
local Button = kg:CreateButton({
    Name = "Hyper Hub 🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua"))()
    end,
 })

  -- [ Aba: Fish]
  local peixe = Window:CreateTab("Fish", "fish")

local Button = peixe:CreateButton({
    Name = "Alchemy Hub🔑",
    Callback = function()
        loadstring(game:HttpGet("https://getalchemy.net/r"))()
    end,
 })

  local Button = peixe:CreateButton({
    Name = "Speed Hub X",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Fisch-Speed-Hub-X-No-Key-Free-21187"))()
    end,
 })
  local Button = peixe:CreateButton({
    Name = "Nicuse Hub🔑",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Nicuse101/CustomScripts/refs/heads/master/GrowAGarden', true))()
    end,
 })
  local Button = peixe:CreateButton({
    Name = "Allux Hub 🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/x6mani/Allux/refs/heads/main/Fisch.lua"))()
    end,
 })

local Button = peixe:CreateButton({
    Name = "Lunor🔑",
    Callback = function()
        loadstring(game:HttpGet("https://lunor.dev/loader"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "Vex Op Hub🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yoursvexyyy/VEX-OP/refs/heads/main/fisch%20premium"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "Não sei",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cayden305/Scripts/refs/heads/main/FischObfuscated.lua"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "Black Hub🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Skibidiking123/Fisch1/refs/heads/main/FischMain"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "Ub hub🔑",
    Callback = function()
        loadstring(game:HttpGet("https://gitlab.com/r_soft/main/-/raw/main/LoadUB.lua"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "RadeonHub🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RadeonScripts/RadeonHubMain/main/MainRobloxExploit"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "SpaceHub Multi🔑",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ago106/SpaceHub/refs/heads/main/Multi'))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "Superman245",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Superman245/sc2/refs/heads/main/s6"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "EternalHub ",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Vixx77/Eternal/main/EternalHub_Fish'))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "Onyx Hub  ",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zenzon23/ONYX-HUB123/refs/heads/main/FISCH"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "Deng Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DENGHUB2025/HUGHUB/main/WL", true))()
    end,
 })
 
 local Button = peixe:CreateButton({
    Name = "Forge Hub🔑 ",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "kidxnox🔑",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kidxnox/f/refs/heads/main/f"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "Rinns Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kylosilly/femboyware/refs/heads/main/Fisch.lua"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "NYX Hub ",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/londnee/code/refs/heads/main/Fisch.lua"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "Naok iHub ",
    Callback = function()
        loadstring(game:HttpGet("https://naokihub.vercel.app",true))()
    end,
 })
 
 local Button = peixe:CreateButton({
    Name = "Atherhub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "SolixHub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
    end,
 })
 local Button = peixe:CreateButton({
    Name = "Hidden Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tulontop/HiddenRevamp/refs/heads/main/Loader.luau"))()
    end,
 })
 
  -- [ Aba: Shindo Life 2]
  local shindo = Window:CreateTab("Shindo Life 2", 137798227540164)

  local Button = shindo:CreateButton({
    Name = "Project Nexus 🔑",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Shindo-Life-The-Hunt-Project-Nexus-SL-Hunt-11331"))()
    end,
 })

 -- [ Aba: Roube Um Brainrot]
 local roube = Window:CreateTab("Roube Um Brainrot ", "brain")

 local Button = roube:CreateButton({
    Name = "Dark Spawner🔑",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/SC4qoDAW/raw"))()
    end,
 })

 local Button = roube:CreateButton({
    Name = "EzHub 🔑",
    Callback = function()
       loadstring(game:HttpGet("https://api.junkie-development.de/api/v1/luascripts/public/8e08cda5c530a6529a71a14b94a33734eccc870e9f28220410eb21d719f66da9/download"))()
    end,
 })
 local Button = roube:CreateButton({
    Name = "Nemeless Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ily123950/Vulkan/refs/heads/main/Tr"))()
    end,
 })
 local Button = roube:CreateButton({
    Name = "Lennon Hub",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/MJw2J4T6/raw"))()
    end,
 })
 local Button = roube:CreateButton({
    Name = "Chilli Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
    end,
 })
 local Button = roube:CreateButton({
    Name = "Hackman Hub🔑",
    Callback = function()
        loadstring(game:HttpGet("https://hackmanhub.pages.dev/loader.txt"))()
    end,
 })
 local Button = roube:CreateButton({
    Name = "devil ugly's Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DynaFetchy/Scripts/refs/heads/main/Loader.lua"))()
    end,
 })
 local Button = roube:CreateButton({
    Name = "Miranda Hub",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/JJVhs3rK/raw"))()
    end,
 })
 local Button = roube:CreateButton({
    Name = "Arbix Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Youifpg/Steal-a-Brainrot-op/refs/heads/main/Arbixhub-obfuscated.lua"))()
    end,
 })

 -- [ Aba: 99 Noites Na Floresta]
 local noites = Window:CreateTab("99 Noites Na Floresta ", "brain")

 local Button = noites:CreateButton({
    Name = "VoidWare Hub",
    Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/09PNvrxb"))()
    end,
})

local Button = noites:CreateButton({
    Name = "H4x Hub🔑",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/loader.lua", true))()
    end,
})

local Button = noites:CreateButton({
    Name = "Speed-Hub🔑 X",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end,
})

local Button = noites:CreateButton({
    Name = "Nit Hub",
    Callback = function()
       loadstring(game:HttpGet('https://ntt-hub.xyz/api/repo?id1=main&id2=lua'))()
    end,
})

local Button = noites:CreateButton({
    Name = "Simplicity",
    Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/husyDTrd"))()
    end,
})

local Button = noites:CreateButton({
    Name = "ToastyHub🔑",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/nouralddin-abdullah/ToastyHub-XD/refs/heads/main/hub-main.lua"))()
    end,
})

local Button = noites:CreateButton({
    Name = "Auto Steal",
    Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/K9b3Fd7Z"))()
    end,
})

local Button = noites:CreateButton({
    Name = "Elude Hub🔑",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/DarkenedEssence/Elude/refs/heads/main/Loader.lua"))()
    end,
})

local Button = noites:CreateButton({
    Name = "Vex OP Hub🔑",
    Callback = function()
       loadstring(game:HttpGet("https://pastefy.app/ibClJUjE/raw"))()
    end,
})

local Button = noites:CreateButton({
    Name = "Alchemy Hub🔑",
    Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/FmDrhT3m"))()
    end,
})

