-- --/usr/bin/env lua 

-- print("Hello world")
-- a={"a","b","c","d"}
-- for i=1,4 do
-- 	print(a[i])
-- end
-- print("Hello world")
-- local a =  io.read()
-- print(a)
-- print("abc")
-- if(0)
-- then
--     print("0 为 true")
-- end

-- a = {}
-- a["key"] = "value"
-- key = 10
-- a[key] = 22
-- a[key] = a[key] + 11
-- for k, v in pairs(a) do
--     print(k .. " : " .. v)
-- end

-- function anonymous(tab, fun)
--     for k, v in pairs(tab) do
--         print(fun(k, v))
--     end
-- end
-- tab = { key1 = "val1", key2 = "val2" }
-- anonymous(tab, function(key, val)
--     return key .. " = " .. val
-- end)

 
-- days = {"Suanday","Monday","Tuesday","Wednesday",
-- 		"Thursday","Friday","Saturday"}  
-- for i,v in ipairs(days) do  
-- 	print(v) 
-- end 

-- --[[ 变量定义 --]]
-- a = 10
-- --[[ 执行循环 --]]
-- repeat
--    print("a的值为:", a)
--    a = a + 1
-- until( a > 15 )

-- function average(...)
--    result = 0
--    local arg={...}
--    for i,v in ipairs(arg) do
--       result = result + v
--    end
--    print("总共传入 " .. #arg .. " 个数")
--    print("\a")
--    return result/#arg
-- end

-- print("平均值为",average(10,5,3,4,5,6))


-- a=[===[
-- [[aaa]]
-- ]===]

-- print(a)


-- function square(iteratorMaxCount,currentNumber)
--    if currentNumber<iteratorMaxCount
--    then
--       currentNumber = currentNumber+1
--    return currentNumber, currentNumber*currentNumber
--    end
-- end

-- for i,n in square,3,0
-- do
--    print(i,n)
-- end

-- io.write("这是一个公有函数！\n")

-- print(package.path)
-- a={"1","2","3"}
-- print(a)

-- coroutine_test.lua 文件
-- co = coroutine.create(
--     function(i)
--         print(i);
--     end
-- )
 
-- coroutine.resume(co, 1)   -- 1
-- print(coroutine.status(co))  -- dead
 
-- print("----------")
 
-- co = coroutine.wrap(
--     function(i)
--         print(i);
--     end
-- )
 
-- co(1)
 
-- print("----------")
 
-- co2 = coroutine.create(
--     function()
--         for i=1,10 do
--             print(i)
--             if i == 3 then
--                 print(coroutine.status(co2))  --running
--                 print(coroutine.running()) --thread:XXXXXX
--             end
--             coroutine.yield()
--         end
--     end
-- )
 
-- coroutine.resume(co2) --1
-- coroutine.resume(co2) --2
-- coroutine.resume(co2) --3
 
-- print(coroutine.status(co2))   -- suspended
-- print(coroutine.running())
 
-- print("----------")


-- function myfunction ()
-- 	print(debug.traceback("Stack trace"))
-- 	print(debug.getinfo(1))
-- 	print("Stack trace end")
-- 	return 10
-- end
-- myfunction ()
-- print(debug.getinfo(1))

-- kb = collectgarbage("count")
-- print("lua 使用的内存：" .. kb .. "k")

-- -- Meta class
-- Shape = {area = 0}

-- -- 基础类方法 new
-- function Shape:new (o,side)
--   o = o or {}
--   setmetatable(o, self)
--   self.__index = self
--   side = side or 0
--   self.area = side*side;
--   return o
-- end

-- -- 基础类方法 printArea
-- function Shape:printArea ()
--   print("面积为 ",self.area)
-- end

-- -- 创建对象
-- myshape = Shape:new(nil,10)

-- myshape:printArea()

-- MyClass = {className="myClass"}
-- function MyClass:new(o)
--   o = o or {}
--   setmetatable(o,self)
--   self.__index = self
--   return o
-- end

-- function MyClass:setClassName(name)
--   self.className = name
-- end

-- function MyClass:getClassName()
--   return self.className
-- end

-- newClass = MyClass:new(nil)
-- newClass:setClassName("newClass")
-- print(newClass:getClassName())

-- co = coroutine.create(function ()
-- 	print("coroutine start")
-- 	i = 1
-- 	while(i < 100) do
-- 		i = i + 1
-- 	print(coroutine.status(co))
-- 	end
-- 	print("coroutine finish") 
-- end)

-- print(coroutine.status(co))
-- coroutine.resume(co)
-- print(coroutine.status(co))

-- a = {}
-- print(#a)

-- a = 'a"problematic" \\string'
-- print(string.format("%q",a))

-- for n in pairs(_G) do print(n) end
-- print(_VERSION)

-- math.randomseed(os.time())
-- for i=1,5 do
-- 	print(math.random(6))
-- end

-- a="abcdefg"
-- print(string.sub(a,2,-2))
-- print(string.byte(a,1,4))

-- b="a a a abbbb"
-- r,n = string.gsub(b," "," ")
-- print(r)
-- print(n)
--mPath = package.path
-- mPath = string.gsub(package.path, ";" ,"\n")
-- print(package.path)
--print(string.gsub("aaaaa","a","%a"))
--print(string.gsub("cccccaaa","%.","a"))

-- s = [[then he said:"it's all right"!]]
-- q = string.match(s,"[\"](.-)[\"]")
-- print(q)
--print(os.date())
--for n in pairs(_G) do print(n) end
--debug.sethook(print,"l")
-- function sDebug()
-- 	mDebug()
-- end
-- function mDebug()
-- 	for d,v in pairs(debug.getinfo(2,"Sn")) do 
-- 		print(d,v) 
-- 	end
-- end

-- mDebug()
-- sDebug()
-- --print(math.huge)
-- print(math.huge)
-- a = {}
-- b = {}
-- setmetatable(a,b)
-- print(getmetatable(a));

-- print(select("3","a","b","c"))
-- a = {1,2,3,["4"]=123}
-- b = {__tostring = function (a) 
-- 	for k,v in pairs(a) do
-- 		local vv = tostring(v)
-- 		print(vv,type(vv)) 
-- 	end
-- end,
-- }
-- setmetatable(a,b)
-- tostring(a)

-- a = getmetatable("string")
-- type(a)
-- for k,v in pairs(a) do
-- 	print(k,v)
-- end

-- newindex={}
-- newindexmt={}
-- newindexmt.__index=function ()
-- 	return "null"
-- end
-- setmetatable(newindex,newindexmt)
-- print(newindex[1],newindex[2])

-- Shape = {area = 0}
-- function Shape:new(o)
-- 	o = o or {}
-- 	setmetatable(o, self)
-- 	self.__index = self
-- 	for k,v in pairs(self) do 
-- 		print(k, v)
-- 	end
-- 	return o
-- end

-- function Shape:setArea(area)
-- 	self.area = area
-- end

-- function Shape:getArea()
-- 	print(self)
-- 	return self.area
-- end
-- mShape = Shape:new()
-- print(mShape)
-- --print(type(mShape))
-- mShape:setArea(100)
-- marea = mShape:getArea()
-- print(marea)
-- mShape2 = Shape:new()
-- print(mShape2)


-- mShape2:setArea(200)
-- marea = mShape2:getArea()
-- print(marea)

-- print(string.match("aaaHello", "()Hello"))

-- function expandTabs (s,tab )
--   tab = tab or 8
--   local corr = 0
--   s= string.gsub(s,"()\t",function(p)
--   	print(p)
--     local sp = tab - (p -1 + corr)%tab
--     corr = corr -1 + sp
--     print(corr)
--     return string.rep("-",sp)
--   end)
--   return s
-- end
-- print("a\tsa,\tan.\t")
-- print(expandTabs("a\tsa,\tan.\t"))

-- local f = assert(io.open("/etc/passwd", "r"))
-- local t  = f:read("*all")
-- f:close()
-- print(t)
-- local f = assert(io.open("/etc/passwd", "r"))
-- t = f:read("*line")
-- print(t)
-- t = f:read("*line")
-- while t~=nil do
--  	print(t)
--  	t = f:read("*line")
-- end
-- for line in io.lines("/etc/passwd") do
-- 	print(line)
-- end

--print(arg[0], arg[1], arg[2], arg[-1], arg[-2])
-- function foo(...)
-- 	for i = 1, select('#', ...) do
-- 		local arg = select(i, ...)
-- 		print(i, arg)
-- 	end
-- end

-- foo("a", "b", "c")
-- function derivative(f, delta)
-- 	delta = delta or 1e-4
-- 	return function (x)
-- 		print(x)
-- 		return (f(x+delta)-f(x))/delta
-- 	end
-- end

-- c = derivative(math.sin)
-- print(math.cos(10), c(10), c(11))

--错误语法
-- while (t=math.sin(10)) >0 do
-- 	print(t)
-- end

-- t = {["x"]="a",["y"]="b"}
-- tm = {
-- 	__index = function ( _,k )
-- 		for i in pairs(_) do
-- 			print(type(i),i)
-- 		end
-- 		print(k)
-- 	end
-- }
-- setmetatable(t, tm)

-- print(t.z)

function func(a)
	print(a)
end

func "你好"