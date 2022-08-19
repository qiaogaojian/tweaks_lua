print(type("Hello Lua"))
print(type(100))
print(type(100.0))
print(type(true))
print(type(print))
print(type(nil))
print(type({x = 10, y = 20}))

-- Convert to string
print("num: " .. tostring(10.1))

-- Convert to number
print(tonumber({x = 10}))
print(tonumber("066"))
print(tonumber("0xF"))
print(tonumber("ff",16))