
require'hop'.setup {
  quit_key = '<SPC>',
  -- 自定义跳转模式，可以选择跳转到单词、字符、行等
  hint = {
    show_line = true,  -- 显示行号
    multi_windows = true,  -- 支持多窗口跳转
  },
  -- 如果你喜欢不同的跳转行为，可以配置不同的按键绑定
}

local map = vim.keymap.set
-- for hop.nvim
local hop = require("hop")
local directions = require("hop.hint").HintDirection
local positions = require("hop.hint").HintPosition
-- leader leader w
map({ "n", "v" }, "<leader><leader>w", function()
  hop.hint_words({ direction = directions.AFTER_CURSOR })
end, { desc = "Go to next any begining of words" })
-- leader leader e
map({ "n", "v" }, "<leader><leader>e", function()
  hop.hint_words({ direction = directions.AFTER_CURSOR, hint_position = positions.END })
end, { desc = "Go to next any end of words" })
-- leader leader b
map({ "n", "v" }, "<leader><leader>b", function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR })
end, { desc = "Go to previous any begining of words" })
-- leader leader v
map({ "n", "v" }, "<leader><leader>v", function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR, hint_position = positions.END })
end, { desc = "Go to previous any end of words" })
-- leader leader l
map({ "n", "v" }, "<leader><leader>l", function()
  hop.hint_camel_case({ direction = directions.AFTER_CURSOR })
end, { desc = "Go to next any begining of words considering camel case." })
-- leader leader h
map({ "n", "v" }, "<leader><leader>h", function()
  hop.hint_camel_case({ direction = directions.BEFORE_CURSOR })
end, { desc = "Go to next any begining of words considering camel case." })

-- suppress useless warning here
---@diagnostic disable: missing-fields
-- leader leader a
map({ "n", "v" }, "<leader><leader>a", function()
  hop.hint_anywhere({})
end, { desc = "Go to any char" })
---@diagnostic enable: missing-fields

-- leader leader j
map({ "n", "v" }, "<leader><leader>j", function()
  hop.hint_lines({ direction = directions.AFTER_CURSOR })
end, { desc = "Go to line below" })
-- leader leader k
map({ "n", "v" }, "<leader><leader>k", function()
  hop.hint_lines({ direction = directions.BEFORE_CURSOR })
end, { desc = "Go to line above" })

map("n", "]t", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "[t", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

map("n", "<leader>v", function()
  require("mini.bufremove").delete(0, true)
end, { desc = "Close current buffer" })
