--Made by GngWilshy
local NOTIFICATION_DURATION = 5 
    local NOTIFICATION_HEIGHT = 100 
        local NOTIFICATION_WIDTH = 300 
            local NOTIFICATION_BACKGROUND_COLOR = Color3.fromRGB(45, 45, 45)
                local NOTIFICATION_TEXT_COLOR = Color3.fromRGB(255, 255, 255)
            local NOTIFICATION_TEXT_SIZE = 18
        local NOTIFICATION_TEXT_PADDING = 20
    local NOTIFICATION_TEXT_FONT = Enum.Font.GothamBold
local function NotificationContext(message)
    local player = game.Players.LocalPlayer
    local gui = Instance.new("ScreenGui")
    gui.Name = "NotificationGui"
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    gui.ResetOnSpawn = false
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, NOTIFICATION_WIDTH, 0, NOTIFICATION_HEIGHT)
    frame.AnchorPoint = Vector2.new(0.5, 1)
    frame.Position = UDim2.new(0.5, 0, 1, 0)
    frame.BackgroundColor3 = NOTIFICATION_BACKGROUND_COLOR
    frame.BorderSizePixel = 0
    frame.Parent = gui
    local textLabel = Instance.new("TextLabel")
    textLabel.Text = message
    textLabel.Size = UDim2.new(1, -NOTIFICATION_TEXT_PADDING * 2, 1, -NOTIFICATION_TEXT_PADDING * 2)
    textLabel.Position = UDim2.new(0, NOTIFICATION_TEXT_PADDING, 0, NOTIFICATION_TEXT_PADDING)
    textLabel.TextColor3 = NOTIFICATION_TEXT_COLOR
    textLabel.TextSize = NOTIFICATION_TEXT_SIZE
    textLabel.Font = NOTIFICATION_TEXT_FONT
    textLabel.BackgroundTransparency = 1
    textLabel.TextWrapped = true
    textLabel.Parent = frame
    gui.Parent = player.PlayerGui
    frame:TweenPosition(UDim2.new(0.5, 0, 1, -NOTIFICATION_HEIGHT), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
    wait(NOTIFICATION_DURATION) 
    frame:TweenPosition(UDim2.new(0.5, 0, 1, 0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.5, true)
    wait(0.5)
    gui:Destroy()
end
