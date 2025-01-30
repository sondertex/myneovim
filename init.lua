-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
------------------

-- neovide

------------------

if vim.g.neovide then
  vim.opt.guifont = { "0xProto Nerd Font", ":h12" } -- 字体设置
  vim.g.neovide_cursor_vfx_duration = 0.05  -- 设置更短的持续时间来加快动画
  vim.g.neovide_fully_buffered = true  -- 开启完全缓冲
end


vim.o.wrap = true        -- 启用换行
vim.o.linebreak = true   -- 避免单词中间断行
vim.cmd("syntax on")  -- 启用语法高亮
vim.cmd [[highlight Conceal guifg=#a6e3a1]]   -- 数学环境的显示公式颜色
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.fn.system("open -n -a Neovide --args --no-titlebar")
  end,
})
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













