-- Gui to Lua
-- Version: 3.2

-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local TextButton = Instance.new("TextButton")
local Players = game:GetService('Players')
local Animate = Players.LocalPlayer.Character.Animate
--Properties:

ScreenGui.Parent = game.CoreGui:WaitForChild("RobloxGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
TextButton.Position = UDim2.new(0.994791687, 0, 0.552664161, 0)
TextButton.Size = UDim2.new(0, 10, 0, 57)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Down:connect(function()
Animate.idle.Animation1.AnimationId = 'rbxassetid://5319828216'
Animate.idle.Animation2.AnimationId = 'rbxassetid://5319831086'
Animate.run.RunAnim.AnimationId = 'rbxassetid://5319847204'
Animate.walk.WalkAnim.AnimationId = 'rbxassetid://5319847204'
Animate.jump.JumpAnim.AnimationId = 'rbxassetid://5319841935'
Animate.climb.ClimbAnim.AnimationId = 'rbxassetid://5319816685'
Animate.fall.FallAnim.AnimationId = 'rbxassetid://5319839762'
Animate.swim.Swim.AnimationId = 'rbxassetid://5319850266'
Animate.swimidle.SwimIdle.AnimationId = 'rbxassetid://5319852613'
end)
