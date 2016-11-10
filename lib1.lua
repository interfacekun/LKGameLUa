function norm(x,y)
	return (x^2+y^2)^0.5
end

function twice(x)
	return 2*x
end

function charToNumber()
	charInput = io.read()
	n = tonumber(charInput)
	if n == nil then
		error(charInput .. "is not a valid number")
	else
		print(n*2)
	end
end

function testLocal()
	a = 10;
	if a==10 then
		print("globle",a)
		local a=1
		print("local",a)
	end
end

function newCounter()
	local i = 0
	return function()
			i=i+1
			return i
		end
end
