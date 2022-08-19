-- 把 Table 当作对象
Student = {id = 100, name = "Michael"}
function Student.toString1()
    local s = "Name:" .. Student.name .. " id:" .. Student.id
    print(s)
    return s
end

function Student.toString2(self)
    local s = "Name:" .. self.name .. " id:" .. self.id
    print(s)
    return s
end

function Student:toString3()
    local s = "Name:" .. self.name .. " id:" .. self.id
    print(s)
    return s
end

Student.toString1()
Student.toString2(Student)
Student:toString3()

-- 类的实现
function Student:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self -- 优先在当前对象中查找操作,如果没有,去原型中查找
    return o
end

student1 = Student:new({id = 200, name = "Tom"})
student1:toString3()
student2 = Student:new()
student2:toString3()
