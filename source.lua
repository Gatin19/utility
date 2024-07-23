local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Utility",
    SubTitle = "by gatin__",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Options = Fluent.Options

Fluent:Notify({
        Title = "Welcome user ",
        Content = "This script is intended to be useful.",
        Duration = 5 -- Set to nil to make the notification not disappear
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Player = Window:AddTab({ Title = "Player", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
