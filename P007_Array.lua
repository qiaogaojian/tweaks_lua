local studentList = {"����", "����", "����"}

-- ��������Table�ı���
for i, v in ipairs(studentList) do
    print(i, v)
end

-- ��ͨ��
for i, v in pairs(studentList) do
    print(i, v)
end

-- ��������Table�ı���
for i = 1, #studentList do
    print(i, studentList[i])
end
