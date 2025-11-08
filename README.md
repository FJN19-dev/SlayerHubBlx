-- Slayer V5 (Amethyst) – Executor
-- Totalmente profissional
-- By You

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local Slayer = {}
Slayer.Version = "5.0"

-- Tema Amethyst refinado
Slayer.Theme = {
    Accent = Color3.fromRGB(97, 62, 167),
    Main = Color3.fromRGB(25,25,25),
    Tab = Color3.fromRGB(150,130,180),
    Text = Color3.fromRGB(240,240,240),
    SubText = Color3.fromRGB(170,170,170),
    Element = Color3.fromRGB(140,120,160),
    ElementHover = Color3.fromRGB(160,140,180),
    ToggleSlider = Color3.fromRGB(140,120,160),
    ToggleToggled = Color3.fromRGB(0,0,0),
    Notification = Color3.fromRGB(140,120,160),
}

-- Função para arredondar elementos
local function Round(frame, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = radius
    corner.Parent = frame
end

-- Função para criar janela
function Slayer:CreateWindow(options)
    options = options or {}
    local Window = {}

    local TitleText = options.Title or "Slayer Hub "..self.Version
    local SubTitleText = options.SubTitle or "by You"
    local TabWidth = options.TabWidth or 160
    local Size = options.Size or UDim2.fromOffset(580,460)

    -- ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    -- MainFrame
    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.fromOffset(0,0)
    MainFrame.Position = UDim2.new(0.5,0,0.5,0)
    MainFrame.AnchorPoint = Vector2.new(0.5,0.5)
    MainFrame.BackgroundColor3 = self.Theme.Main
    MainFrame.BorderSizePixel = 0
    MainFrame.ClipsDescendants = true
    MainFrame.Parent = ScreenGui
    Round(MainFrame, UDim.new(0,16))

    -- Abrir animação
    TweenService:Create(MainFrame,TweenInfo.new(0.6,Enum.EasingStyle.Quint),{Size=Size}):Play()

    -- TitleBar
    local TitleBar = Instance.new("Frame")
    TitleBar.Parent = MainFrame
    TitleBar.Size = UDim2.new(1,0,0,35)
    TitleBar.BackgroundColor3 = self.Theme.Accent
    Round(TitleBar, UDim.new(0,16))

    local Title = Instance.new("TextLabel")
    Title.Parent = TitleBar
    Title.Size = UDim2.new(1,-80,0.5,0)
    Title.Position = UDim2.new(0,10,0,0)
    Title.BackgroundTransparency = 1
    Title.Font = Enum.Font.GothamBold
    Title.Text = TitleText
    Title.TextColor3 = self.Theme.Text
    Title.TextSize = 16
    Title.TextXAlignment = Enum.TextXAlignment.Left

    local SubTitle = Instance.new("TextLabel")
    SubTitle.Parent = TitleBar
    SubTitle.Size = UDim2.new(1,-80,0.5,0)
    SubTitle.Position = UDim2.new(0,10,0,17)
    SubTitle.BackgroundTransparency = 1
    SubTitle.Font = Enum.Font.Gotham
    SubTitle.Text = SubTitleText
    SubTitle.TextColor3 = self.Theme.SubText
    SubTitle.TextSize = 12
    SubTitle.TextXAlignment = Enum.TextXAlignment.Left

    -- Minimize & Close
    local Minimize = Instance.new("TextButton")
    Minimize.Parent = TitleBar
    Minimize.Size = UDim2.new(0,25,0,25)
    Minimize.Position = UDim2.new(1,-60,0.5,-12)
    Minimize.BackgroundTransparency = 1
    Minimize.Text = "–"
    Minimize.Font = Enum.Font.GothamBold
    Minimize.TextSize = 20
    Minimize.TextColor3 = self.Theme.Text

    local Close = Instance.new("TextButton")
    Close.Parent = TitleBar
    Close.Size = UDim2.new(0,25,0,25)
    Close.Position = UDim2.new(1,-30,0.5,-12)
    Close.BackgroundTransparency = 1
    Close.Text = "×"
    Close.Font = Enum.Font.GothamBold
    Close.TextSize = 20
    Close.TextColor3 = Color3.fromRGB(255,85,85)

    Close.MouseButton1Click:Connect(function()
        TweenService:Create(MainFrame,TweenInfo.new(0.4,Enum.EasingStyle.Quint),{Size=UDim2.fromOffset(0,0)}):Play()
        wait(0.4)
        ScreenGui:Destroy()
    end)

    local minimized=false
    Minimize.MouseButton1Click:Connect(function()
        minimized = not minimized
        local goal = minimized and UDim2.new(0,Size.X.Offset,0,35) or Size
        TweenService:Create(MainFrame,TweenInfo.new(0.4,Enum.EasingStyle.Quint),{Size=goal}):Play()
    end)

    -- Drag suave
    local dragging=false
    local dragInput, mousePos, framePos
    local function update(input)
        local delta = input.Position - mousePos
        MainFrame.Position = UDim2.new(0, framePos.X + delta.X, 0, framePos.Y + delta.Y)
    end

    TitleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging=true
            mousePos=input.Position
            framePos=Vector2.new(MainFrame.Position.X.Offset,MainFrame.Position.Y.Offset)
            input.Changed:Connect(function()
                if input.UserInputState==Enum.UserInputState.End then
                    dragging=false
                end
            end)
        end
    end)

    TitleBar.InputChanged:Connect(function(input)
        if input.UserInputType==Enum.UserInputType.MouseMovement then
            dragInput=input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input==dragInput and dragging then
            update(input)
        end
    end)

    -- Sidebar
    local SideBar = Instance.new("Frame")
    SideBar.Parent = MainFrame
    SideBar.Position = UDim2.new(0,0,0,35)
    SideBar.Size = UDim2.new(0,TabWidth,1,-35)
    SideBar.BackgroundColor3 = self.Theme.Tab
    Round(SideBar, UDim.new(0,16))

    -- ContentFrame
    local ContentFrame = Instance.new("Frame")
    ContentFrame.Parent = MainFrame
    ContentFrame.Position = UDim2.new(0,TabWidth,0,35)
    ContentFrame.Size = UDim2.new(1,-TabWidth,1,-35)
    ContentFrame.BackgroundColor3 = self.Theme.Main
    Round(ContentFrame, UDim.new(0,16))
    ContentFrame.ClipsDescendants=true

    local Tabs={}

    -- Função para adicionar Tab
    function Window:AddTab(tabOptions)
        tabOptions = tabOptions or {}
        local name = tabOptions.Title or "Tab"
        local icon = tabOptions.Icon or ""

        local TabButton = Instance.new("TextButton")
        TabButton.Parent = SideBar
        TabButton.Size = UDim2.new(1,-20,0,40)
        TabButton.Position = UDim2.new(0,10,#SideBar:GetChildren()*45)
        TabButton.BackgroundColor3 = self.Theme.Element
        Round(TabButton, UDim.new(0,12))
        TabButton.Text = "  "..name
        TabButton.Font = Enum.Font.GothamBold
        TabButton.TextSize = 14
        TabButton.TextColor3 = self.Theme.Text
        TabButton.TextXAlignment = Enum.TextXAlignment.Left

        local TabFrame = Instance.new("ScrollingFrame")
        TabFrame.Parent = ContentFrame
        TabFrame.Size = UDim2.new(1,-10,1,-10)
        TabFrame.Position = UDim2.new(0,5,0,5)
        TabFrame.BackgroundTransparency = 1
        TabFrame.Visible=false
        TabFrame.CanvasSize = UDim2.new(0,0,0,0)

        local Tab = {Button=TabButton, Frame=TabFrame}

        TabButton.MouseButton1Click:Connect(function()
            for _, t in pairs(Tabs) do t.Frame.Visible=false end
            TabFrame.Visible=true
        end)

        Tabs[name]=Tab
        return Tab
    end

    return Window
end

return Slayer
