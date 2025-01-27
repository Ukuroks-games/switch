# Switch

## Example

```
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local switch = require(ReplicatedStorage.Packages.switch)

switch(1)
{
	[1] = function()

	end

	[2] = function()

	end

	__index = function()
		print("default")
	end
}
```