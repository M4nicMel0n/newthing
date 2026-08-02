local Library = {}

    local RunService, Players, UserInputService, TweenService = game:GetService("RunService"), game:GetService("Players"), game:GetService("UserInputService"), game:GetService("TweenService")
    local IsStudio = RunService:IsStudio()
    local function GetParent()
        local parent;
        if not IsStudio and game.PlaceId ~= 71236979615716 then
            parent = game.CoreGui
        else
            parent = Players.LocalPlayer.PlayerGui
        end
        return parent
    end
    function Library.MakeWindow(Size, Subtext, ColorTheme)
        local ColorTheme = ColorTheme or Color3.fromRGB(0, 155, 0)
        local WindowConnections = {Connections = {}}
        function WindowConnections:IsPress(input)
            return input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch
        end
        function WindowConnections:Add(Connection)
            table.insert(WindowConnections.Connections, Connection)
        end
        function WindowConnections:Quit()
            for i, v in pairs(WindowConnections.Connections) do
                v:Disconnect()
            end
        end
        local ScreenGui = Instance.new("ScreenGui")
        local MainFrame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Banner = Instance.new("ImageLabel")
        local Divider = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local Preversion = Instance.new("TextLabel")
        local NavBar = Instance.new("ScrollingFrame")
        local NavBarList = Instance.new("UIListLayout")
        local Paint = Instance.new("ImageButton")
        local Minimize = Instance.new("ImageButton")
        local Exit = Instance.new("ImageButton")
        local DropShadowHolder = Instance.new("Frame")
        local DropShadow = Instance.new("ImageLabel")
        local BottomInformation = Instance.new("TextLabel")
        local Resize = Instance.new("ImageButton")
        local ContentHolder = Instance.new("Frame")
        local UICorner_3 = Instance.new("UICorner")
        local ContentBar = Instance.new("Frame")
        local UICorner_4 = Instance.new("UICorner")

        local ColorUpdate = Instance.new("BindableEvent")
        function AddColor(Object, Property)
            WindowConnections:Add(ColorUpdate.Event:Connect(function(NewColor)
                Object[Property] = NewColor
            end))
        end

        ScreenGui.Parent = GetParent()
        ScreenGui.ResetOnSpawn = false
        if not IsStudio and game.PlaceId ~= 71236979615716 then
            ScreenGui.OnTopOfCoreBlur = true
            ScreenGui.DisplayOrder = 9999999
        end
        getgenv().UI = ScreenGui

        MainFrame.Name = "MainFrame"
        MainFrame.Parent = ScreenGui
        MainFrame.Active = true
        MainFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        MainFrame.BorderSizePixel = 0
        MainFrame.Position = UDim2.new(0, workspace.CurrentCamera.ViewportSize.X / 3, 0, workspace.CurrentCamera.ViewportSize.Y / 3)
        MainFrame.Size = Size or UDim2.new(0, 620, 0, 380)

        UICorner.CornerRadius = UDim.new(0, 7)
        UICorner.Parent = MainFrame

        Banner.Name = "Banner"
        Banner.Parent = MainFrame
        Banner.BackgroundColor3 = ColorTheme
        Banner.BackgroundTransparency = 1.000
        Banner.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Banner.BorderSizePixel = 0
        Banner.Position = UDim2.new(0, 14, 0, 11)
        Banner.Size = UDim2.new(0, 100, 0, 14)
        Banner.Image = "rbxassetid://133549714948931"
        Banner.ImageColor3 = ColorTheme
        Banner.ScaleType = Enum.ScaleType.Crop
        AddColor(Banner, "ImageColor3")
        

        Divider.Name = "Divider"
        Divider.Parent = MainFrame
        Divider.BackgroundColor3 = ColorTheme
        Divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Divider.BorderSizePixel = 0
        Divider.Position = UDim2.new(0, 11, 0, 33)
        Divider.Size = UDim2.new(0, 105, 0, 5)
        AddColor(Divider, "BackgroundColor3")

        UICorner_2.CornerRadius = UDim.new(1, 0)
        UICorner_2.Parent = Divider

        Preversion.Name = "Preversion"
        Preversion.Parent = MainFrame
        Preversion.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Preversion.BackgroundTransparency = 1.000
        Preversion.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Preversion.BorderSizePixel = 0
        Preversion.Position = UDim2.new(0, 19, 0, 39)
        Preversion.Size = UDim2.new(0, 90, 0, 22)
        Preversion.Font = Enum.Font.FredokaOne
        Preversion.Text = "Beta Version"
        Preversion.TextColor3 = Color3.fromRGB(255, 255, 255)
        Preversion.TextSize = 16.000
        --[[ wawawa]] Preversion.Text = ""

        NavBar.Name = "NavBar"
        NavBar.Parent = MainFrame
        NavBar.Active = true
        NavBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        NavBar.BackgroundTransparency = 1.000
        NavBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
        NavBar.BorderSizePixel = 0
        NavBar.Position = UDim2.new(0, 11, 0, 50)
        NavBar.Size = UDim2.new(0, 147, 0, 257)
        NavBar.ScrollBarThickness = 0
        NavBar.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

        NavBarList.Name = "NavBarList"
        NavBarList.Parent = NavBar
        NavBarList.HorizontalAlignment = Enum.HorizontalAlignment.Center
        NavBarList.SortOrder = Enum.SortOrder.LayoutOrder
        NavBarList.Padding = UDim.new(0, 4)

        Paint.Name = "Paint"
        Paint.Parent = MainFrame
        Paint.AnchorPoint = Vector2.new(1, 0)
        Paint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Paint.BackgroundTransparency = 1.000
        Paint.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Paint.BorderSizePixel = 0
        Paint.Position = UDim2.new(1, -11, 0.0260000005, 0)
        Paint.Size = UDim2.new(0, 24, 0, 24)
        Paint.Image = "rbxassetid://108400522835984"

        Minimize.Name = "Minimize"
        Minimize.Parent = MainFrame
        Minimize.AnchorPoint = Vector2.new(1, 0)
        Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Minimize.BackgroundTransparency = 1.000
        Minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Minimize.BorderSizePixel = 0
        Minimize.Position = UDim2.new(1, -45, 0.0260000005, 0)
        Minimize.Size = UDim2.new(0, 24, 0, 24)
        Minimize.Image = "rbxassetid://108415166791649"

        Exit.Name = "Exit"
        Exit.Parent = MainFrame
        Exit.AnchorPoint = Vector2.new(1, 0)
        Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Exit.BackgroundTransparency = 1.000
        Exit.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Exit.BorderSizePixel = 0
        Exit.Position = UDim2.new(1, -80, 0.0260000005, 0)
        Exit.Size = UDim2.new(0, 24, 0, 24)
        Exit.Image = "rbxassetid://128736024643576"

        DropShadowHolder.Name = "DropShadowHolder"
        DropShadowHolder.Parent = MainFrame
        DropShadowHolder.BackgroundTransparency = 1.000
        DropShadowHolder.BorderSizePixel = 0
        DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
        DropShadowHolder.ZIndex = 0

        DropShadow.Name = "DropShadow"
        DropShadow.Parent = DropShadowHolder
        DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        DropShadow.BackgroundTransparency = 1.000
        DropShadow.BorderSizePixel = 0
        DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
        DropShadow.Size = UDim2.new(1, 47, 1, 47)
        DropShadow.ZIndex = 0
        DropShadow.Image = "rbxassetid://6014261993"
        DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        DropShadow.ImageTransparency = 0.500
        DropShadow.ScaleType = Enum.ScaleType.Slice
        DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

        BottomInformation.Name = "BottomInformation"
        BottomInformation.Parent = MainFrame
        BottomInformation.AnchorPoint = Vector2.new(0, 1)
        BottomInformation.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        BottomInformation.BackgroundTransparency = 1.000
        BottomInformation.BorderColor3 = Color3.fromRGB(0, 0, 0)
        BottomInformation.BorderSizePixel = 0
        BottomInformation.Position = UDim2.new(0.0179999992, 0, 1, -4)
        BottomInformation.Size = UDim2.new(0, 609, 0, 28)
        BottomInformation.Font = Enum.Font.FredokaOne
        BottomInformation.Text = Subtext .." | " .. Players.LocalPlayer.Name
        BottomInformation.TextColor3 = Color3.fromRGB(190, 190, 190)
        BottomInformation.TextSize = 14.000
        BottomInformation.TextXAlignment = Enum.TextXAlignment.Left

        Resize.Name = "Resize"
        Resize.Parent = MainFrame
        Resize.AnchorPoint = Vector2.new(1, 1)
        Resize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Resize.BackgroundTransparency = 1.000
        Resize.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Resize.BorderSizePixel = 0
        Resize.Position = UDim2.new(1, -11, 1, -7)
        Resize.Size = UDim2.new(0, 20, 0, 20)
        Resize.Image = "rbxassetid://95035214121449"

        ContentHolder.Name = "ContentHolder"
        ContentHolder.Parent = MainFrame
        ContentHolder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        ContentHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ContentHolder.BorderSizePixel = 0
        ContentHolder.Position = UDim2.new(0, 172, 0, 66)
        ContentHolder.Size = UDim2.new(1, -186, 1, -113)

        UICorner_3.CornerRadius = UDim.new(0, 7)
        UICorner_3.Parent = ContentHolder

        ContentBar.Name = "ContentBar"
        ContentBar.Parent = ContentHolder
        ContentBar.BackgroundColor3 = ColorTheme
        ContentBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ContentBar.BorderSizePixel = 0
        ContentBar.Size = UDim2.new(1, 0, 0, 5)
        AddColor(ContentBar, "BackgroundColor3")

        UICorner_4.CornerRadius = UDim.new(1, 0)
        UICorner_4.Parent = ContentBar
        
        local function IsActivePrompt()
            return MainFrame:FindFirstChild("NotificationHolder")
        end
        
        local function Prompt(Details)
            if IsActivePrompt() then return end
            local NotificationHolder = Instance.new("Frame")
            local Prompt = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local Title = Instance.new("TextLabel")
            local Description = Instance.new("TextLabel")
            local Button1 = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local TextLabel = Instance.new("TextButton")
            local Button2 = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local TextLabel_2 = Instance.new("TextButton")
            local UIStroke = Instance.new("UIStroke")

            NotificationHolder.Name = "NotificationHolder"
            NotificationHolder.Parent = MainFrame
            NotificationHolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            NotificationHolder.BackgroundTransparency = 0.300
            NotificationHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
            NotificationHolder.BorderSizePixel = 0
            NotificationHolder.Size = UDim2.new(1, 0, 1, 0)

            Prompt.Name = "Prompt"
            Prompt.Parent = NotificationHolder
            Prompt.AnchorPoint = Vector2.new(0.5, 0.5)
            Prompt.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
            Prompt.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Prompt.BorderSizePixel = 0
            Prompt.Position = UDim2.new(0.5, 0, 0.5, 0)
            Prompt.Size = UDim2.new(0, 0, 0, 0)
            Prompt.ClipsDescendants = true
            TweenService:Create(Prompt, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, 310, 0, 200)}):Play()

            UICorner.Parent = Prompt

            Title.Name = "Title"
            Title.Parent = Prompt
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Title.BorderSizePixel = 0
            Title.Position = UDim2.new(0, 12, 0, 5)
            Title.Size = UDim2.new(0, 200, 0, 23)
            Title.Font = Enum.Font.FredokaOne
            Title.Text = Details.Title
            Title.TextColor3 = ColorTheme
            Title.TextSize = 17.000
            Title.TextXAlignment = Enum.TextXAlignment.Left
            AddColor(Title, "TextColor3")

            Description.Name = "Description"
            Description.Parent = Prompt
            Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Description.BackgroundTransparency = 1.000
            Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Description.BorderSizePixel = 0
            Description.Position = UDim2.new(0, 12, 0, 26)
            Description.Size = UDim2.new(1, -24, 0, 23)
            Description.Font = Enum.Font.FredokaOne
            Description.Text = Details.Text
            Description.TextColor3 = Color3.fromRGB(211, 211, 211)
            Description.TextSize = 14.000
            Description.TextWrapped = true
            Description.TextXAlignment = Enum.TextXAlignment.Left
            Description.AutomaticSize = Enum.AutomaticSize.Y

            Button1.Name = "Button1"
            Button1.Parent = Prompt
            Button1.AnchorPoint = Vector2.new(0, 1)
            Button1.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
            Button1.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Button1.BorderSizePixel = 0
            Button1.Position = UDim2.new(0, 12, 1, -12)
            Button1.Size = UDim2.new(0, 140, 0, 30)

            UICorner_2.CornerRadius = UDim.new(0, 6)
            UICorner_2.Parent = Button1

            TextLabel.Parent = Button1
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Size = UDim2.new(1, 0, 1, 0)
            TextLabel.Font = Enum.Font.FredokaOne
            TextLabel.Text = Details.Button1Text or "Yes"
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 14.000

            Button2.Name = "Button2"
            Button2.Parent = Prompt
            Button2.AnchorPoint = Vector2.new(0, 1)
            Button2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
            Button2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Button2.BorderSizePixel = 0
            Button2.Position = UDim2.new(0, 157, 1, -12)
            Button2.Size = UDim2.new(0, 140, 0, 30)

            UICorner_3.CornerRadius = UDim.new(0, 6)
            UICorner_3.Parent = Button2

            TextLabel_2.Parent = Button2
            TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.BackgroundTransparency = 1.000
            TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel_2.BorderSizePixel = 0
            TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
            TextLabel_2.Font = Enum.Font.FredokaOne
            TextLabel_2.Text = Details.Button2Text or "No"
            TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.TextSize = 14.000
            
            UIStroke.Color = Color3.fromRGB(55, 55, 55)
            UIStroke.Parent = Prompt
            UIStroke.Thickness = 2
            
            if Details.Buttons == 1 then
                Button2:Destroy()
                Button1.Size = UDim2.fromOffset(310-24, Button1.Size.Y.Offset)
            end
            
            local function Destroy()
                local Tween = TweenService:Create(Prompt, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Size = UDim2.fromOffset(0, 0)})
                Tween:Play()
                Tween.Completed:Once(function()
                    NotificationHolder:Destroy()
                end)
            end
            
            WindowConnections:Add(TextLabel.MouseButton1Click:Connect(function(Key)
                --if WindowConnections:IsPress(Key) then
                    (Details.Callback or function() end)(1)
                    Destroy()
                --end
            end))
            if Details.Buttons ~= 1 then
                WindowConnections:Add(TextLabel_2.MouseButton1Click:Connect(function(Key)
                    --if WindowConnections:IsPress(Key) then
                        (Details.Callback or function() end)(2)
                        Destroy()
                    --end
                end))
            end
        end
        
        WindowConnections:Add(Exit.MouseButton1Up:Connect(function(Key)
            --if WindowConnections:IsPress(Key) then
                Prompt({
                    Title = "Do you want to exit the GUI?",
                    Text = "You will not be able to use the gui or recover it unless you re-execute the script you are using. Press Yes if you want to continue, or press cancel if you changed your mind",
                    Button1Text = "Yes",
                    Button2Text = "Cancel",
                    Callback = function(choice)
                        if choice ~= 1 then return end
                        TweenService:Create(MainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Sine), {Position = UDim2.new(MainFrame.Position.X.Scale, MainFrame.Position.X.Offset, 1, MainFrame.Position.Y.Offset)}):Play()
                        wait(0.41)
                        WindowConnections:Quit()
                        ScreenGui:Destroy()
                    end,
                })
            --end
        end))
        
        --resize
        ;(function()
            local IsResizing = false
            WindowConnections:Add(Resize.MouseButton1Down:Connect(function(Key)
                --if WindowConnections:IsPress(Key) then
                    IsResizing = true
                    local Mouse = Players.LocalPlayer:GetMouse()
                    local d1 = MainFrame.AbsoluteSize.X + (MainFrame.AbsolutePosition.X - Mouse.X)
                    local d2 = MainFrame.AbsoluteSize.Y + (MainFrame.AbsolutePosition.Y - Mouse.Y)
                    while IsResizing do
                        if IsActivePrompt() then
                            IsResizing = false
                            break
                        end
                        local NewSize = UDim2.new(
                            0,
                            math.clamp(Mouse.X - MainFrame.AbsolutePosition.X + d1, 510, math.huge),
                            0,
                            math.clamp(Mouse.Y - MainFrame.AbsolutePosition.Y + d2, 300, math.huge)
                        )
                        MainFrame.Size = NewSize
                        wait()
                    end
                --end
            end))
            WindowConnections:Add(UserInputService.InputEnded:Connect(function(Key)
                if WindowConnections:IsPress(Key) then
                    IsResizing = false
                end
            end))
        end)()
        -- drag
        ;(function()
            local DragBar = Instance.new("Frame")

            DragBar.Name = "DragBar"
            DragBar.Parent = MainFrame
            DragBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DragBar.BackgroundTransparency = 1.000
            DragBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
            DragBar.BorderSizePixel = 0
            DragBar.Size = UDim2.new(1, -110, 0, 38)
            
            local function dragify(Frame, InputObject)
                local dragToggle = nil
                local dragSpeed = 0.07
                local dragInput = nil
                local dragStart = nil
                local dragPos = nil
                local Delta
                local Position
                local startPos
                local function updateInput(input)
                    if IsActivePrompt() then 
                        dragToggle = false
                        return
                    end
                    Delta = input.Position - dragStart
                    Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
                    TweenService:Create(Frame, TweenInfo.new(dragSpeed, Enum.EasingStyle.Sine), {Position = Position}):Play()
                end
                InputObject.InputBegan:Connect(function(input)
                    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UserInputService:GetFocusedTextBox() == nil then
                        dragToggle = true
                        dragStart = input.Position
                        startPos = Frame.Position
                        input.Changed:Connect(function()
                            if input.UserInputState == Enum.UserInputState.End then
                                dragToggle = false
                            end
                        end)
                    end
                end)
                InputObject.InputChanged:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                        dragInput = input
                    end
                end)
                UserInputService.InputChanged:Connect(function(input)
                    if input == dragInput and dragToggle then
                        updateInput(input)
                    end
                end)
            end
            dragify(MainFrame, DragBar)
        end)()
        
        local WindowData = {}
        
        function WindowData:Prompt(a)
            Prompt(a)
        end
        
        local TabsData = {
            Buttons = {},
            Pages = {}
        }
        
        function WindowData.MakeTab(Name, Icon, PreviewText)
            local TabFrame = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local TabIcon = Instance.new("ImageLabel")
            local SelectionIndicator = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local TabName = Instance.new("TextLabel")
            local TabPreview = Instance.new("TextLabel")

            TabFrame.Name = "TabFrame"
            TabFrame.Parent = NavBar
            TabFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TabFrame.BorderSizePixel = 0
            TabFrame.Size = UDim2.new(1, 0, 0, 33)
            TabFrame.BackgroundTransparency = 1

            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = TabFrame

            TabIcon.Name = "TabIcon"
            TabIcon.Parent = TabFrame
            TabIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TabIcon.BackgroundTransparency = 1.000
            TabIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TabIcon.BorderSizePixel = 0
            TabIcon.Position = UDim2.new(0.074000001, 0, 0.181999996, 0)
            TabIcon.Size = UDim2.new(0, 20, 0, 20)
            TabIcon.Image = Icon
            TabIcon.ImageColor3 = Color3.fromRGB(225, 225, 225)

            SelectionIndicator.Name = "SelectionIndicator"
            SelectionIndicator.Parent = TabFrame
            SelectionIndicator.BackgroundColor3 = ColorTheme
            SelectionIndicator.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SelectionIndicator.BorderSizePixel = 0
            SelectionIndicator.Position = UDim2.new(0, 0, 0.181818187, 0)
            SelectionIndicator.Size = UDim2.new(0, 5, 0, 20)
            SelectionIndicator.BackgroundTransparency = 1

            UICorner_2.CornerRadius = UDim.new(1, 0)
            UICorner_2.Parent = SelectionIndicator

            TabName.Name = "TabName"
            TabName.Parent = TabFrame
            TabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TabName.BackgroundTransparency = 1.000
            TabName.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TabName.BorderSizePixel = 0
            TabName.Position = UDim2.new(0.285714298, 0, 0, 0)
            TabName.Size = UDim2.new(1, 0, 0.606060624, 0)
            TabName.Font = Enum.Font.FredokaOne
            TabName.Text = Name
            TabName.TextColor3 = Color3.fromRGB(225, 225, 225)
            TabName.TextSize = 16.000
            TabName.TextXAlignment = Enum.TextXAlignment.Left

            TabPreview.Name = "TabPreview"
            TabPreview.Parent = TabFrame
            TabPreview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TabPreview.BackgroundTransparency = 1.000
            TabPreview.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TabPreview.BorderSizePixel = 0
            TabPreview.ClipsDescendants = true
            TabPreview.Position = UDim2.new(0.285714298, 0, 0.393939406, 0)
            TabPreview.Size = UDim2.new(0.598639429, 0, 0.606060624, 0)
            TabPreview.Font = Enum.Font.FredokaOne
            TabPreview.Text = PreviewText or "No preview"
            TabPreview.TextColor3 = Color3.fromRGB(106, 106, 106)
            TabPreview.TextSize = 12.000
            TabPreview.TextXAlignment = Enum.TextXAlignment.Left
            
            local ScrollingFrame = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")

            ScrollingFrame.Parent = ContentHolder
            ScrollingFrame.Active = true
            ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollingFrame.BackgroundTransparency = 1.000
            ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ScrollingFrame.BorderSizePixel = 0
            ScrollingFrame.Position = UDim2.new(0, 8, 0, 12)
            ScrollingFrame.Size = UDim2.new(1, -16, 1, -20)
            ScrollingFrame.CanvasPosition = Vector2.new(0, 20)
            ScrollingFrame.ScrollBarThickness = 12
            ScrollingFrame.Visible = false
            ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
            ScrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
            ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
            ScrollingFrame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
            ScrollingFrame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
            ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(61, 61, 61)
            
            UIListLayout.Parent = ScrollingFrame
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 4)
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
            
            TabsData.Buttons[#TabsData.Buttons + 1] = {[1]=TabFrame,Selected=false}
            TabsData.Pages[#TabsData.Pages + 1] = ScrollingFrame
            local ID = #TabsData.Buttons
            local Tween = TweenInfo.new(0.3, Enum.EasingStyle.Sine)
            
            WindowConnections:Add(TabFrame.InputEnded:Connect(function(Key)
                if WindowConnections:IsPress(Key) then
                    for i, v in pairs(TabsData.Buttons) do
                        if v ~= TabFrame then
                            local v = v[1]
                            TweenService:Create(v.SelectionIndicator, Tween, {BackgroundTransparency = 1, BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
                            TweenService:Create(v.TabIcon, Tween, {ImageColor3 = Color3.fromRGB(225, 225, 225)}):Play()
                            TweenService:Create(v.TabName, Tween, {TextColor3 = Color3.fromRGB(225, 225, 225)}):Play()
                            TweenService:Create(v, Tween, {BackgroundTransparency = 1}):Play()
                            TabsData.Pages[i].Visible = false
                            TabsData.Buttons[i].Selected = false
                        end
                    end
                    TweenService:Create(SelectionIndicator, Tween, {BackgroundTransparency = 0, BackgroundColor3 = ColorTheme}):Play()
                    TweenService:Create(TabFrame, Tween, {BackgroundTransparency = 0}):Play()
                    TweenService:Create(TabIcon, Tween, {ImageColor3 = ColorTheme}):Play()
                    TweenService:Create(TabName, Tween, {TextColor3 = ColorTheme}):Play()
                    ScrollingFrame.Visible = true
                    TabsData.Buttons[ID].Selected = true
                end
            end))

            WindowConnections:Add(TabFrame.MouseEnter:Connect(function()
                if TabsData.Buttons[ID].Selected == false then
                    TweenService:Create(TabFrame, TweenInfo.new(0.1), {BackgroundTransparency = 0.1}):Play()
                end
            end))

            WindowConnections:Add(TabFrame.MouseLeave:Connect(function()
                if TabsData.Buttons[ID].Selected == false then
                    TweenService:Create(TabFrame, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
                end
            end))
            
            local PageData = {}
            
            WindowConnections:Add(ColorUpdate.Event:Connect(function(NewColor)
                if not TabsData.Buttons[ID].Selected then return end
                TweenService:Create(SelectionIndicator, Tween, {BackgroundTransparency = 0, BackgroundColor3 = ColorTheme}):Play()
                TweenService:Create(TabIcon, Tween, {ImageColor3 = ColorTheme}):Play()
                TweenService:Create(TabName, Tween, {TextColor3 = ColorTheme}):Play()
            end))
            
            function PageData.Section(Text)
                local Section = Instance.new("TextLabel")

                Section.Name = "Section"
                Section.Parent = ScrollingFrame
                Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Section.BackgroundTransparency = 1.000
                Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Section.BorderSizePixel = 0
                Section.Size = UDim2.new(0, 200, 0, 20)
                Section.Font = Enum.Font.FredokaOne
                Section.Text = tostring(Text)
                Section.TextColor3 = ColorTheme
                Section.TextSize = 14.000
                Section.TextXAlignment = Enum.TextXAlignment.Left
                AddColor(Section, "TextColor3")
            end

            function PageData.Label(Name)
                local Button = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local TextLabel = Instance.new("TextLabel")
                local ImageLabel = Instance.new("ImageLabel")

                Button.Name = "Button"
                Button.Parent = ScrollingFrame
                Button.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Button.BorderSizePixel = 0
                Button.Size = UDim2.new(1, -24, 0, 24)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Button

                TextLabel.Parent = Button
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.BorderSizePixel = 0
                TextLabel.Position = UDim2.new(0, 7, 0, 0)
                TextLabel.Size = UDim2.new(0.0869999975, 0, 0, 24)
                TextLabel.Font = Enum.Font.FredokaOne
                TextLabel.Text = Name
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.TextSize = 14.000
                TextLabel.TextXAlignment = Enum.TextXAlignment.Left
                
                local ButtonData = {}
                function ButtonData:Update(a)
                    if a.Visible ~= nil then
                        Button.Visible = a.Visible
                    end
                    if a.Text ~= nil then
                        TextLabel.Text = tostring(a.Text)
                    end
                end
                return ButtonData
            end
            
            function PageData.Button(Name, Callback)
                local Button = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local TextLabel = Instance.new("TextLabel")
                local ImageLabel = Instance.new("ImageLabel")

                Button.Name = "Button"
                Button.Parent = ScrollingFrame
                Button.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Button.BorderSizePixel = 0
                Button.Size = UDim2.new(1, -24, 0, 24)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Button

                TextLabel.Parent = Button
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.BorderSizePixel = 0
                TextLabel.Position = UDim2.new(0, 7, 0, 0)
                TextLabel.Size = UDim2.new(0.0869999975, 0, 0, 24)
                TextLabel.Font = Enum.Font.FredokaOne
                TextLabel.Text = Name
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.TextSize = 14.000
                TextLabel.TextXAlignment = Enum.TextXAlignment.Left

                ImageLabel.Parent = Button
                ImageLabel.AnchorPoint = Vector2.new(1, 0.5)
                ImageLabel.BackgroundColor3 = ColorTheme
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(1, -7, 0.5, 0)
                ImageLabel.Size = UDim2.new(0, 16, 0, 16)
                ImageLabel.Image = "rbxassetid://77882356658054"
                ImageLabel.ImageColor3 = ColorTheme
                AddColor(ImageLabel, "ImageColor3")

                local ClickBox = Instance.new("TextButton")
                ClickBox.Parent = Button
                ClickBox.Text = ""
                ClickBox.BackgroundTransparency = 1
                ClickBox.ZIndex = 1
                ClickBox.Size = UDim2.fromScale(1, 1)
                
                local Tween = TweenInfo.new(0.16, Enum.EasingStyle.Sine)
                
                WindowConnections:Add(ClickBox.MouseButton1Down:Connect(function(Key)
                    --if WindowConnections:IsPress(Key) and not IsActivePrompt() then
                        TweenService:Create(Button, Tween, {BackgroundColor3 = ColorTheme}):Play()
                        TweenService:Create(TextLabel, Tween, {TextColor3 = Color3.fromRGB(24, 24, 24)}):Play()
                        TweenService:Create(ImageLabel, Tween, {ImageColor3 = Color3.fromRGB(24, 24, 24)}):Play()
                    --end
                end))
                WindowConnections:Add(ClickBox.MouseButton1Up:Connect(function(Key)
                    --if WindowConnections:IsPress(Key) and not IsActivePrompt() then
                        TweenService:Create(Button, Tween, {BackgroundColor3 = Color3.fromRGB(24, 24, 24)}):Play()
                        TweenService:Create(TextLabel, Tween, {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                        TweenService:Create(ImageLabel, Tween, {ImageColor3 = ColorTheme}):Play()
                        Callback()
                    --end
                end))
                WindowConnections:Add(ClickBox.MouseLeave:Connect(function(Key)
                    --if WindowConnections:IsPress(Key) and not IsActivePrompt() then
                        TweenService:Create(Button, Tween, {BackgroundColor3 = Color3.fromRGB(24, 24, 24)}):Play()
                        TweenService:Create(TextLabel, Tween, {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                        TweenService:Create(ImageLabel, Tween, {ImageColor3 = ColorTheme}):Play()
                    --end
                end))
                
                local ButtonData = {}
                function ButtonData:Update(a)
                    if a.Visible ~= nil then
                        Button.Visible = a.Visible
                    end
                    if a.Text ~= nil then
                        TextLabel.Text = tostring(a.Text)
                    end
                end
                return ButtonData
            end

            function PageData.MultiDropdown(Name, Array, DefaultValues, Callback)
                local Values = DefaultValues or {}
                local Dropdown = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local TextLabel = Instance.new("TextLabel")
                local ImageLabel = Instance.new("ImageLabel")
                local Frame = Instance.new("Frame")
                local ScrollingFrame2 = Instance.new("ScrollingFrame")
                local UIListLayout = Instance.new("UIListLayout")

                Dropdown.Name = "Dropdown"
                Dropdown.Parent = ScrollingFrame
                Dropdown.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Dropdown.BorderSizePixel = 0
                Dropdown.Size = UDim2.new(1, -24, 0, 24)
                Dropdown.ClipsDescendants = true

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Dropdown

                TextLabel.Parent = Dropdown
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.BorderSizePixel = 0
                TextLabel.Position = UDim2.new(0, 7, 0, 0)
                TextLabel.Size = UDim2.new(0.0869999975, 0, 0, 24)
                TextLabel.Font = Enum.Font.FredokaOne
                TextLabel.Text = Name
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.TextSize = 14.000
                TextLabel.TextXAlignment = Enum.TextXAlignment.Left

                ImageLabel.Parent = Dropdown
                ImageLabel.AnchorPoint = Vector2.new(1, 0.5)
                ImageLabel.BackgroundColor3 = Color3.fromRGB(23, 255, 131)
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(1, -7, 0, 12)
                ImageLabel.Size = UDim2.new(0, 16, 0, 16)
                ImageLabel.Image = "rbxassetid://129461097348524"
                ImageLabel.ImageColor3 = ColorTheme
                AddColor(ImageLabel, "ImageColor3")

                Frame.Parent = Dropdown
                Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame.BackgroundTransparency = 1.000
                Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Frame.BorderSizePixel = 0
                Frame.Position = UDim2.new(0, 8, 0, 27)
                Frame.Size = UDim2.new(1, -16, 0, 0)

                ScrollingFrame2.Parent = Frame
                ScrollingFrame2.Active = true
                ScrollingFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ScrollingFrame2.BackgroundTransparency = 1
                ScrollingFrame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                ScrollingFrame2.BorderSizePixel = 0
                ScrollingFrame2.Size = UDim2.new(1, 0, 1, 0)
                ScrollingFrame2.ScrollBarThickness = 0
                ScrollingFrame2.ScrollingEnabled = false
                ScrollingFrame2.ClipsDescendants = false

                UIListLayout.Parent = ScrollingFrame2
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.Padding = UDim.new(0, 3)

                local ClickBox = Instance.new("TextButton")
                ClickBox.Parent = Dropdown
                ClickBox.Text = ""
                ClickBox.BackgroundTransparency = 1
                ClickBox.ZIndex = 1
                ClickBox.Size = UDim2.new(1, 0, 0, 24)
                
                local DropdownData = {}
                local IsActivated = false
                local Speed = 0.12
                function DropdownData:Update(a)
                    if a.Visible ~= nil then
                        Dropdown.Visible = a.Visible
                    end
                    if a.Text ~= nil then
                        TextLabel.Text = tostring(a.Text)
                    end
                end
                function DropdownData:GetValues()
                    return Value
                end
                function DropdownData:Refresh(NewArray)
                    Array = NewArray
                    for i, v in pairs(NewArray) do
                        local TextButton = Instance.new("TextButton")
                        local UICorner = Instance.new("UICorner")

                        TextButton.Parent = ScrollingFrame2
                        TextButton.BackgroundColor3 = Values[v] and ColorTheme or Color3.fromRGB(34, 34, 34)
                        TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        TextButton.BorderSizePixel = 0
                        TextButton.Size = UDim2.new(1, -16, 0, 25)
                        TextButton.AutoButtonColor = false
                        TextButton.Font = Enum.Font.FredokaOne
                        TextButton.Text = tostring(v)
                        TextButton.TextColor3 = Values[v] and Color3.fromRGB(34, 34, 34) or ColorTheme
                        TextButton.TextSize = 14.000

                        UICorner.CornerRadius = UDim.new(0, 5)
                        UICorner.Parent = TextButton
                        
                        WindowConnections:Add(TextButton.MouseButton1Click:Connect(function(Key)
                            --if WindowConnections:IsPress(Key) then
                                Values[v]=not Values[v];
                                TweenService:Create(TextButton, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {BackgroundColor3 = Values[v] and ColorTheme or Color3.fromRGB(34, 34, 34)}):Play()
                                TweenService:Create(TextButton, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {TextColor3 = Values[v] and Color3.fromRGB(34, 34, 34) or ColorTheme}):Play();
                                (Callback or function() end)(v, Values[v])
                            --end
                        end))
                        
                        AddColor(TextButton, "TextColor3")
                    end
                end
                
                WindowConnections:Add(ClickBox.MouseButton1Up:Connect(function(Key)
                    --if WindowConnections:IsPress(Key) then
                        IsActivated = not IsActivated
                        TweenService:Create(ImageLabel, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {Rotation = IsActivated and 180 or 0}):Play()
                        if IsActivated then
                            local Size = 24
                            for i, v in pairs(Array) do
                                Size = Size + (25 + 3)
                            end
                            TweenService:Create(Dropdown, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {Size = UDim2.new(1, -24, 0, Size + 8)}):Play()
                            TweenService:Create(Frame, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {Size = UDim2.new(1, 0, 0, Size - (24 + 8))}):Play()
                            Dropdown.ClipsDescendants = false
                        else
                            TweenService:Create(Dropdown, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {Size = UDim2.new(1, -24, 0, 24)}):Play()
                            TweenService:Create(Frame, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {Size = UDim2.new(1, 0, 0, 0)}):Play()
                            Dropdown.ClipsDescendants = true
                        end
                    --end
                end))
                
                DropdownData:Refresh(Array)
                return DropdownData
            end
            
            function PageData.Dropdown(Name, Array, DefaultValue, Callback)
                local Dropdown = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local TextLabel = Instance.new("TextLabel")
                local ImageLabel = Instance.new("ImageLabel")
                local TextLabel_2 = Instance.new("TextLabel")
                local Frame = Instance.new("Frame")
                local ScrollingFrame2 = Instance.new("ScrollingFrame")
                local UIListLayout = Instance.new("UIListLayout")

                Dropdown.Name = "Dropdown"
                Dropdown.Parent = ScrollingFrame
                Dropdown.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Dropdown.BorderSizePixel = 0
                Dropdown.Size = UDim2.new(1, -24, 0, 24)
                Dropdown.ClipsDescendants = true

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Dropdown

                TextLabel.Parent = Dropdown
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.BorderSizePixel = 0
                TextLabel.Position = UDim2.new(0, 7, 0, 0)
                TextLabel.Size = UDim2.new(0.0869999975, 0, 0, 24)
                TextLabel.Font = Enum.Font.FredokaOne
                TextLabel.Text = Name
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.TextSize = 14.000
                TextLabel.TextXAlignment = Enum.TextXAlignment.Left

                ImageLabel.Parent = Dropdown
                ImageLabel.AnchorPoint = Vector2.new(1, 0.5)
                ImageLabel.BackgroundColor3 = Color3.fromRGB(23, 255, 131)
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(1, -7, 0, 12)
                ImageLabel.Size = UDim2.new(0, 16, 0, 16)
                ImageLabel.Image = "rbxassetid://129461097348524"
                ImageLabel.ImageColor3 = ColorTheme
                AddColor(ImageLabel, "ImageColor3")

                TextLabel_2.Parent = Dropdown
                TextLabel_2.AnchorPoint = Vector2.new(1, 0)
                TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_2.BackgroundTransparency = 1.000
                TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel_2.BorderSizePixel = 0
                TextLabel_2.Position = UDim2.new(1, -25, 0, 0)
                TextLabel_2.Size = UDim2.new(0, 36, 0, 24)
                TextLabel_2.Font = Enum.Font.FredokaOne
                TextLabel_2.Text = tostring(DefaultValue or "None")
                TextLabel_2.TextColor3 = ColorTheme
                TextLabel_2.TextSize = 14.000
                TextLabel_2.TextXAlignment = Enum.TextXAlignment.Right
                AddColor(TextLabel_2, "TextColor3")

                Frame.Parent = Dropdown
                Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame.BackgroundTransparency = 1.000
                Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Frame.BorderSizePixel = 0
                Frame.Position = UDim2.new(0, 8, 0, 27)
                Frame.Size = UDim2.new(1, -16, 0, 0)

                ScrollingFrame2.Parent = Frame
                ScrollingFrame2.Active = true
                ScrollingFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ScrollingFrame2.BackgroundTransparency = 1
                ScrollingFrame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                ScrollingFrame2.BorderSizePixel = 0
                ScrollingFrame2.Size = UDim2.new(1, 0, 1, 0)
                ScrollingFrame2.ScrollBarThickness = 0
                ScrollingFrame2.ScrollingEnabled = false
                ScrollingFrame2.ClipsDescendants = false

                UIListLayout.Parent = ScrollingFrame2
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.Padding = UDim.new(0, 3)

                local ClickBox = Instance.new("TextButton")
                ClickBox.Parent = Dropdown
                ClickBox.Text = ""
                ClickBox.BackgroundTransparency = 1
                ClickBox.ZIndex = 1
                ClickBox.Size = UDim2.new(1, 0, 0, 24)
                
                local DropdownData = {}
                local IsActivated = false
                local Value
                local Speed = 0.12
                function DropdownData:Update(a)
                    if a.Visible ~= nil then
                        Dropdown.Visible = a.Visible
                    end
                    if a.Text ~= nil then
                        TextLabel.Text = tostring(a.Text)
                    end
                end
                function DropdownData:GetValue()
                    return Value
                end
                function DropdownData:Refresh(NewArray)
                    Array = NewArray
                    for i, v in pairs(NewArray) do
                        local TextButton = Instance.new("TextButton")
                        local UICorner = Instance.new("UICorner")

                        TextButton.Parent = ScrollingFrame2
                        TextButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
                        TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        TextButton.BorderSizePixel = 0
                        TextButton.Size = UDim2.new(1, -16, 0, 25)
                        TextButton.AutoButtonColor = false
                        TextButton.Font = Enum.Font.FredokaOne
                        TextButton.Text = tostring(v)
                        TextButton.TextColor3 = ColorTheme
                        TextButton.TextSize = 14.000

                        UICorner.CornerRadius = UDim.new(0, 5)
                        UICorner.Parent = TextButton
                        
                        WindowConnections:Add(TextButton.MouseEnter:Connect(function()
                            TweenService:Create(TextButton, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {BackgroundColor3 = ColorTheme}):Play()
                            TweenService:Create(TextButton, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {TextColor3 = Color3.fromRGB(34, 34, 34)}):Play()
                        end))
                        
                        WindowConnections:Add(TextButton.MouseLeave:Connect(function()
                            TweenService:Create(TextButton, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {BackgroundColor3 = Color3.fromRGB(34, 34, 34)}):Play()
                            TweenService:Create(TextButton, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {TextColor3 = ColorTheme}):Play()
                        end))
                        
                        WindowConnections:Add(TextButton.MouseButton1Click:Connect(function(Key)
                            --if WindowConnections:IsPress(Key) then
                                IsActivated = false
                                TweenService:Create(Dropdown, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {Size = UDim2.new(1, -24, 0, 24)}):Play()
                                TweenService:Create(ImageLabel, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {Rotation = 0}):Play()
                                TweenService:Create(Frame, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {Size = UDim2.new(1, 0, 0, 0)}):Play()
                                Dropdown.ClipsDescendants = true
                                TextLabel_2.Text = tostring(v)
                                Value = v;
                                (Callback or function() end)(v, i)
                            --end
                        end))
                        
                        AddColor(TextButton, "TextColor3")
                    end
                end
                
                WindowConnections:Add(ClickBox.MouseButton1Up:Connect(function(Key)
                    --print("e")
                    --if WindowConnections:IsPress(Key) then
                        IsActivated = not IsActivated
                        TweenService:Create(ImageLabel, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {Rotation = IsActivated and 180 or 0}):Play()
                        if IsActivated then
                            local Size = 24
                            for i, v in pairs(Array) do
                                Size = Size + (25 + 3)
                            end
                            TweenService:Create(Dropdown, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {Size = UDim2.new(1, -24, 0, Size + 8)}):Play()
                            TweenService:Create(Frame, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {Size = UDim2.new(1, 0, 0, Size - (24 + 8))}):Play()
                            Dropdown.ClipsDescendants = false
                        else
                            TweenService:Create(Dropdown, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {Size = UDim2.new(1, -24, 0, 24)}):Play()
                            TweenService:Create(Frame, TweenInfo.new(Speed, Enum.EasingStyle.Sine), {Size = UDim2.new(1, 0, 0, 0)}):Play()
                            Dropdown.ClipsDescendants = true
                        end
                    --end
                end))
                
                DropdownData:Refresh(Array)
                return DropdownData
            end
            
            function PageData.Slider(Name, MinValue, MaxValue, DefaultValue, Callback)
                local Slider = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local TextLabel = Instance.new("TextLabel")
                local Bar = Instance.new("Frame")
                local UICorner_2 = Instance.new("UICorner")
                local InnerBar = Instance.new("Frame")
                local UICorner_3 = Instance.new("UICorner")
                local TextLabel_2 = Instance.new("TextLabel")

                Slider.Name = "Slider"
                Slider.Parent = ScrollingFrame
                Slider.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Slider.BorderSizePixel = 0
                Slider.Size = UDim2.new(1, -24, 0, 44)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Slider

                TextLabel.Parent = Slider
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.BorderSizePixel = 0
                TextLabel.Position = UDim2.new(0, 7, 0, 0)
                TextLabel.Size = UDim2.new(0.0869999975, 0, 0, 24)
                TextLabel.Font = Enum.Font.FredokaOne
                TextLabel.Text = Name
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.TextSize = 14.000
                TextLabel.TextXAlignment = Enum.TextXAlignment.Left

                Bar.Name = "Bar"
                Bar.Parent = Slider
                Bar.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
                Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Bar.BorderSizePixel = 0
                Bar.Position = UDim2.new(0, 7, 0, 24)
                Bar.Size = UDim2.new(1, -16, 0, 14)

                UICorner_2.CornerRadius = UDim.new(0, 4)
                UICorner_2.Parent = Bar

                InnerBar.Name = "InnerBar"
                InnerBar.Parent = Bar
                InnerBar.BackgroundColor3 = ColorTheme
                InnerBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
                InnerBar.BorderSizePixel = 0
                InnerBar.Size = UDim2.new((DefaultValue - MinValue) / (MaxValue - MinValue), 0, 1, 0)
                AddColor(InnerBar, "BackgroundColor3")

                UICorner_3.CornerRadius = UDim.new(0, 4)
                UICorner_3.Parent = InnerBar

                TextLabel_2.Parent = Slider
                TextLabel_2.AnchorPoint = Vector2.new(1, 0)
                TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_2.BackgroundTransparency = 1.000
                TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel_2.BorderSizePixel = 0
                TextLabel_2.Position = UDim2.new(1, -12, 0, 0)
                TextLabel_2.Size = UDim2.new(0, 36, 0, 24)
                TextLabel_2.Font = Enum.Font.FredokaOne
                TextLabel_2.Text = tostring(DefaultValue)
                TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_2.TextSize = 14.000
                TextLabel_2.TextXAlignment = Enum.TextXAlignment.Right

                local ClickBox = Instance.new("TextButton")
                ClickBox.Parent = Bar
                ClickBox.Text = ""
                ClickBox.BackgroundTransparency = 1
                ClickBox.ZIndex = 1
                ClickBox.Size = UDim2.fromScale(1, 1)

                local Dragging = false
                local Last
                WindowConnections:Add(ClickBox.MouseButton1Down:Connect(function(Key)
                    --if WindowConnections:IsPress(Key) then
                        Dragging = true
                        while Dragging do
                            if IsActivePrompt() then
                                break
                            end
                            local Percent = math.clamp((Players.LocalPlayer:GetMouse().X - Bar.AbsolutePosition.X) / Bar.AbsoluteSize.X, 0, 1) -- will you please fuck off roblox ai i dont want it
                            if Percent ~= Last then
                                Last = Percent
                                TweenService:Create(InnerBar, TweenInfo.new(0.1, Enum.EasingStyle.Quint), {Size = UDim2.fromScale(Percent, 1)}):Play()
                                local Value = MinValue + (Percent*(MaxValue-MinValue))
                                TextLabel_2.Text = math.floor(Value);
                                (Callback or function() end)(Value)
                            end
                            wait()
                        end
                    --end
                end))
                WindowConnections:Add(UserInputService.InputEnded:Connect(function(Key)
                    if WindowConnections:IsPress(Key) then
                        Dragging = false
                    end
                end))
                
                local SliderData = {}
                function SliderData:Update(a)
                    if a.Visible ~= nil then
                        Slider.Visible = a.Visible
                    end
                    if a.Text ~= nil then
                        TextLabel.Text = tostring(a.Text)
                    end
                end
                function SliderData:GetValue()
                    return Last == nil and DefaultValue or MinValue + (Last*(MaxValue-MinValue))
                end
                return SliderData
            end
            
            function PageData.TextBox(Name, DefaultText, Placeholder, Callback, ClearOnFocus, ClearTextOnFocusLost)
                local TextBox = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local TextLabel = Instance.new("TextLabel")
                local Frame = Instance.new("Frame")
                local UICorner_2 = Instance.new("UICorner")
                local Frame_2 = Instance.new("Frame")
                local UICorner_3 = Instance.new("UICorner")
                local TextBox_2 = Instance.new("TextBox")

                TextBox.Name = "TextBox"
                TextBox.Parent = ScrollingFrame
                TextBox.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextBox.BorderSizePixel = 0
                TextBox.Size = UDim2.new(1, -24, 0, 24)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = TextBox

                TextLabel.Parent = TextBox
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.BorderSizePixel = 0
                TextLabel.Position = UDim2.new(0, 7, 0, 0)
                TextLabel.Size = UDim2.new(0.0869999975, 0, 0, 24)
                TextLabel.Font = Enum.Font.FredokaOne
                TextLabel.Text = Name
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.TextSize = 14.000
                TextLabel.TextXAlignment = Enum.TextXAlignment.Left

                Frame.Parent = TextBox
                Frame.Active = true
                Frame.AnchorPoint = Vector2.new(1, 0.5)
                Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Frame.BorderSizePixel = 0
                Frame.Position = UDim2.new(1, -7, 0.5, 0)
                Frame.Size = UDim2.new(0, 100, 0, 16)
                Frame.ZIndex = 2

                UICorner_2.CornerRadius = UDim.new(0, 3)
                UICorner_2.Parent = Frame

                Frame_2.Parent = Frame
                Frame_2.AnchorPoint = Vector2.new(0, 1)
                Frame_2.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
                Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Frame_2.BorderSizePixel = 0
                Frame_2.Position = UDim2.new(0, 0, 1, 1)
                Frame_2.Size = UDim2.new(1, 0, 0, 8)
                --AddColor(Frame_2, "BackgroundColor3")

                UICorner_3.CornerRadius = UDim.new(0, 3)
                UICorner_3.Parent = Frame_2

                TextBox_2.Parent = Frame
                TextBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBox_2.BackgroundTransparency = 1.000
                TextBox_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextBox_2.BorderSizePixel = 0
                TextBox_2.ClipsDescendants = true
                TextBox_2.Position = UDim2.new(0, 6, 0, 0)
                TextBox_2.Size = UDim2.new(1, -12, 1, 0)
                TextBox_2.ZIndex = 2
                TextBox_2.Font = Enum.Font.FredokaOne
                TextBox_2.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
                TextBox_2.PlaceholderText = Placeholder or "Insert Text"
                TextBox_2.Text = ""
                TextBox_2.TextColor3 = ColorTheme
                TextBox_2.TextSize = 13
                TextBox_2.TextXAlignment = Enum.TextXAlignment.Left
                TextBox_2.ClearTextOnFocus = ClearOnFocus == true
                AddColor(TextBox_2, "TextColor3")
                
                WindowConnections:Add(TextBox_2.FocusLost:Connect(function()
                    task.spawn(Callback, TextBox_2.Text)
                    Frame_2.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
                    if ClearTextOnFocusLost == true then
                        TextBox_2.Text = ""
                    end
                end))
                
                WindowConnections:Add(TextBox_2.Focused:Connect(function()
                    Frame_2.BackgroundColor3 = ColorTheme
                end))
                
                local TextboxData = {}
                function TextboxData:Update(a)
                    if a.Visible ~= nil then
                        TextBox.Visible = a.Visible
                    end
                    if a.Text ~= nil then
                        TextLabel.Text = tostring(a.Text)
                    end
                end
                return TextboxData
            end
            
            function PageData.Toggle(Name, Callback, Enabled)
                local Toggle = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local TextLabel = Instance.new("TextLabel")
                local Frame = Instance.new("Frame")
                local UICorner_2 = Instance.new("UICorner")
                local Frame_2 = Instance.new("Frame")
                local ImageLabel = Instance.new("ImageLabel")

                Toggle.Name = "Toggle"
                Toggle.Parent = ScrollingFrame
                Toggle.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Toggle.BorderSizePixel = 0
                Toggle.Size = UDim2.new(1, -24, 0, 24)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Toggle

                TextLabel.Parent = Toggle
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.BorderSizePixel = 0
                TextLabel.Position = UDim2.new(0, 7, 0, 0)
                TextLabel.Size = UDim2.new(0.0869999975, 0, 0, 24)
                TextLabel.Font = Enum.Font.FredokaOne
                TextLabel.Text = Name
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.TextSize = 14.000
                TextLabel.TextXAlignment = Enum.TextXAlignment.Left

                Frame.Parent = Toggle
                Frame.Active = true
                Frame.AnchorPoint = Vector2.new(1, 0.5)
                Frame.BackgroundColor3 = ColorTheme
                Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Frame.BorderSizePixel = 0
                Frame.Position = UDim2.new(1, -7, 0.5, 0)
                Frame.Size = UDim2.new(0, 16, 0, 16)
                AddColor(Frame, "BackgroundColor3")

                UICorner_2.CornerRadius = UDim.new(0, 3)
                UICorner_2.Parent = Frame

                Frame_2.Parent = Frame
                Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
                Frame_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Frame_2.BorderSizePixel = 0
                Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
                Frame_2.Size = UDim2.new(0, 12, 0, 12)
                
                ImageLabel.Parent = Frame
                ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
                ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Size = UDim2.new(0, 0, 0, 0)
                ImageLabel.Image = "rbxassetid://78382470214961"
                ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)
                ImageLabel.Position = UDim2.fromScale(0.5, 0.5)
                
                local ClickBox = Instance.new("TextButton")
                ClickBox.Parent = Toggle
                ClickBox.Text = ""
                ClickBox.BackgroundTransparency = 1
                ClickBox.ZIndex = 1
                ClickBox.Size = UDim2.fromScale(1, 1)
                
                if Enabled then
                    Frame_2.Size = UDim2.fromOffset(0, 0)
                    ImageLabel.Size = UDim2.fromOffset(12, 12)
                end
                
                local Tween = TweenInfo.new(0.11, Enum.EasingStyle.Sine)

                WindowConnections:Add(ClickBox.MouseButton1Up:Connect(function(Key)
                    --if WindowConnections:IsPress(Key) then
                        Enabled = not Enabled
                        TweenService:Create(Frame_2, Tween, {Size = Enabled and UDim2.fromOffset(0, 0) or UDim2.fromOffset(12, 12)}):Play()
                        TweenService:Create(ImageLabel, Tween, {Size = Enabled and UDim2.fromOffset(12, 12) or UDim2.fromOffset(0, 0)}):Play()
                        Callback(Enabled)
                    --end
                end))
                
                local ToggleData = {}
                function ToggleData:Update(a)
                    if a.Visible ~= nil then
                        Toggle.Visible = a.Visible
                    end
                    if a.Text ~= nil then
                        TextLabel.Text = tostring(a.Text)
                    end
                end
                return ToggleData
            end
            
            return PageData
        end
        
        function WindowData:UpdateColorTheme(New)
            ColorTheme = New
            ColorUpdate:Fire(New)
        end
        
        return WindowData
    end

    return Library
