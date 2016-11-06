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

