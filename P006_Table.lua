student1 = {id = "100", name = "Tony", age = 18}
student2 = {["id"] = "100", ["name"] = "Tony", ["age"] = 18}

print(string.format("stuent1 ID:%s Name:%s Age:%d", student1.id, student1["name"], student1.age))
print(string.format("stuent2 ID:%s Name:%s Age:%d", student2.id, student2["name"], student2.age))

for i,v in pairs(student1) do
    print(i,v)
end