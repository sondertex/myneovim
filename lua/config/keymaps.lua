local map = vim.keymap.set
-- for hop.nvim
local hop = require("hop")
local directions = require("hop.hint").HintDirection
local positions = require("hop.hint").HintPosition
-- leader leader w
map({ "n", "v" }, "<leader><leader>a", function()
  hop.hint_words({ direction = directions.AFTER_CURSOR })
end, { desc = "Go to next any begining of words" })
-- leader leader e
map({ "n", "v" }, "<leader><leader>s", function()
  hop.hint_words({ direction = directions.AFTER_CURSOR, hint_position = positions.END })
end, { desc = "Go to next any end of words" })
-- leader leader b
map({ "n", "v" }, "<leader><leader>q", function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR })
end, { desc = "Go to previous any begining of words" })
-- leader leader v
map({ "n", "v" }, "<leader><leader>w", function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR, hint_position = positions.END })
end, { desc = "Go to previous any end of words" })
-- leader leader l

-- leader leader l
map({ "n", "v" }, "<leader><leader>k", function()
  hop.hint_camel_case({ direction = directions.AFTER_CURSOR })
end, { desc = "Go to next any begining of words considering camel case." })
-- leader leader h
map({ "n", "v" }, "<leader><leader>j", function()
  hop.hint_camel_case({ direction = directions.BEFORE_CURSOR })
end, { desc = "Go to next any begining of words considering camel case." }) 

-- leader leader j
map({ "n", "v" }, "<leader><leader>i", function()
  hop.hint_lines({ direction = directions.AFTER_CURSOR })
end, { desc = "Go to line below" })
-- leader leader k
map({ "n", "v" }, "<leader><leader>u", function()
  hop.hint_lines({ direction = directions.BEFORE_CURSOR })
end, { desc = "Go to line above" })

