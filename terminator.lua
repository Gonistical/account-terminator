local function BypassTrolling(text: string) 
	repeat task.wait() until game:IsLoaded();

	local Players = game:GetService("Players");
	local Player = Players.LocalPlayer;

	local ScreenGui = Instance.new("ScreenGui");
	local TextLabel = Instance.new("TextLabel");
	local AspectRatio = Instance.new("UIAspectRatioConstraint");

	ScreenGui.Name = 'DestroyerV2'
	TextLabel.Name = text
	AspectRatio.Name = text

	ScreenGui.Parent = Player.PlayerGui
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = true

	AspectRatio.Parent = TextLabel
	AspectRatio.AspectRatio = 4.471
	AspectRatio.AspectType = Enum.AspectType.FitWithinMaxSize
	AspectRatio.DominantAxis = Enum.DominantAxis.Width

	TextLabel.Parent = ScreenGui
	TextLabel.Text = text
	TextLabel.Size = UDim2.new(0, 769,0, 172);
	TextLabel.TextScaled = true
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextStrokeTransparency = 0
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel.Font = Enum.Font.SourceSansSemibold

	TextLabel.BackgroundTransparency = 1
	TextLabel.BorderSizePixel = 0
end
return BypassTrolling
