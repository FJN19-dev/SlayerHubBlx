-- Slayer V5 (Amethyst) – Executor
-- Totalmente profissional
-- By You (adaptado para visual igual à imagem)

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local Slayer = {}
Slayer.Version = "5.0"

-- Tema Amethyst (degradê / cores refinadas)
Slayer.Theme = {
    AccentA = Color3.fromRGB(145, 95, 255), -- gradiente start (lilac)
    AccentB = Color3.fromRGB(80, 40, 180),  -- gradiente end (deep amethyst)
    Main = Color3.fromRGB(20,20,20),
    Tab = Color3.fromRGB(36,32,45),
    Text = Color3.fromRGB(242,242,245),
    SubText = Color3.fromRGB(170,170,180),
    Element = Color3.fromRGB(55,40,70),
    ElementHover = Color3.fromRGB(85,60,120),
    ToggleSlider = Color3.fromRGB(130,95,190),
    ToggleToggled = Color3.fromRGB(0,0,0),
    Notification = Color3.fromRGB(150,120,200),
    Shadow = Color3.fromRGB(0,0,0)
}

-- Util: arredondar
local function Round(parent, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = radius
    corner.Parent = parent
    return corner
end

-- Util: cria sombra suave por trás
local function CreateShadow(parent, sizeOffset)
    -- cria um frame atrás para simular sombra suave
    local shadow = Instance.new("Frame")
    shadow.Name = "Shadow"
    shadow.BackgroundColor3 = Slayer.Theme.Shadow
    shadow.BorderSizePixel = 0
    shadow.Size = UDim2.new(1, sizeOffset or 8, 1, sizeOffset or 8)
    shadow.Position = UDim2.new(0,4,0,4)
    shadow.AnchorPoint = Vector2.new(0,0)
    shadow.BackgroundTransparency = 0.85
    shadow.ZIndex = parent.ZIndex - 1
    shadow.Parent = parent
    Round(shadow, UDim.new(0,18))
    -- leve blur effect usando UIGradient para dar suavidade
    local gradient = Instance.new("UIGradient")
    gradient.Rotation = 0
    gradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(0,0,0)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0,0,0))
    })
    gradient.Transparency = NumberSequence.new{
        NumberSequenceKeypoint.new(0, 0.85),
        NumberSequenceKeypoint.new(1, 1)
    }
    gradient.Parent = shadow
    return shadow
end

-- Função principal para criar janela
function Slayer:CreateWindow(options)
    options = options or {}
    local Window = {}

    local TitleText = options.Title or ("Slayer Hub "..self.Version)
    local SubTitleText = options.SubTitle or "by You"
    local TabWidth = options.TabWidth or 180
    local Size = options.Size or UDim2.fromOffset(640,480)

    -- ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.IgnoreGuiInset = true
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    -- Container (for proper shadow layering)
    local Container = Instance.new("Frame")
    Container.Size = UDim2.fromOffset(Size.X.Offset, Size.Y.Offset)
    Container.Position = UDim2.new(0.5,0,0.5,0)
    Container.AnchorPoint = Vector2.new(0.5,0.5)
    Container.BackgroundTransparency = 1
    Container.Parent = ScreenGui

    -- MainFrame (actual window)
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.fromOffset(0,0) -- animará até Size
    MainFrame.Position = UDim2.fromScale(0.5,0.5)
    MainFrame.AnchorPoint = Vector2.new(0.5,0.5)
    MainFrame.BackgroundColor3 = self.Theme.Main
    MainFrame.BorderSizePixel = 0
    MainFrame.ClipsDescendants = true
    MainFrame.Parent = Container
    Round(MainFrame, UDim.new(0,16))

    -- sombra atrás (colocada no Container atrás do MainFrame)
    local shadowHolder = Instance.new("Frame")
    shadowHolder.Size = UDim2.new(1,0,1,0)
    shadowHolder.Position = UDim2.new(0,0,0,0)
    shadowHolder.BackgroundTransparency = 1
    shadowHolder.Parent = Container
    CreateShadow(shadowHolder, 12)

    -- Animação de abertura (tamanho)
    TweenService:Create(MainFrame, TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = Size}):Play()
    -- também animar shadow para ficar proporcional
    wait(0.02)
    shadowHolder.Size = UDim2.fromOffset(Size.X.Offset + 12, Size.Y.Offset + 12)

    -- TitleBar (com gradiente)
    local TitleBar = Instance.new("Frame")
    TitleBar.Parent = MainFrame
    TitleBar.Size = UDim2.new(1,0,0,44)
    TitleBar.Position = UDim2.new(0,0,0,0)
    TitleBar.BackgroundColor3 = self.Theme.AccentA
    TitleBar.BorderSizePixel = 0
    Round(TitleBar, UDim.new(0,16))

    -- UIGradient no TitleBar (amethyst)
    local titleGrad = Instance.new("UIGradient")
    titleGrad.Rotation = 0
    titleGrad.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, self.Theme.AccentA),
        ColorSequenceKeypoint.new(1, self.Theme.AccentB)
    }
    titleGrad.Parent = TitleBar

    -- Title text
    local Title = Instance.new("TextLabel")
    Title.Parent = TitleBar
    Title.Size = UDim2.new(1,-120,0.5,0)
    Title.Position = UDim2.new(0,16,0,6)
    Title.BackgroundTransparency = 1
    Title.Font = Enum.Font.GothamBold
    Title.Text = TitleText
    Title.TextColor3 = self.Theme.Text
    Title.TextSize = 18
    Title.TextXAlignment = Enum.TextXAlignment.Left

    local SubTitle = Instance.new("TextLabel")
    SubTitle.Parent = TitleBar
    SubTitle.Size = UDim2.new(1,-120,0.5,0)
    SubTitle.Position = UDim2.new(0,16,0,24)
    SubTitle.BackgroundTransparency = 1
    SubTitle.Font = Enum.Font.Gotham
    SubTitle.Text = SubTitleText
    SubTitle.TextColor3 = self.Theme.SubText
    SubTitle.TextSize = 12
    SubTitle.TextXAlignment = Enum.TextXAlignment.Left

    -- Minimize & Close (estilizados)
    local Minimize = Instance.new("TextButton")
    Minimize.Parent = TitleBar
    Minimize.Size = UDim2.new(0,28,0,28)
    Minimize.Position = UDim2.new(1,-88,0.5,-14)
    Minimize.BackgroundTransparency = 0.35
    Minimize.BackgroundColor3 = Color3.fromRGB(255,255,255)
    Minimize.BorderSizePixel = 0
    Minimize.Font = Enum.Font.GothamBold
    Minimize.Text = "–"
    Minimize.TextColor3 = self.Theme.Text
    Minimize.TextSize = 20
    Round(Minimize, UDim.new(0,12))

    local Close = Instance.new("TextButton")
    Close.Parent = TitleBar
    Close.Size = UDim2.new(0,28,0,28)
    Close.Position = UDim2.new(1,-48,0.5,-14)
    Close.BackgroundTransparency = 0.12
    Close.BackgroundColor3 = Color3.fromRGB(255,85,85)
    Close.BorderSizePixel = 0
    Close.Font = Enum.Font.GothamBold
    Close.Text = "×"
    Close.TextColor3 = Color3.fromRGB(255,255,255)
    Close.TextSize = 18
    Round(Close, UDim.new(0,12))

    Close.MouseButton1Click:Connect(function()
        TweenService:Create(MainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Size = UDim2.fromOffset(0,0)}):Play()
        wait(0.42)
        ScreenGui:Destroy()
    end)

    local minimized = false
    Minimize.MouseButton1Click:Connect(function()
        minimized = not minimized
        local goal = minimized and UDim2.new(0, Size.X.Offset, 0, 44) or Size
        TweenService:Create(MainFrame, TweenInfo.new(0.35, Enum.EasingStyle.Quint), {Size = goal}):Play()
        -- ajustar sombra
        if minimized then
            shadowHolder.Size = UDim2.fromOffset(Size.X.Offset + 12, 44 + 12)
        else
            shadowHolder.Size = UDim2.fromOffset(Size.X.Offset + 12, Size.Y.Offset + 12)
        end
    end)

    -- Drag suave (TitleBar)
    local dragging = false
    local dragInput, mousePos, framePos
    local function update(input)
        local delta = input.Position - mousePos
        local newX = framePos.X + delta.X
        local newY = framePos.Y + delta.Y
        MainFrame.Position = UDim2.new(0, newX, 0, newY)
        shadowHolder.Position = UDim2.new(0, newX - 4, 0, newY - 4)
    end

    TitleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            mousePos = input.Position
            framePos = Vector2.new(MainFrame.AbsolutePosition.X, MainFrame.AbsolutePosition.Y)
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    TitleBar.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    -- Sidebar (com ícones + texto)
    local SideBar = Instance.new("Frame")
    SideBar.Parent = MainFrame
    SideBar.Position = UDim2.new(0,0,0,44)
    SideBar.Size = UDim2.new(0, TabWidth, 1, -44)
    SideBar.BackgroundColor3 = self.Theme.Tab
    SideBar.BorderSizePixel = 0
    Round(SideBar, UDim.new(0,16))

    -- adicionar leve borda interna e sombra
    local innerStroke = Instance.new("UIStroke")
    innerStroke.Parent = SideBar
    innerStroke.Color = Color3.fromRGB(20,20,20)
    innerStroke.Thickness = 1
    innerStroke.Transparency = 0.6

    -- ContentFrame
    local ContentFrame = Instance.new("Frame")
    ContentFrame.Parent = MainFrame
    ContentFrame.Position = UDim2.new(0, TabWidth, 0, 44)
    ContentFrame.Size = UDim2.new(1, -TabWidth, 1, -44)
    ContentFrame.BackgroundColor3 = self.Theme.Main
    ContentFrame.BorderSizePixel = 0
    Round(ContentFrame, UDim.new(0,16))
    ContentFrame.ClipsDescendants = true

    local Tabs = {}

    -- Helper: create sidebar button with icon + text
    local function CreateSidebarButton(parent, index, iconText, labelText)
        local btn = Instance.new("TextButton")
        btn.Parent = parent
        btn.Size = UDim2.new(1, -20, 0, 48)
        btn.Position = UDim2.new(0, 10, 0, 10 + (index-1) * 52)
        btn.BackgroundColor3 = Slayer.Theme.Element
        btn.BorderSizePixel = 0
        btn.AutoButtonColor = false
        Round(btn, UDim.new(0,12))
        btn.Text = ""
        btn.ZIndex = 2

        -- icon label
        local icon = Instance.new("TextLabel")
        icon.Parent = btn
        icon.Size = UDim2.new(0,36,1,0)
        icon.Position = UDim2.new(0,8,0,0)
        icon.BackgroundTransparency = 1
        icon.Font = Enum.Font.GothamBlack
        icon.Text = iconText or "◉"
        icon.TextSize = 18
        icon.TextColor3 = Slayer.Theme.Text
        icon.TextXAlignment = Enum.TextXAlignment.Center
        icon.TextYAlignment = Enum.TextYAlignment.Center

        -- text label
        local txt = Instance.new("TextLabel")
        txt.Parent = btn
        txt.Size = UDim2.new(1, -56, 1, 0)
        txt.Position = UDim2.new(0, 52, 0, 0)
        txt.BackgroundTransparency = 1
        txt.Font = Enum.Font.GothamSemibold
        txt.Text = labelText or "Tab"
        txt.TextSize = 14
        txt.TextColor3 = Slayer.Theme.Text
        txt.TextXAlignment = Enum.TextXAlignment.Left
        txt.TextYAlignment = Enum.TextYAlignment.Center

        -- hover effects
        btn.MouseEnter:Connect(function()
            TweenService:Create(btn, TweenInfo.new(0.18, Enum.EasingStyle.Quad), {BackgroundColor3 = Slayer.Theme.ElementHover}):Play()
        end)
        btn.MouseLeave:Connect(function()
            TweenService:Create(btn, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {BackgroundColor3 = Slayer.Theme.Element}):Play()
        end)

        return btn, icon, txt
    end

    -- Função para adicionar Tab
    function Window:AddTab(tabOptions)
        tabOptions = tabOptions or {}
        local name = tabOptions.Title or "Tab"
        local icon = tabOptions.Icon or "🏠"

        -- calcular index (número de botões já criados +1)
        local index = 1
        for _ in pairs(Tabs) do index = index + 1 end

        -- cria botão na sidebar
        local btn, iconLbl, txtLbl = CreateSidebarButton(SideBar, index, icon, name)

        -- cria frame do conteúdo
        local TabFrame = Instance.new("ScrollingFrame")
        TabFrame.Parent = ContentFrame
        TabFrame.Size = UDim2.new(1, -20, 1, -20)
        TabFrame.Position = UDim2.new(0, 10, 0, 10)
        TabFrame.BackgroundTransparency = 1
        TabFrame.Visible = false
        TabFrame.CanvasSize = UDim2.new(0,0,0,0)
        TabFrame.ScrollBarThickness = 6

        -- style the scroll bar slightly (UI: via UIStroke on bar not direct, but keep simple)
        -- Container for elements inside tab
        local inner = Instance.new("Frame")
        inner.Parent = TabFrame
        inner.Size = UDim2.new(1,0,0,0)
        inner.BackgroundTransparency = 1
        inner.Name = "Inner"
        inner.Position = UDim2.new(0,0,0,0)

        -- When clicking the sidebar, toggle visible
        btn.MouseButton1Click:Connect(function()
            for k,v in pairs(Tabs) do
                if v.Frame then v.Frame.Visible = false end
                if v.Button then
                    -- reset text color
                    v.Button.BackgroundColor3 = Slayer.Theme.Element
                end
            end
            TabFrame.Visible = true
            TweenService:Create(btn, TweenInfo.new(0.12), {BackgroundColor3 = Slayer.Theme.ElementHover}):Play()
        end)

        Tabs[name] = {Button = btn, Frame = TabFrame, Inner = inner}
        return {Button = btn, Frame = TabFrame, Inner = inner}
    end

    -- Coloca primeiro tab padrão
    local default = Window:AddTab({Title = "Welcome", Icon = "☁"})
    default.Frame.Visible = true

    -- exemplo de como adicionar mais tabs (você pode remover esses exemplos)
    local t1 = Window:AddTab({Title = "Trolls | Brookhaven", Icon = "😈"})
    local t2 = Window:AddTab({Title = "Players | Brookhaven", Icon = "👥"})
    local t3 = Window:AddTab({Title = "Casa | Brookhaven", Icon = "🏠"})
    local t4 = Window:AddTab({Title = "Misc", Icon = "⚙"})
    local t5 = Window:AddTab({Title = "Avatar", Icon = "👕"})
    local t6 = Window:AddTab({Title = "Car", Icon = "🚗"})

    -- Ajustes finais de aparência: bordas suaves nos conteúdos
    local cfStroke = Instance.new("UIStroke")
    cfStroke.Parent = ContentFrame
    cfStroke.Color = Color3.fromRGB(15,15,18)
    cfStroke.Thickness = 1
    cfStroke.Transparency = 0.8

    -- Retornar API para uso (ex: Window:AddTab...)
    return Window
end

return Slayer
