-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
------------------

-- neovide

------------------
if vim.g.neovide then
  vim.opt.guifont = { "FiraCode Nerd Font", ":h13" } -- 字体和大小
  vim.g.neovide_transparency = 0.6              -- 背景透明度
  vim.g.neovide_cursor_vfx_mode = "railgun"         -- 光标特效
end

vim.opt.swapfile = false
vim.opt.writebackup = false

vim.cmd("set wrap")
-- 启用语法高亮
vim.cmd("syntax on")


vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local row, col = unpack(vim.api.nvim_buf_get_mark(0, '"'))
    if row > 0 and row <= vim.api.nvim_buf_line_count(0) then
      vim.api.nvim_win_set_cursor(0, {row, col})
    end
  end,
})

require'lualine'.setup {
    options = {
    theme = 'sonokai'
    }
    }

vim.api.nvim_set_hl(0, "Conceal", { fg = "#85D3F2" })

vim.g.neovide_show_border = true --边框
vim.g.neovide_window_blurred = true  --毛玻璃效果





