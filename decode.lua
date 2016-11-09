#!/usr/bin/env lua

function unescape(s)
	s = string.gsub(s,"+"," ")
	s = string.gsub(s,"%%(%x%x)",function ( h )
		return string.char(tonumber(h,16))
	end)
	return string
end

str = unescape(arg[1])
print(str)
