-- ���� lua �鼶������
function test_no_closure()
    print(x)
    if (true) then
        local x = 2;
        print(x)
    end
    print(x)
end

test_no_closure()