local toolbar = plugin:CreateToolbar("Script Blocks")

local settingsButton = toolbar:CreateButton(
	"Settings", "Script Blocks Plugin Settings",
	"rbxassetid://322883400"
)

local settingsGui = plugin:CreateDockWidgetPluginGui(
	"ScriptBlocksSettings",
	DockWidgetPluginGuiInfo.new()
)
if not settingsGui.HostWidgetWasRestored then
	settingsGui.Name = "ScriptBlocksSettings"
	settingsGui.Title = "Script Blocks Plugin Settings"
end

local function UpdateSettingsActive()
	settingsButton:setActive(settingsGui.Enabled)
end
UpdateSettingsActive()

local function ToggleSettingsGui()
	settingsGui.Enabled = not settingsGui.Enabled
end

settingsGui:GetPropertyChangedSignal("Enabled"):Connect(
	UpdateSettingsActive
)
settingsButton.Click:Connect(ToggleSettingsGui)

local settingsFrame = Instance.new("Frame", settingsGui)
settingsFrame.Size = UDim2.new(1,0,1,0)

-- see StudioTheme
--local Studio = settings().Studio
--frame.BackgroundColor3 = Studio.Theme:GetColor(
--	Enum.StudioStyleGuideColor.MainBackground)
