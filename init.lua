-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
------------------

-- neovide

------------------

if vim.g.neovide then
  vim.opt.guifont = { "0xProto Nerd Font", ":h12" } 
  vim.g.neovide_cursor_vfx_duration = 0.01  -- 设置更短的持续时间来加快动画
  vim.g.neovide_fully_buffered = true  -- 开启完全缓冲
end


vim.o.wrap = true        -- 启用换行
vim.o.linebreak = true   -- 避免单词中间断行
vim.cmd("syntax on")  -- 启用语法高亮
    
------------------

-- lualine

------------------
require('lualine').setup({
  sections = {
    lualine_c = {
      { ''},  -- 仅显示文件名，隐藏路径
    },
  },
})

















