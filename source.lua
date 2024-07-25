local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Utility",
    SubTitle = "by gatin__",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "house" }),
    Player = Window:AddTab({ Title = "Player", Icon = "user" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
local walkspeed = 16
local jumpPower = 50
local Options = Fluent.Options

Fluent:Notify({
    Title = "Welcome user ",
    Content = "This script is intended to be useful.",
    Duration = 5 -- Set to nil to make the notification not disappear
})

local SwalkSpeed = Tabs.Player:AddSection("WalkSpeed")

Tabs.Player:AddInput("Input", {
    Title = "Walkspeed",
    Description = "change your speed",
    Default = "25",
    Placeholder = "Placeholder",
    Numeric = true, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(Value)
        walkspeed = Value
    end
})

Tabs.Player:AddButton({
    Title = "Set walkspeed",
    Description = "",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed
    end
})

Tabs.Player:AddButton({
    Title = "Reset walkspeed",
    Description = "",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
})

local SjumpPower = Tab:AddSection("JumpPower")

Tabs.Player:AddInput("Input", {
    Title = "JumpPower",
    Description = "change your jumpPower",
    Default = "50",
    Placeholder = "Placeholder",
    Numeric = true, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(Value)
        jumpPower = Value
    end
})

Tabs.Player:AddButton({
    Title = "Set jumpPower",
    Description = "",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumpPower
    end
})

Tabs.Player:AddButton({
    Title = "Reset jumpPower",
    Description = "",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
    end
})

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

local gui = Instance.new("ScreenGui")
gui.Name = "patrickGui"
gui.Parent = game.CoreGui

--///patrick gui maker///--

-- put your mainframe into the screengui that I have made (frame.Parent = gui)

local b1 = Instance.new("TextButton")
b1.Size = UDim2.new(0.06, 0, 0.09, 0)
b1.Position = UDim2.new(0.8, 0, 0.1, 0)
b1.BackgroundColor3 = Color3.new(0, 0, 0)
b1.BorderColor3 = Color3.new(0, 0, 0)
b1.BorderSizePixel = 1
b1.Text = "Open/Close"
b1.BackgroundTransparency = 0.4
b1.TextColor3 = Color3.new(255, 255, 255)
b1.Draggable = true
b1.Parent = gui

local b1Corner = Instance.new("UICorner")
b1Corner.CornerRadius = UDim.new(0, 5)
b1Corner.Parent = b1

b1.MouseButton1Down:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
end)
