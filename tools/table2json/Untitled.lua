
local dir = "/Users/mega/Downloads/"
local fileName = "CharacterConfig";


package.path = package.path..";"..dir.."?.lua;"

function table2json(t)

    local function serialize(tbl)
        local tmp = {}
        for k, v in pairs(tbl) do
            local k_type = type(k)
            local v_type = type(v)
            local key = (k_type == "string" and '"' .. k .. '":') or (k_type == "number" and "")
            local value =
                (v_type == "table" and serialize(v)) or (v_type == "boolean" and tostring(v)) or
                (v_type == "string" and '"' .. v .. '"') or
                (v_type == "number" and v)
            tmp[#tmp + 1] = key and value and tostring(key) .. tostring(value) or nil
        end
        if #tbl == 0 then
            return "{" .. table.concat(tmp, ",") .. "}"
        else
            return "[" .. table.concat(tmp, ",") .. "]"
        end
    end
    
    assert(type(t) == "table")
    return serialize(t)
end

--以字符串内容写入文件，成功返回 true，失败返回 false
--
--"mode 写入模式" 参数决定 io.writefile() 如何写入内容，可用的值如下：
--
---   "w+" : 覆盖文件已有内容，如果文件不存在则创建新文件
---   "a+" : 追加内容到文件尾部，如果文件不存在则创建文件
--
--此外，还可以在 "写入模式" 参数最后追加字符 "b" ，表示以二进制方式写入数据，这样可以避免内容写入不完整。
--
--**Android 特别提示:** 在 Android 平台上，文件只能写入存储卡所在路径，assets 和 data 等目录都是无法写入的。

function io.writefile(path, content, mode)
    mode = mode or "w+b"
    local file = io.open(path, mode)
    if file then
        if file:write(content) == nil then return false end
        io.close(file)
        return true
    else
        return false
    end
end




local tb = require(fileName)
local jsonString = table2json(tb)
print(io.writefile(dir..fileName..".json",jsonString,"w+"))