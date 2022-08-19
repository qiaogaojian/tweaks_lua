require("config")
require("utils/Log")

teamArray = { 100001, 10012 }

log:d(teamArray)
-- for i = 1, table.getn(teamArray) do  -- lua5.1之前的用法
--     log:d(teamArray[i])
-- end
for i = 1, #teamArray do
    log:d(teamArray[i])
end