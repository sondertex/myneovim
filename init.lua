-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
------------------

-- neovide

------------------
if vim.g.neovide then
  vim.g.neovide_refresh_rate = 120
  vim.opt.guifont = "JetBrainsMono Nerd Font:h13"
end

vim.g.neovide_opacity = 1  -- 设置透明度
vim.opt.wrap = true
vim.opt.cursorline = false
vim.g.vimtex_fold_enabled = 0
vim.g.vimtex_quickfix_enabled = 1
vim.g.vimtex_indent_enabled = 0
vim.g.vimtex_matchparen_enabled = 0
vim.opt.autoindent = false
vim.opt.smartindent = false
vim.opt.cindent = false

------------------

-- lualine

------------------
require('lualine').setup({
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {''}, -- 空白
  }
})











