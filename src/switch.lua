

-- If the default case does not have to be handled, we can use the following auxiliary function:
function switch(value)
	-- Handing `cases` to the returned function allows the `switch()` function to be used with a syntax closer to c code (see the example below).
	-- This is because lua allows the parentheses around a table type argument to be omitted if it is the only argument.
	return function(cases)
		
		-- The default case is achieved through the metatable mechanism of lua tables (the `__index` operation).
		setmetatable(cases, cases)
		
		local f = cases[value]
		if f then
			f()
		end
	end
end

return switch
