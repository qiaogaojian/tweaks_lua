local Log = {}
local count = 0;
local time = os.date("%Y-%m-%d %H:%M:%S");
local isDebug = true

function Log:d(msg)
    if not isDebug then
        return
    end
    count = count + 1
    time = os.date("%Y-%m-%d %H:%M:%S");
    print("\n" .. tostring(count) .. ". " .. tostring(time) .. ":" .. "\n-------------------------------------------------Debug-------------------------------------------------")
    print(Log:ToStringEx(msg) .. "\n")
end

function Log:i(msg)
    if not isDebug then
        return
    end
    count = count + 1
    time = os.date("%Y-%m-%d %H:%M:%S");
    print("\n" .. tostring(count) .. ". " .. tostring(time) .. ":" .. "\n=================================================Info==================================================")
    print(Log:ToStringEx(msg) .. "\n")
end

function Log:w(msg)
    if not isDebug then
        return
    end
    count = count + 1
    time = os.date("%Y-%m-%d %H:%M:%S");
    print("\n" .. tostring(count) .. ". " .. tostring(time) .. ":" .. "\n************************************************Warning************************************************")
    print(Log:ToStringEx(msg) .. "\n")
end

function Log:e(msg)
    if not isDebug then
        return
    end
    count = count + 1
    time = os.date("%Y-%m-%d %H:%M:%S");
    print("\n" .. tostring(count) .. ". " .. tostring(time) .. ":" .. "\n#################################################Error#################################################")
    print(tostring(count) .. ". " .. tostring(time) .. ":" .. Log:ToStringEx(msg) .. "\n")
end

function Log:ToStringEx(value)
    if type(value) == "table" then
        return Log:TableToStr(value)
    elseif type(value) == "string" then
        return "'" .. value .. "'"
    else
        return tostring(value)
    end
end

function Log:TableToStr(t)
    if t == nil then
        return ""
    end
    local retstr = "{"

    local i = 1
    for key, value in pairs(t) do
        local signal = ","
        if i == 1 then
            signal = ""
        end

        if key == i then
            retstr = retstr .. signal .. Log:ToStringEx(value)
        else
            if type(key) == "number" or type(key) == "string" then
                retstr = retstr .. signal .. "[" .. Log:ToStringEx(key) .. "]=" .. Log:ToStringEx(value)
            else
                if type(key) == "userdata" then
                    retstr =                    retstr ..
                    signal .. "*s" .. Log:TableToStr(getmetatable(key)) .. "*e" .. "=" .. Log:ToStringEx(value)
                else
                    retstr = retstr .. signal .. key .. "=" .. Log:ToStringEx(value)
                end
            end
        end

        i = i + 1
    end

    retstr = retstr .. "}"
    return retstr
end

return Log