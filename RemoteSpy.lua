--[[
	
	Exo-Tool Script Made By Syko#0931
	
	Setup
	
--]]

function Create(obj, parent, params)
	local newObj = Instance.new(obj)
	for i, v in next, params do 
		newObj[i] = v 
	end 
	newObj.Parent = parent 
	return newObj 
end

local IsOpen = true

local White = Color3.fromRGB(255, 255, 255)
local Light = Color3.fromRGB(40, 40, 40)
local Medium = Color3.fromRGB(30, 30, 30)
local Dark = Color3.fromRGB(25, 25, 25)
local VDark = Color3.fromRGB(20, 20, 20)
local Selected = Color3.fromRGB(0, 200, 0)

local Gui = Create("ScreenGui", game:GetService("CoreGui"), {})
local Main = Create("Frame", Gui, {Active = true, BackgroundColor3 = Medium, BorderSizePixel = 0, ClipsDescendants = true, Draggable = true, Position = UDim2.new(0.5, -275, 0.5, -175), Selectable = true, Size = UDim2.new(0, 550, 0, 350)})

local Top = Create("Frame", Main, {Active = true, BackgroundColor3 = VDark, BorderSizePixel = 0, Selectable = true, Size = UDim2.new(1, 0, 0, 25)})
local Title = Create("TextLabel", Top, {Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, Font = Enum.Font.Fantasy, Selectable = true, Size = UDim2.new(1, -50, 0, 25), Text = " Exo-Tool By Syko#0931", TextColor3 = White, TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left})
local Minimise = Create("TextButton", Top, {Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, Font = Enum.Font.Fantasy, Position = UDim2.new(1, -50, 0, 0), Selectable = true, Size = UDim2.new(0, 25, 0, 25), Text = "_", TextColor3 = White, TextSize = 14})
local Exit = Create("TextButton", Top, {Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, Font = Enum.Font.Fantasy, Position = UDim2.new(1, -25, 0, 0), Selectable = true, Size = UDim2.new(0, 25, 0, 25), Text = "X", TextColor3 = White, TextSize = 14})

Minimise.MouseButton1Click:Connect(function()
	IsOpen = not IsOpen
	if IsOpen == true then
		Main:TweenSize(UDim2.new(0, 550, 0, 25), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.4)
	else
		Main:TweenSize(UDim2.new(0, 550, 0, 350), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.4)
	end
end)

Exit.MouseButton1Click:Connect(function()
	Gui:Destroy()
end)

local Side = Create("Frame", Main, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Position = UDim2.new(0, 0, 0, 25), Selectable = true, Size = UDim2.new(0, 125, 0, 325)})
local HttpSpyBtn = Create("TextButton", Side, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Font = Enum.Font.Fantasy, Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "Http Spy", TextColor3 = White, TextSize = 13})
local RemoteSpyBtn = Create("TextButton", Side, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Font = Enum.Font.Fantasy, Position = UDim2.new(0, 0, 0, 25), Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "Remote Spy", TextColor3 = White, TextSize = 13})
local R2SBtn = Create("TextButton", Side, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Font = Enum.Font.Fantasy, Position = UDim2.new(0, 0, 0, 50), Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "R2S", TextColor3 = White, TextSize = 13})
local RegScanBtn = Create("TextButton", Side, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Font = Enum.Font.Fantasy, Position = UDim2.new(0, 0, 0, 75), Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "GetReg Value Scan", TextColor3 = White, TextSize = 13})
local GCScanBtn = Create("TextButton", Side, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Font = Enum.Font.Fantasy, Position = UDim2.new(0, 0, 0, 100), Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "GetGC Value Scan", TextColor3 = White, TextSize = 13})
local PosGrabBtn = Create("TextButton", Side, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Font = Enum.Font.Fantasy, Position = UDim2.new(0, 0, 0, 125), Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "Position Grabber", TextColor3 = White, TextSize = 13})

--[[
	
	Http Spy
	
--]]

local HttpSpyFrame = Create("Frame", Main, {Active = true, BackgroundColor3 = Medium, BorderSizePixel = 0, Position = UDim2.new(0, 125, 0, 25), Selectable = true, Size = UDim2.new(1, -125, 1, -25)})
local HttpSpyTitle = Create("TextLabel", HttpSpyFrame, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "Click A Spy Result To Copy It's Link", TextColor3 = White, TextSize = 12})
local HttpSpyItems = Create("ScrollingFrame", HttpSpyFrame, {Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, CanvasSize = UDim2.new(2, 0, 0, 0), Position = UDim2.new(0, 0, 0, 25), Selectable = true, Size = UDim2.new(1, 0, 1, -25)})

function AddHttpSpyItem(httpType, link)
	local Btn = Create("TextButton", HttpSpyItems, {Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0, 0, 0, 25 * #HttpSpyItems:GetChildren()), Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = " " .. httpType .. " - " .. link, TextColor3 = White, TextSize = 10, TextXAlignment = Enum.TextXAlignment.Left})
	HttpSpyItems.CanvasSize = UDim2.new(2, 0, 0, 25 * #HttpSpyItems:GetChildren())
	Btn.MouseButton1Click:Connect(function()
		setclipboard(link)
	end)
end




--[[
	
	Remote Spy
	
--]]

local Fired = {}

local RemoteSpyFrame = Create("Frame", Main, {Active = true, BackgroundColor3 = Medium, BorderSizePixel = 0, Position = UDim2.new(0, 125, 0, 25), Selectable = true, Size = UDim2.new(1, -125, 1, -25), Visible = false})
local RemoteSpyTitle = Create("TextLabel", RemoteSpyFrame, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "Remote Spy - Click A Remote To R2S", TextColor3 = White, TextSize = 12})
local RemoteSpyItems = Create("ScrollingFrame", RemoteSpyFrame, {Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, CanvasSize = UDim2.new(4, 0, 0, 0), Position = UDim2.new(0, 0, 0, 25), Selectable = true, Size = UDim2.new(1, 0, 1, -25)})

local Services = {}
for i, v in pairs(game:GetChildren()) do
	Services[v] = v
end

function Format(name)
	if name == '' or name:match("[^_%w]") or name:match("^%d") then
		return '["' .. name .. '"]'
	end
	return "." .. name
end

function GetJailBreakBypass()
	return "nil\n\nfor a, b in next, debug.getregistry() do\n    if type(b) == 'function' then\n        for c, d in next, debug.getupvalues(b) do\n            if type(d) == 'table' then\n                for e, f in next, d do\n                    if tostring(e) == 'FireServer' then\n                        Event = d\n                    end\n                end\n            end\n        end\n    end\nend"
end

function GetPath(inst)
	if inst == "JailBreak" then
		return "JailBreak Bypass"
	end
	if inst == game then return "game" end
	local current, str = inst, ""
	while current.Parent ~= game do
		str = Format(current.Name) .. str
		current = current.Parent
	end
	if current==workspace then
		return "workspace" .. str
	elseif pcall(game.GetService, game, current.ClassName) then
		return "game:GetService('" .. current.ClassName .. "')" .. str
	end
	return "game" .. Format(current.Name) .. str
end

function GetType(Instance)
	local Types = {
		EnumItem = function()
			return "Enum." .. tostring(Instance.EnumType) .. "." .. tostring(Instance.Name)
		end,
		Instance = function()
			return GetPath(Instance)
		end,
		CFrame = function()
			return "CFrame.new(" .. tostring(Instance) .. ")"
		end,
		Vector3 = function()
			return "Vector3.new(" .. tostring(Instance) .. ")"
		end,
		BrickColor = function()
			return "BrickColor.new(\"" .. tostring(Instance) .. "\")"
		end,
		Color3 = function()
			return "Color3.new(" .. tostring(Instance) .. ")"
		end,
		string = function()
			local S = tostring(Instance)
			return "'" .. (S) .. "'"
		end,
		Ray = function()
			return "Ray.new(Vector3.new(" .. tostring(Instance.Origin) .. "), Vector3.new(" .. tostring(Instance.Direction) .. "))"
		end,
		table = function()
			local Str = "{ "
			for i, v in pairs(Instance) do
				Str = Str .. "[" .. GetType(i) .. "] = " .. GetType(v) .. ", "
			end
			return string.sub(Str, 1, string.len(Str) - 2) .. " }"
		end
	}

	return Types[typeof(Instance)] ~= nil and Types[typeof(Instance)]() or tostring(Instance)
end

local RemotesToIgnore = {
	["CharacterSoundEvent"] = true;
	["MovementUpdate"] = true;
	["FollowRelationshipChange"] = true;
	["OnMessageDoneFiltering"] = true;
	["SendNotification"] = true;
	["SetDialogInUse"] = true;
	["OnUnmuted"] = true;
	["MutePlayerRequested"] = true;
	["OnChannelJoined"] = true;
	["OnNewMessage"] = true;
	["SendNotificationInfo"] = true;
	["GetFollowRelationships"] = true;
	["GuiInsetChanged"] = true;
	["NewFollower"] = true;
	["OnNewSystemMessage"] = true;
	["GetServerVersion"] = true;
	["GetInitDataRequest"] = true;
	["OnMainChannelSet"] = true;
	["DefaultServerSoundEvent"] = true;
	["ChannelNameColorUpdated"] = true;
	["UnMutePlayerRequest"] = true;
	["OnChannelLeft"] = true;
	["SayMessageRequest"] = false;
	["SetBlockedUserIdsRequest"] = true;
	["FollowRelationshipChanged"] = true;
	["GamepadNotifications"] = true;
	["OnMuted"] = true;
	["MutePlayerRequest"] = true;
}

function AddRemoteSpyItem(remoteType, inst, args, ret)
	if not RemotesToIgnore[inst.Name] then
		local Btn = Create("TextButton", RemoteSpyItems, {Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0, 0, 0, 55 * #RemoteSpyItems:GetChildren()), Selectable = true, Size = UDim2.new(1, 0, 0, 55), Text = " " .. remoteType .. " = " .. GetPath(inst) .. "\n Args = { " .. args .. " }\n Returned = { " .. ret .. " }", TextColor3 = White, TextSize = 10, TextXAlignment = Enum.TextXAlignment.Left})
		RemoteSpyItems.CanvasSize = UDim2.new(2, 0, 0, 55 * #RemoteSpyItems:GetChildren())
		Btn.MouseButton1Click:Connect(function()
			if inst ~= "JailBreak" then
				R2S(remoteType, GetPath(inst), args)
			else
				R2S(remoteType, GetJailBreakBypass(), args)
			end
		end)
	end
end

local Methods = {["Fire"] = "Bindable Event", ["FireServer"] = "Remote Event", ["Invoke"] = "Bindable Function", ["Invoke Server"] = "Remote Function"}

function StartRemoteSpy()
	if game.PlaceId == 606849621 then -- JailBreak Spy Bypass
		local Event
		local OldFS
		for a, b in next, debug.getregistry() do
			if type(b) == "function" then
				for c, d in next, debug.getupvalues(b) do
					if type(d) == "table" then
						for e, f in next, d do
							if tostring(e) == "FireServer" then
								Event = d
							end
						end
					end
				end
			end
		end
		OldFS = Event.FireServer
		Event.FireServer = function(inst, ...)
			local Args = {...}
			local NewArgs = {}
			for i, v in pairs(Args) do
				NewArgs[i] = GetType(v)
			end
			Fired[#Fired + 1] = {"Remote Event", "JailBreak", table.concat(NewArgs, ", "), " "}
			return OldFS(inst, ...)
		end
	else -- Normal Remote Spy
		local mt = getrawmetatable(game)
		setreadonly(mt, false)
		local oldNc = mt.__namecall
		mt.__namecall = newcclosure(function(inst, ...)
			if inst.Parent ~= nil then
				local Args = {...}
				local Method = getnamecallmethod()
				if Methods[Method] then
					local Ret = {oldNc(inst, ...)}
					local NewArgs = {}
					for i, v in pairs(Args) do
						NewArgs[i] = GetType(v)
					end
					Fired[#Fired + 1] = {Methods[Method], inst, table.concat(NewArgs, ", "), table.concat(Ret, ", ")}
					return unpack(Ret)
				end
			end
			return oldNc(inst, ...)
		end)
	end
end

--[[
	
	R2S
	
--]]

local R2SFrame = Create("Frame", Main, {Active = true, BackgroundColor3 = Medium, BorderSizePixel = 0, Position = UDim2.new(0, 125, 0, 25), Selectable = true, Size = UDim2.new(1, -125, 1, -25), Visible = false})
local R2STitle = Create("TextLabel", R2SFrame, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "Remote To Script - Click A Remote In Remote Spy", TextColor3 = White, TextSize = 12})
local R2SScroll = Create("ScrollingFrame", R2SFrame, {Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, CanvasSize = UDim2.new(3, 0, 1, -50), Position = UDim2.new(0, 0, 0, 25), Selectable = true, Size = UDim2.new(1, 0, 1, -50)})
local R2SBox = Create("TextLabel", R2SScroll, {Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, Selectable = true, Size = UDim2.new(1, 0, 1, 0), Text = "-- Remote To Script", TextColor3 = White, TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top})
local R2SCopyBtn = Create("TextButton", R2SFrame, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Font = Enum.Font.Fantasy, Position = UDim2.new(0, 0, 0, 300), Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "Copy Script", TextColor3 = White, TextSize = 13})

R2SCopyBtn.MouseButton1Click:Connect(function()
	setclipboard(R2SBox.Text)
end)

function R2S(remoteType, path, args)
	local Watermark = "-- Script Generated With Exo-Tool"
	local Event = "\n\nlocal Event = " .. path
	local ArgsScr = "\n\nlocal Args = { " .. args .. " }"
	for i, v in pairs(Methods) do
		if remoteType == v then
			R2SBox.Text = Watermark .. Event .. ArgsScr .. "\n\nEvent:" .. i .. "(unpack(Args))"
		end
	end
end

--[[
	
	GetGC Value Scanner
	
--]]

local GCScanFrame = Create("Frame", Main, {Active = true, BackgroundColor3 = Medium, BorderSizePixel = 0, Position = UDim2.new(0, 125, 0, 25), Selectable = true, Size = UDim2.new(1, -125, 1, -25)})
local GCScanTitle = Create("TextLabel", GCScanFrame, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "Input A Value And Press Enter To Search In Getgc", TextColor3 = White, TextSize = 12})
local GCScanSearch = Create("TextBox", GCScanFrame, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, PlaceholderText = "Search...", Position = UDim2.new(0, 0, 0, 25), Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "", TextColor3 = White, TextSize = 10})
local GCScanItems = Create("ScrollingFrame", GCScanFrame, {Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, CanvasSize = UDim2.new(2, 0, 0, 0), Position = UDim2.new(0, 0, 0, 50), Selectable = true, Size = UDim2.new(1, 0, 1, -50)})

function AddGCScanItem(name, value, parent)
	local Btn = Create("TextLabel", GCScanItems, {Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0, 0, 0, 55 * #GCScanItems:GetChildren()), Selectable = true, Size = UDim2.new(1, 0, 0, 55), Text = parent .. "\n    " .. name .. "\n    " .. value, TextColor3 = White, TextSize = 10, TextXAlignment = Enum.TextXAlignment.Left})
	GCScanItems.CanvasSize = UDim2.new(2, 0, 0, 55 * #GCScanItems:GetChildren())
end

function ScanGCValue(name)
	local param = string.lower(name)
	for a, b in next, getgc() do
		if type(b) == "table" then
			for c, d in next, b do
				if string.find(string.lower(tostring(c)), param) then
					AddGCScanItem(tostring(c), GetType(d), tostring(b))
				end
			end
		elseif type(b) == "function" then
			for c, d in next, debug.getupvalues(b) do
				if type(d) == "table" then
					for e, f in next, d do
						if string.find(string.lower(tostring(e)), param) then
							AddGCScanItem(tostring(e), GetType(f), tostring(b) .. " > " .. tostring(d))
						end
					end
				end
			end
		end
	end
end

GCScanSearch.FocusLost:Connect(function(enterPressed)
	if enterPressed == true then
		GCScanItems:ClearAllChildren()
		GCScanItems.CanvasSize = UDim2.new(2, 0, 0, 0)
		ScanGCValue(GCScanSearch.Text)
	end
end)

--[[
	
	Getreg Value Scanner
	
--]]

local RegScanFrame = Create("Frame", Main, {Active = true, BackgroundColor3 = Medium, BorderSizePixel = 0, Position = UDim2.new(0, 125, 0, 25), Selectable = true, Size = UDim2.new(1, -125, 1, -25)})
local RegScanTitle = Create("TextLabel", RegScanFrame, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "Input A Value And Press Enter To Search In Getreg", TextColor3 = White, TextSize = 12})
local RegScanSearch = Create("TextBox", RegScanFrame, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, PlaceholderText = "Search...", Position = UDim2.new(0, 0, 0, 25), Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "", TextColor3 = White, TextSize = 10})
local RegScanItems = Create("ScrollingFrame", RegScanFrame, {Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, CanvasSize = UDim2.new(2, 0, 0, 0), Position = UDim2.new(0, 0, 0, 50), Selectable = true, Size = UDim2.new(1, 0, 1, -50)})

function AddRegScanItem(name, value, parent)
	local Btn = Create("TextLabel", RegScanItems, {Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, Position = UDim2.new(0, 0, 0, 55 * #RegScanItems:GetChildren()), Selectable = true, Size = UDim2.new(1, 0, 0, 55), Text = parent .. "\n    " .. name .. "\n    " .. value, TextColor3 = White, TextSize = 10, TextXAlignment = Enum.TextXAlignment.Left})
	RegScanItems.CanvasSize = UDim2.new(2, 0, 0, 55 * #RegScanItems:GetChildren())
end

function ScanRegValue(name)
	local param = string.lower(name)
	for a, b in next, getreg() do
		if type(b) == "table" then
			for c, d in next, b do
				if string.find(string.lower(tostring(c)), param) then
					AddRegScanItem(tostring(c), GetType(d), tostring(b))
				end
			end
		elseif type(b) == "function" then
			for c, d in next, debug.getupvalues(b) do
				if type(d) == "table" then
					for e, f in next, d do
						if string.find(string.lower(tostring(e)), param) then
							AddRegScanItem(tostring(e), GetType(f), tostring(b) .. " > " .. tostring(d))
						end
					end
				end
			end
		end
	end
end

RegScanSearch.FocusLost:Connect(function(enterPressed)
	if enterPressed == true then
		RegScanItems:ClearAllChildren()
		RegScanItems.CanvasSize = UDim2.new(2, 0, 0, 0)
		ScanRegValue(RegScanSearch.Text)
	end
end)

--[[
	
	Position Grabber
	
--]]

local PosGrabFrame = Create("Frame", Main, {Active = true, BackgroundColor3 = Medium, BorderSizePixel = 0, Position = UDim2.new(0, 125, 0, 25), Selectable = true, Size = UDim2.new(1, -125, 1, -25), Visible = false})
local PosGrabTitle = Create("TextLabel", PosGrabFrame, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "Position Grabber", TextColor3 = White, TextSize = 12})
local ChosenPartLabel = Create("TextLabel", PosGrabFrame, {Active = true, BackgroundColor3 = Medium, BorderSizePixel = 0, Position = UDim2.new(0, 20, 0, 45), Selectable = true, Size = UDim2.new(0, 100, 0, 25), Text = "Chosen Part:", TextColor3 = White, TextSize = 12, TextXAlignment = Enum.TextXAlignment.Left})
local ChooseHeadBtn = Create("TextButton", PosGrabFrame, {Active = true, BackgroundColor3 = Medium, BorderSizePixel = 0, Position = UDim2.new(0, 140, 0, 45), Selectable = true, Size = UDim2.new(0, 120, 0, 25), Text = "Head", TextColor3 = White, TextSize = 9})
local ChooseHRPBtn = Create("TextButton", PosGrabFrame, {Active = true, BackgroundColor3 = Selected, BorderSizePixel = 0, Position = UDim2.new(0, 280, 0, 45), Selectable = true, Size = UDim2.new(0, 120, 0, 25), Text = "HumanoidRootPart", TextColor3 = White, TextSize = 9})
local PosLabel = Create("TextLabel", PosGrabFrame, {Active = true, BackgroundColor3 = Medium, BorderSizePixel = 0, Position = UDim2.new(0, 0, 0, 100), Selectable = true, Size = UDim2.new(1, 0, 0, 40), Text = "", TextColor3 = White, TextSize = 15})
local RoundPosBtn = Create("TextButton", PosGrabFrame, {Active = true, BackgroundColor3 = Selected, BorderSizePixel = 0, Position = UDim2.new(0.5, -60, 0, 165), Selectable = true, Size = UDim2.new(0, 120, 0, 25), Text = "Rounding: Yes", TextColor3 = White, TextSize = 10})
local PosCopyBtn = Create("TextButton", PosGrabFrame, {Active = true, BackgroundColor3 = Dark, BorderSizePixel = 0, Font = Enum.Font.Fantasy, Position = UDim2.new(0, 0, 0, 300), Selectable = true, Size = UDim2.new(1, 0, 0, 25), Text = "Copy Location", TextColor3 = White, TextSize = 13})
local ChosenPart = "HumanoidRootPart"

ChooseHeadBtn.MouseButton1Click:Connect(function()
	ChosenPart = "Head"
	ChooseHeadBtn.BackgroundColor3 = Selected
	ChooseHRPBtn.BackgroundColor3 = Medium	
end)

ChooseHRPBtn.MouseButton1Click:Connect(function()
	ChosenPart = "HumanoidRootPart"
	ChooseHRPBtn.BackgroundColor3 = Selected
	ChooseHeadBtn.BackgroundColor3 = Medium
end)

PosCopyBtn.MouseButton1Click:Connect(function()
	setclipboard(PosLabel.Text)
end)

RoundPosBtn.MouseButton1Click:Connect(function()
	if RoundPosBtn.BackgroundColor3 == Color3.fromRGB(0, 200, 0) then
		RoundPosBtn.BackgroundColor3 = Medium
		RoundPosBtn.Text = "Rounding: No"
	else
		RoundPosBtn.BackgroundColor3 = Selected
		RoundPosBtn.Text = "Rounding: Yes"
	end
end)

game:GetService("RunService").Stepped:Connect(function()
	local Pos = game:GetService("Players").LocalPlayer.Character[ChosenPart].Position
	if string.find(RoundPosBtn.Text, "Yes") then
		PosLabel.Text = tostring(math.floor(Pos.X) .. ", " .. math.floor(Pos.Y) .. ", " .. math.floor(Pos.Z))
	else
		PosLabel.Text = tostring(Pos)
	end
end)
	
--[[
	
	Final Setup
	
--]]

StartRemoteSpy()

local BtnTabs = {
	[HttpSpyBtn] = HttpSpyFrame, 
	[RemoteSpyBtn] = RemoteSpyFrame,
	[R2SBtn] = R2SFrame,
	[RegScanBtn] = RegScanFrame,
	[GCScanBtn] = GCScanFrame,
	[PosGrabBtn] = PosGrabFrame
}

for button,frame in pairs(BtnTabs) do
	button.MouseButton1Click:connect(function()
		for i, v in pairs(BtnTabs) do
			v.Visible = v == frame
		end
	end)
end

while wait() and Gui do
	if #Fired > 0 then
		AddRemoteSpyItem(unpack(table.remove(Fired, 1)))
	end
end
