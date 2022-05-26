-- Copyright (c) 2022 Elton Zheng
-- 
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local mod = require('lua.user.mod') -- 运行文件mod.lua.

-- 下面的代码可以工作，因为在这里mod = lua.user.mod中的 M：
mod.sayHello()  -- Says hello to Hrunkner.

-- 这是错误的；sayMyName只在mod.lua中存在：
-- mod.sayMyName()  -- 错误

-- require返回的值会被缓存，所以一个文件只会被运行一次， 
-- 即使它被require了多次。
local mod = require('lua.user.mod')

local f = loadfile('lua/user/mod.lua')
f()