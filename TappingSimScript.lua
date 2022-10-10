
_G.autoRebirth = true
_G.autoTap = true
_G.autoHatch = false

spawn(function ()
	while _G.autoTap == true do
	game:GetService("ReplicatedStorage").Events.Tap:FireServer()
		wait()
	end
end)

spawn(function ()
	while _G.autoRebirth == true do
	local args = {
		[1] = 500}
	game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
		wait()
	end
end)

spawn(function ()
	while _G.autoHatch == true do

local args = {
    [1] = {},
    [2] = "Swamp Egg",
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))

		wait()
	end
end)