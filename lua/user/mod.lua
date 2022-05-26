-- Copyright (c) 2022 Elton Zheng
-- 
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local M = {}

local function sayMyName()
  print('Hrunkner')
end

function M.sayHello()
  print('Why hello there')
  sayMyName()
end

print('this is a mod.')

return M
