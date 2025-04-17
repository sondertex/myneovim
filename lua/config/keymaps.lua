local map = vim.keymap.set
-- for hop.nvim
local hop = require("hop")
local directions = require("hop.hint").HintDirection
local positions = require("hop.hint").HintPosition
-- leader a: 向下跳转到某个单词词头
map({ "n", "v" }, "<leader>a", function()
  hop.hint_words({ direction = directions.AFTER_CURSOR })
end, { desc = "Go to next any begining of words" })
-- leader s:向下跳转到某个单词词尾
map({ "n", "v" }, "<leader>s", function()
  hop.hint_words({ direction = directions.AFTER_CURSOR, hint_position = positions.END })
end, { desc = "Go to next any end of words" })
-- leader q:向上跳转到某个单词词头
map({ "n", "v" }, "<leader>q", function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR })
end, { desc = "Go to previous any begining of words" })
-- leader w:向上跳转到某个单词词尾
map({ "n", "v" }, "<leader>w", function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR, hint_position = positions.END })
end, { desc = "Go to previous any end of words" })
-- leader j:向上跳转到某行开头(没什么大用)
map({ "n", "v" }, "<leader>j", function()
  hop.hint_lines({ direction = directions.BEFORE_CURSOR })
end, { desc = "Go to line end of the previous line" })
-- leader k:向下跳转到某行开头(没什么大用)
map({ "n", "v" }, "<leader>k", function()
  local current_line = vim.fn.line('.')
  hop.hint_lines({ direction = directions.AFTER_CURSOR, current_line = current_line + 1 })
end, { desc = "Go to line end of the next line" })
-- leader r: 跳转回跳转前的位置
vim.keymap.set('n', '<leader>r', '<C-o>', { desc = 'Jump back (like Ctrl+o)' })

-- leader c: 快速复制粘贴
vim.keymap.set("n", "<leader>c", function()
  local original_pos = vim.fn.getpos(".")

  hop.hint_char1({
    direction = directions.BEFORE_CURSOR,
  })

  vim.cmd("normal! v")

  hop.hint_char1({
    direction = directions.AFTER_CURSOR,
  })

  vim.cmd("normal! y") -- 精准复制，不带多余换行

  vim.fn.setpos(".", original_pos)

  vim.cmd("normal! p")
end, { desc = "Hop and copy math env without newline" })

-- leader f: 运行当前python

vim.keymap.set("n", "<leader>f", function()
  local file = vim.fn.expand("%")
  vim.cmd("TermExec cmd='python3 " .. file .. "'")
end, { desc = "Run Python file in terminal" })






