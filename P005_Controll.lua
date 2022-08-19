-- 分支 if

local score = 80
if score < 60 then
    print("不及格")
else
    print("及格")
end

local grade
if score >= 90 then
    grade = "A"
elseif score >= 80 then
    grade = "B"
elseif score >= 70 then
    grade = "C"
elseif score >= 60 then
    grade = "D"
else
    grade = "E"
end

print(grade)

-- 循环 while repeat for

local n = 0
while n < 10 do
    n = n + 1
    print(n)
end

local i = 10
repeat
    print(i)
    i = i - 1
until i <= 0

for i = 1, 100, 10 do
    print(i)
end

for i = 1, 10 do
    print(i)
end

local nums = {1, 2, 3, 4, 5, 6}
for i, v in ipairs(nums) do
    print(i, v)
end

-- 跳转 break return
local k = 0
while true do
    k = k + 1
    if k > 10 then
        break
    end
    if k > 100 then
        return
    end

    if k % 3 == 1 then
        print(k)
    end
end
