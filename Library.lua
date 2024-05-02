local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Mouse = Players.LocalPlayer:GetMouse()

local Theme = {
    Background = Color3.fromRGB(63, 63, 72),
    Main = Color3.fromRGB(33, 33, 38),
    Shadow = Color3.fromRGB(0, 0, 0),
    TextDefault = Color3.fromRGB(200, 200, 200),
    TextSelect = Color3.fromRGB(255, 255, 255)
}

local Library = {}

function Library:Create(Title, Icon, Type)
    local Library_Main = Instance.new("ScreenGui")
    local Background = Instance.new("Frame")
    local Background_Corner = Instance.new("UICorner")
    local Top_Bar = Instance.new("Frame")
    local Top_Bar_Blocker = Instance.new("Frame")
    local Top_Bar_Corner = Instance.new("UICorner")
    local Shadow_Frame = Instance.new("Frame")
    local Shadow_Main = Instance.new("ImageLabel")
    local Side_Bar = Instance.new("Frame")
    local Side_Corner = Instance.new("UICorner")
    local Side_Blocker_1 = Instance.new("Frame")
    local Side_Blocker_2 = Instance.new("Frame")
    local Main_Holder = Instance.new("ScrollingFrame")
    local Script_Image = Instance.new("ImageLabel")
    local Script_Name = Instance.new("TextLabel")
    local Items = Instance.new("ScrollingFrame")
    local Main_Tab_Holder = Instance.new("ScrollingFrame")

    Library_Main.Parent = game:GetService("CoreGui")
    Library_Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Library_Main.Name = "Library"
    Library_Main.ResetOnSpawn = false

    Background.Parent = Library_Main
    Background.Name = "Background"
    Background.BorderSizePixel = 0
    Background.AnchorPoint = Vector2.new(0.5, 0.5)
    Background.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background.Size = UDim2.new(0, 400, 0, 260)
    Background.BackgroundColor3 = Theme.Background

    Background_Corner.Parent = Background
    Background_Corner.Name = "Background_Corner"
    Background_Corner.CornerRadius = UDim.new(0, 6)

    Top_Bar.Parent = Background
    Top_Bar.Name = "Top_Bar"
    Top_BarBorderSizePixel = 0
    Top_Bar.BackgroundColor3 = Theme.Main
    Top_Bar.Position = UDim2.new(0, 0, 0, 0)
    Top_Bar.Size = UDim2.new(0, 400, 0, 25)
    Top_Bar.Draggable = true
    
    Top_Bar_Blocker.Parent = Top_Bar
    Top_Bar_Blocker.BorderSizePixel = 0
    Top_Bar_Blocker.Name = "Top_Bar_Blocker"
    Top_Bar_Blocker.AnchorPoint = Vector2.new(0, 1)
    Top_Bar_Blocker.Position = UDim2.new(0, 0, 1, 0)
    Top_Bar_Blocker.Size = UDim2.new(0, 400, 0, 10)
    Top_Bar_Blocker.BackgroundColor3 = Theme.Main

    Top_Bar_Corner.Parent = Top_Bar
    Top_Bar_Corner.Name = "Top_Bar_Corner"
    Top_Bar_Corner.CornerRadius = UDim.new(0, 4)

    Shadow_Frame.Parent = Background
    Shadow_Frame.BorderSizePixel = 0
    Shadow_Frame.BackgroundTransparency = 1
    Shadow_Frame.Name = "Shadow_Frame"
    Shadow_Frame.ZIndex = 0
    Shadow_Frame.Size = UDim2.new(1, 0, 1, 0)

    Shadow_Main.Parent = Shadow_Frame
    Shadow_Main.BorderSizePixel = 0
    Shadow_Main.ZIndex = 0
    Shadow_Main.BackgroundTransparency = 1
    Shadow_Main.Name = "Shadow_Main"
    Shadow_Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow_Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Shadow_Main.Image = "rbxassetid://6014261993"
    Shadow_Main.Size = UDim2.new(1, 50, 1, 50)
    Shadow_Main.ImageColor3 = Theme.Shadow
    Shadow_Main.ImageTransparency = 0.3
    Shadow_Main.ScaleType = Enum.ScaleType.Slice
    Shadow_Main.SliceCenter = Rect.new(49, 49, 450, 450)

    Main_Holder.Name = "Main_Holder"
    Main_Holder.Parent = Background
    Main_Holder.Active = true
    Main_Holder.BackgroundColor3 = Color3.new(1, 1, 1)
    Main_Holder.BackgroundTransparency = 1
    Main_Holder.BorderColor3 = Color3.new(0, 0, 0)
    Main_Holder.BorderSizePixel = 0
    Main_Holder.Position = UDim2.new(0, 0, 0, 25)
    Main_Holder.Size = UDim2.new(0, 400, 0, 235)
    Main_Holder.CanvasSize = UDim2.new(0, 0, 0, 0)

    Side_Bar.Name = "Side_Bar"
    Side_Bar.Parent = Main_Holder
    Side_Bar.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.14902)
    Side_Bar.BorderColor3 = Color3.new(0, 0, 0)
    Side_Bar.BorderSizePixel = 0
    Side_Bar.Size = UDim2.new(0, 100, 0, 235)

    Side_Corner.Parent = Side_Bar
    Side_Corner.Name = "Side_Corner"
    Side_Corner.CornerRadius = UDim.new(0, 6)

    Side_Blocker_1.Name = "Side_Blocker_1"
    Side_Blocker_1.Parent = Side_Bar
    Side_Blocker_1.BackgroundColor3 = Theme.Main
    Side_Blocker_1.BorderColor3 = Color3.new(0, 0, 0)
    Side_Blocker_1.BorderSizePixel = 0
    Side_Blocker_1.Size = UDim2.new(0, 100, 0, 10)

    Side_Blocker_2.Name = "Side_Blocker_2"
    Side_Blocker_2.Parent = Side_Bar
    Side_Blocker_2.BackgroundColor3 = Theme.Main
    Side_Blocker_2.BorderColor3 = Color3.new(0, 0, 0)
    Side_Blocker_2.BorderSizePixel = 0
    Side_Blocker_2.Position = UDim2.new(0.800000012, 0, 0, 0)
    Side_Blocker_2.Size = UDim2.new(0, 20, 0, 235)

    Script_Image.Name = "Script_Image"
    Script_Image.Parent = Top_Bar
    Script_Image.BackgroundColor3 = Color3.new(1, 1, 1)
    Script_Image.BackgroundTransparency = 1
    Script_Image.BorderColor3 = Color3.new(0, 0, 0)
    Script_Image.BorderSizePixel = 0
    Script_Image.Size = UDim2.new(0, 25, 0, 25)

    Script_Name.Name = "Script_Name"
    Script_Name.Parent = Top_Bar
    Script_Name.AnchorPoint = Vector2.new(0.5, 0.5)
    Script_Name.BackgroundColor3 = Color3.new(1, 1, 1)
    Script_Name.BackgroundTransparency = 1
    Script_Name.BorderColor3 = Color3.new(0, 0, 0)
    Script_Name.BorderSizePixel = 0
    Script_Name.Position = UDim2.new(0.5, 0, 0.5, 0)
    Script_Name.Size = UDim2.new(0, 200, 0, 25)
    Script_Name.Font = Enum.Font.Gotham
    Script_Name.Text = Title
    Script_Name.TextColor3 = Theme.TextDefault
    Script_Name.TextSize = 14

    Items.Name = "Items"
    Items.Parent = Main_Holder
    Items.Active = true
    Items.BackgroundColor3 = Color3.new(1, 1, 1)
    Items.BackgroundTransparency = 1
    Items.BorderColor3 = Color3.new(0, 0, 0)
    Items.BorderSizePixel = 0
    Items.Position = UDim2.new(0.25, 0, 0, 0)
    Items.Size = UDim2.new(0, 300, 0, 235)
    Items.CanvasSize = UDim2.new(0, 0, 0, 0)

    Main_Tab_Holder.Name = "Tab_Holder"
    Main_Tab_Holder.Parent = Side
    Main_Tab_Holder.Active = true
    Main_Tab_Holder.BackgroundColor3 = Color3.new(1, 1, 1)
    Main_Tab_Holder.BackgroundTransparency = 1
    Main_Tab_Holder.BorderColor3 = Color3.new(0, 0, 0)
    Main_Tab_Holder.BorderSizePixel = 0
    Main_Tab_Holder.Size = UDim2.new(0, 100, 0, 235)
    Main_Tab_Holder.ZIndex = 2
    Main_Tab_Holder.CanvasSize = UDim2.new(0, 0, 0, 0)

    local InsideLibrary = {}

    function InsideLibrary:Tab(Tab_Name)
        local Tab_Holder = Instance.new("ScrollingFrame")
        local UIGridLayout = Instance.new("UIGridLayout")
        local Tab = Instance.new("Frame")
        local Switch = Instance.new("TextButton")

        UIGridLayout.Parent = Main_Tab_Holder
        UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIGridLayout.CellSize = UDim2.new(0, 95, 0, 25)

        Tab.Name = "Tab"
        Tab.Parent = Main_Tab_Holder
        Tab.BackgroundColor3 = Color3.new(1, 1, 1)
        Tab.BackgroundTransparency = 1
        Tab.BorderColor3 = Color3.new(0, 0, 0)
        Tab.BorderSizePixel = 0
        Tab.Size = UDim2.new(0, 100, 0, 100)

        Switch.Name = "Switch"
        Switch.Parent = Tab
        Switch.BackgroundColor3 = Color3.new(1, 1, 1)
        Switch.BackgroundTransparency = 1
        Switch.BorderColor3 = Color3.new(0, 0, 0)
        Switch.BorderSizePixel = 0
        Switch.Size = UDim2.new(1, 0, 1, 0)
        Switch.Font = Enum.Font.Gotham
        Switch.Text = Tab_Name
        Switch.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        Switch.TextSize = 14

        Tab_Holder.Name = "Tab"
        Tab_Holder.Parent = Items
        Tab_Holder.Active = true
        Tab_Holder.BackgroundColor3 = Color3.new(1, 1, 1)
        Tab_Holder.BackgroundTransparency = 1
        Tab_Holder.BorderColor3 = Color3.new(0, 0, 0)
        Tab_Holder.BorderSizePixel = 0
        Tab_Holder.Size = UDim2.new(0, 300, 0, 235)
        Tab_Holder.CanvasSize = UDim2.new(0, 0, 0, 0)

        Switch.MouseButton1Click:Connect(function()
            for i,v in next,Items:GetChildren() do
                v.Visible = false
            end
            for i,t in next, Tabs:GetChildren() do
                if t.ClassName ~= "UIGridLayout" then
                    t.TextColor3 = Color3.fromRGB(200, 200, 200)
                end
                Switch.TextColor3 = Theme.TextSelect
            end
            Tab.Visible = true
        end)
    end
    return InsideLibrary
end

return Library
