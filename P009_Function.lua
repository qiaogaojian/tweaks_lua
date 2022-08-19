function reactangleArea(width, height)
    local area = width * height
    return area
end

-- �෵��ֵ
function calReactangle(width, height)
    local area = width * height
    local perimeter = (width + height) * 2
    return area, perimeter
end

local area = reactangleArea(3, 4)
print(area .. "\n")
local area, perimeter = calReactangle(3, 4)
print(string.format("area:%d,perimeter:%d", area, perimeter))

-- �ֲ�������ȫ�ֱ���
local globalV = 1
function foo()
    local localV = 2
    globalV = globalV + 1
    return globalV
end
foo()
print(globalV)
print(localV)

-- Ƕ�׺���
function calculate(opr, a, b)
    function add(a, b)
        return a + b
    end
    function sub(a, b)
        return a - b
    end

    local res
    if opr == "+" then
        res = add(a, b)
    else
        res = sub(a, b)
    end
    return res
end

print(calculate("-", 3, 2))

-- ���غ�������������
function rectangleArea(width, height)
    local area = width * height
    return area
end
function triangleArea(bottom, height)
    local area = bottom * height * 0.5
    return area
end

function getArea(type)
    local returnFunc
    if type == "rect" then
        returnFunc = rectangleArea
    elseif type == "triangle" then
        returnFunc = triangleArea
    else
        returnFunc = function(r)
            return math.pi * r * r
        end
    end
    return returnFunc
end

print(string.format("�� 10 �� 6,���������: %g", getArea("triangle")(10, 6)))
print(string.format("�뾶10 Բ�����: %g", getArea("circle")(10)))
