local ReplicatedStorage = game:GetService("ReplicatedStorage")

local switch = require(ReplicatedStorage.Packages.switch)

local tru = math.random(1, 99999)

switch(tru)
{
	[tru] = function()
		print("OK")
	end
}

switch(0)
{
	[tru] = function()
		print("frong")
	end,
	__index = function()
		print("OK")
	end
}

