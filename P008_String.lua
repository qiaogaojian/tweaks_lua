local s1 = "Hello Lua"
local s2 = " ÄãºÃ Lua"
local s = s1 .. s2

print(s)
print(string.len(s)) -- ×Ö·û´®³¤¶È
print(string.sub(s, 1, 5)) --×Ö·û´®½ØÈ¡
print(string.lower(s))
print(string.upper(s))
print(string.rep(s .. ",", 3))
print(string.reverse(s))
print(string.find(s, "Lua"))
print(string.format("string:%s num:%d float:%f float:%g", "string", 10, 10.1000, 10.1000))
