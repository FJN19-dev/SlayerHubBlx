-- Slayer V3 (Amethyst) – Executor
-- By You

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Slayer = {}
Slayer.Version = "3.0"

-- Theme Amethyst
Slayer.Theme = {
    Name = "Amethyst",
    Accent = Color3.fromRGB(97, 62, 167),
    AcrylicMain = Color3.fromRGB(20, 20, 20),
    AcrylicBorder = Color3.fromRGB(110, 90, 130),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(85, 57, 139), Color3.fromRGB(40, 25, 65)),
    AcrylicNoise = 0.92,
    TitleBarLine = Color3.fromRGB(95, 75, 110),
    Tab = Color3.fromRGB(160, 140, 180),
    Element = Color3.fromRGB(140, 120, 160),
    ElementBorder = Color3.fromRGB(60, 50, 70),
    InElementBorder = Color3.fromRGB(100, 90, 110),
    ElementTransparency = 0.87,
    ToggleSlider = Color3.fromRGB(140, 120, 160),
    ToggleToggled = Color3.fromRGB(0, 0, 0),
    SliderRail = Color3.fromRGB(140, 120, 160),
    DropdownFrame = Color3.fromRGB(170, 160, 200),
    DropdownHolder = Color3.fromRGB(60, 45, 80),
    DropdownBorder = Color3.fromRGB(50, 40, 65),
    DropdownOption = Color3.fromRGB(140, 120, 160),
    Keybind = Color3.fromRGB(140, 120, 160),
    Input = Color3.fromRGB(140, 120, 160),
    InputFocused = Color3.fromRGB(20, 10, 30),
    InputIndicator = Color3.fromRGB(170, 150, 190),
    Dialog = Color3.fromRGB(60, 45, 80),
    DialogHolder = Color3.fromRGB(45, 30, 65),
    DialogHolderLine = Color3.fromRGB(40, 25, 60),
    DialogButton = Color3.fromRGB(60, 45, 80),
    DialogButtonBorder = Color3.fromRGB(95, 80, 110),
    DialogBorder = Color3.fromRGB(85, 70, 100),
    DialogInput = Color3.fromRGB(70, 55, 85),
    DialogInputLine = Color3.fromRGB(175, 160, 190),
    Text = Color3.fromRGB(240, 240, 240),
    SubText = Color3.fromRGB(170, 170, 170),
    Hover = Color3.fromRGB(140, 120, 160),
    HoverChange = 0.04,
}

-- Round function
local function Round(frame, radius)
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = radius
    UICorner.Parent = frame
end

-- Create Window
function Slayer:CreateWindow(options)
    options = options or {}
    local Window = {}

    local TitleText = options.Title or "Slayer "..self.Version
    local SubTitleText = options.SubTitle or ""
    local TabWidth = options.TabWidth or 160
    local Size = options.Size or UDim2.fromOffset(580,460)
    local Acrylic = options.Acrylic ~= false
    local Theme = self.Theme
    local MinimizeKey = options.MinimizeKey or Enum.KeyCode.LeftControl

    -- ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    -- Blur / Acrylic
    local blur
    if Acrylic then
        blur = Instance.new("BlurEffect")
        blur.Size = 15
        blur.Parent = game:GetService("Lighting")
    end

    -- MainFrame
    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0,0,0,0)
    MainFrame.Position = UDim2.new(0.5,0,0.5,0)
    MainFrame.AnchorPoint = Vector2.new(0.5,0.5)
    MainFrame.BackgroundColor3 = Theme.AcrylicMain
    MainFrame.BorderSizePixel = 0
    MainFrame.ClipsDescendants = true
    MainFrame.Active = true
    MainFrame.Parent = ScreenGui
    Round(MainFrame, UDim.new(0,20))

    -- Open animation
    TweenService:Create(MainFrame, TweenInfo.new(0.6,Enum.EasingStyle.Quint), {Size=Size}):Play()

    -- TitleBar
    local TitleBar = Instance.new("Frame")
    TitleBar.Parent = MainFrame
    TitleBar.Size = UDim2.new(1,0,0,35)
    TitleBar.BackgroundColor3 = Theme.Accent
    Round(TitleBar, UDim.new(0,20))

    local Title = Instance.new("TextLabel")
    Title.Parent = TitleBar
    Title.Size = UDim2.new(1,-70,1,0)
    Title.Position = UDim2.new(0,10,0,0)
    Title.BackgroundTransparency = 1
    Title.Font = Enum.Font.GothamBold
    Title.Text = TitleText
    Title.TextColor3 = Theme.Text
    Title.TextSize = 16
    Title.TextXAlignment = Enum.TextXAlignment.Left

    local SubTitle = Instance.new("TextLabel")
    SubTitle.Parent = TitleBar
    SubTitle.Size = UDim2.new(1,-70,1,0)
    SubTitle.Position = UDim2.new(0,10,0,16)
    SubTitle.BackgroundTransparency = 1
    SubTitle.Font = Enum.Font.Gotham
    SubTitle.Text = SubTitleText
    SubTitle.TextColor3 = Theme.SubText
    SubTitle.TextSize = 12
    SubTitle.TextXAlignment = Enum.TextXAlignment.Left

    -- Close/Minimize
    local Minimize = Instance.new("TextButton")
    Minimize.Parent = TitleBar
    Minimize.Size = UDim2.new(0,25,0,25)
    Minimize.Position = UDim2.new(1,-60,0.5,-12)
    Minimize.BackgroundTransparency = 1
    Minimize.Font = Enum.Font.GothamBold
    Minimize.Text = "–"
    Minimize.TextSize = 20
    Minimize.TextColor3 = Theme.Text

    local Close = Instance.new("TextButton")
    Close.Parent = TitleBar
    Close.Size = UDim2.new(0,25,0,25)
    Close.Position = UDim2.new(1,-30,0.5,-12)
    Close.BackgroundTransparency = 1
    Close.Font = Enum.Font.GothamBold
    Close.Text = "×"
    Close.TextSize = 20
    Close.TextColor3 = Color3.fromRGB(255,85,85)

    Close.MouseButton1Click:Connect(function()
        TweenService:Create(MainFrame,TweenInfo.new(0.4,Enum.EasingStyle.Quint),{Size=UDim2.new(0,0,0,0)}):Play()
        wait(0.4)
        if blur then blur:Destroy() end
        ScreenGui:Destroy()
    end)

    local minimized=false
    Minimize.MouseButton1Click:Connect(function()
        minimized = not minimized
        local goal = minimized and UDim2.new(0,Size.X.Offset,0,35) or Size
        TweenService:Create(MainFrame,TweenInfo.new(0.4,Enum.EasingStyle.Quint),{Size=goal}):Play()
    end)

    -- Drag functionality
    local dragging = false
    local dragInput, mousePos, framePos
    local UserInputService = game:GetService("UserInputService")

    local function update(input)
        local delta = input.Position - mousePos
        MainFrame.Position = UDim2.new(0, framePos.X + delta.X, 0, framePos.Y + delta.Y)
    end

    TitleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            mousePos = input.Position
            framePos = Vector2.new(MainFrame.Position.X.Offset, MainFrame.Position.Y.Offset)
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

    -- Sidebar
    local SideBar = Instance.new("Frame")
    SideBar.Parent = MainFrame
    SideBar.Position = UDim2.new(0,0,0,35)
    SideBar.Size = UDim2.new(0,TabWidth,1,-35)
    SideBar.BackgroundColor3 = Theme.Tab
    Round(SideBar, UDim.new(0,20))

    -- ContentFrame
    local ContentFrame = Instance.new("Frame")
    ContentFrame.Parent = MainFrame
    ContentFrame.Position = UDim2.new(0,TabWidth,0,35)
    ContentFrame.Size = UDim2.new(1,-TabWidth,1,-35)
    ContentFrame.BackgroundColor3 = Theme.AcrylicMain
    Round(ContentFrame, UDim.new(0,20))
    ContentFrame.ClipsDescendants = true

    local Tabs = {}

    function Window:AddTab(tabOptions)
        tabOptions = tabOptions or {}
        local name = tabOptions.Title or "Tab"
        local icon = tabOptions.Icon or ""

        local TabButton = Instance.new("TextButton")
        TabButton.Parent = SideBar
        TabButton.Size = UDim2.new(1,-20,0,40)
        TabButton.BackgroundColor3 = Theme.Element
        TabButton.TextColor3 = Theme.Text
        TabButton.Font = Enum.Font.GothamBold
        TabButton.TextSize = 14
        Round(TabButton, UDim.new(0,12))
        TabButton.TextXAlignment = Enum.TextXAlignment.Left
        TabButton.Text = "  "..name

        local TabFrame = Instance.new("ScrollingFrame")
        TabFrame.Parent = ContentFrame
        TabFrame.Size = UDim2.new(1,-10,1,-10)
        TabFrame.Position = UDim2.new(0,5,0,5)
        TabFrame.BackgroundTransparency = 1
        TabFrame.Visible = false

        local Tab = {Button=TabButton, Frame=TabFrame, Buttons={}}

        -- Add Button
        function Tab:AddButton(options)
            options = options or {}
            local Title = options.Title or "Button"
            local Callback = options.Callback or function() end

            local Btn = Instance.new("TextButton")
            Btn.Parent = TabFrame
            Btn.Size = UDim2.new(1,-10,0,35)
            Btn.BackgroundColor3 = Theme.Element
            Btn.Font = Enum.Font.Gotham
            Btn.Text = Title
            Btn.TextColor3 = Theme.Text
            Btn.TextSize = 14
            Round(Btn, UDim.new(0,12))
            Btn.MouseButton1Click:Connect(Callback)
        end

        -- Add Toggle
        function Tab:AddToggle(name, options)
            options = options or {}
            local Title = options.Title or "Toggle"
            local Default = options.Default or false

            local ToggleFrame = Instance.new("Frame")
            ToggleFrame.Parent = TabFrame
            ToggleFrame.Size = UDim2.new(1,-10,0,35)
            ToggleFrame.BackgroundColor3 = Theme.Element
            Round(ToggleFrame, UDim.new(0,12))

            local Label = Instance.new("TextLabel")
            Label.Parent = ToggleFrame
            Label.Size = UDim2.new(0.7,0,1,0)
            Label.Position = UDim2.new(0,10,0,0)
            Label.BackgroundTransparency = 1
            Label.Font = Enum.Font.Gotham
            Label.Text = Title
            Label.TextColor3 = Theme.Text
            Label.TextSize = 14
            Label.TextXAlignment = Enum.TextXAlignment.Left

            local Button = Instance.new("TextButton")
            Button.Parent = ToggleFrame
            Button.Size = UDim2.new(0,30,0,20)
            Button.Position = UDim2.new(1,-40,0.5,-10)
            Button.BackgroundColor3 = Default and Theme.ToggleToggled or Theme.ToggleSlider
            Button.Text = ""
            Round(Button, UDim.new(0,10))

            local Value = Default
            local callbacks = {}

            local function SetValue(newValue)
                Value = newValue
                Button.BackgroundColor3 = Value and Theme.ToggleToggled or Theme.ToggleSlider
                for _, cb in pairs(callbacks) do
                    pcall(cb, Value)
                end
            end

            Button.MouseButton1Click:Connect(function()
                SetValue(not Value)
            end)

            local Toggle = {}
            Toggle.Value = Value
            function Toggle:OnChanged(callback)
                table.insert(callbacks, callback)
            end
            function Toggle:Set(val)
                SetValue(val)
            end
            return Toggle
        end

        TabButton.MouseButton1Click:Connect(function()
            for _, t in pairs(Tabs) do t.Frame.Visible = false end
            TabFrame.Visible = true
        end)

        Tabs[name] = Tab
        return Tab
    end

    return Window
end

-- Notifications
function Slayer:Notify(options)
    options = options or {}
    local Title = options.Title or "Notification"
    local Content = options.Content or ""
    local SubContent = options.SubContent or ""
    local Duration = options.Duration or 5

    local NotifGui = Instance.new("ScreenGui")
    NotifGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    NotifGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local Frame = Instance.new("Frame")
    Frame.Parent = NotifGui
    Frame.Size = UDim2.fromOffset(300,100)
    Frame.Position = UDim2.new(1,-310,1,-110)
    Frame.BackgroundColor3 = Slayer.Theme.Element
    Round(Frame, UDim.new(0,12))

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Parent = Frame
    TitleLabel.Size = UDim2.new(1,-10,0,25)
    TitleLabel.Position = UDim2.new(0,5,0,5)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.Text = Title
    TitleLabel.TextColor3 = Slayer.Theme.Text
    TitleLabel.TextSize = 16

    local ContentLabel = Instance.new("TextLabel")
    ContentLabel.Parent = Frame
    ContentLabel.Size = UDim2.new(1,-10,0,35)
    ContentLabel.Position = UDim2.new(0,5,0,30)
    ContentLabel.BackgroundTransparency = 1
    ContentLabel.Font = Enum.Font.Gotham
    ContentLabel.Text = Content.."\n"..SubContent
    ContentLabel.TextColor3 = Slayer.Theme.SubText
    ContentLabel.TextSize = 14
    ContentLabel.TextWrapped = true

    TweenService:Create(Frame, TweenInfo.new(0.5,Enum.EasingStyle.Quint), {Position=UDim2.new(1,-310,1,-120)}):Play()

    if Duration then
        delay(Duration, function()
            TweenService:Create(Frame, TweenInfo.new(0.5,Enum.EasingStyle.Quint), {Position=UDim2.new(1,310,1,-120)}):Play()
            wait(0.5)
            NotifGui:Destroy()
        end)
    end
end

-- Return Slayer
return Slayer
