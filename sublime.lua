#!/usr/bin/env lua 

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
co = coroutine.create(
    function(i)
        print(i);
    end
)
 
coroutine.resume(co, 1)   -- 1
print(coroutine.status(co))  -- dead
 
print("----------")
 
co = coroutine.wrap(
    function(i)
        print(i);
    end
)
 
co(1)
 
print("----------")
 
co2 = coroutine.create(
    function()
        for i=1,10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))  --running
                print(coroutine.running()) --thread:XXXXXX
            end
            coroutine.yield()
        end
    end
)
 
coroutine.resume(co2) --1
coroutine.resume(co2) --2
coroutine.resume(co2) --3
 
print(coroutine.status(co2))   -- suspended
print(coroutine.running())
 
print("----------")


function myfunction ()
	print(debug.traceback("Stack trace"))
	print(debug.getinfo(1))
	print("Stack trace end")
	return 10
end
myfunction ()
print(debug.getinfo(1))

kb = collectgarbage("count")
print("lua 使用的内存：" .. kb .. "k")

-- Meta class
Shape = {area = 0}

-- 基础类方法 new
function Shape:new (o,side)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  side = side or 0
  self.area = side*side;
  return o
end

-- 基础类方法 printArea
function Shape:printArea ()
  print("面积为 ",self.area)
end

-- 创建对象
myshape = Shape:new(nil,10)

myshape:printArea()

MyClass = {className="myClass"}
function MyClass:new(o)
  o = o or {}
  setmetatable(o,self)
  self.__index = self
  return o
end

function MyClass:setClassName(name)
  self.className = name
end

function MyClass:getClassName()
  return self.className
end

newClass = MyClass:new(nil)
newClass:setClassName("newClass")
print(newClass:getClassName())

