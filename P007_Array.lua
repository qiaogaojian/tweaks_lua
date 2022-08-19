local studentList = {"张三", "李四", "王五"}

-- 不能用于Table的遍历
for i, v in ipairs(studentList) do
    print(i, v)
end

-- 最通用
for i, v in pairs(studentList) do
    print(i, v)
end

-- 不能用于Table的遍历
for i = 1, #studentList do
    print(i, studentList[i])
end
