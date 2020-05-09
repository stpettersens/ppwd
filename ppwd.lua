#!/usr/bin/env lua
-- ppwd
-- Simple Lua program to take string from stdin and output it as asterixed string
-- plaintext string and length separated by pipe character (e.g. "foo" -> "***|foo|3")
--
-- Author: Sam Saint-Pettersen <s dot stpettersen + github at gmail dot com>
--
function ppwd()
	io.input(io.stdin)
	local masked = ''
	local output = ''
	local stdin = io.read()
	local len = string.len(stdin)
	for i = 1, len, 1 do
		local c = stdin:sub(i,i)
		output = output .. c
		masked = masked ..'*'
	end
	print(string.format("%s|%s|%d", masked, output, len))
end

ppwd()
