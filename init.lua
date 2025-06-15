-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
------------------

-- neovide

------------------
if vim.g.neovide then
  vim.opt.guifont = "JetBrainsMono Nerd Font:h12"
end

vim.g.neovide_opacity = 0.95
vim.g.neovide_window_blurred = false
vim.opt.wrap = false
vim.opt.cursorline = false
vim.g.vimtex_fold_enabled = 0
vim.g.vimtex_quickfix_enabled = 1
vim.o.number = false
vim.o.relativenumber = false 
------------------

-- lualine

------------------
require('lualine').setup {
  sections = {
    lualine_a = {'mode'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
}


local custom_horizon = require('lualine.themes.horizon')
custom_horizon.normal.c.bg = '#222436'
custom_horizon.insert.c.bg = '#222436'
custom_horizon.visual.c.bg = '#222436'
custom_horizon.visual.a.bg = '#ac80ff'  -- 橘黄色背景
custom_horizon.normal.a.bg = '#f92472'  -- 橘黄色背景
custom_horizon.insert.a.bg = '#67d8ef'  -- 橘黄色背景

require('lualine').setup {
  options = {
    theme = custom_horizon, -- 👈 注意这里不是字符串
  },
}










