-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
------------------

-- neovide

------------------
if vim.g.neovide then
  vim.opt.guifont = { "0xProto Nerd Font", ":h13" } -- 字体和大小
  vim.g.neovide_transparency = 1              -- 背景透明度
  vim.g.neovide_cursor_vfx_mode = "railgun"         -- 光标特效
end


vim.o.wrap = true        -- 启用换行
vim.o.linebreak = true   -- 避免单词中间断行
vim.o.showbreak = "↪ "   -- 显示换行提示符
vim.cmd("syntax on")  -- 启用语法高亮
vim.api.nvim_set_hl(0, "Conceal", { fg = "#85D3F2" }) -- 代码高亮
vim.api.nvim_set_hl(0, "Visual", { bg = "#FF6077", fg = "#FFFFFF" }) -- vision模式选中颜色


------------------

-- 自动保存

------------------
-- 保存并恢复光标位置

vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    -- 使用 vim.defer_fn 确保文件完全加载后恢复光标
    vim.defer_fn(function()
      local mark = vim.api.nvim_buf_get_mark(0, '"')
      local line_count = vim.api.nvim_buf_line_count(0)
      if mark[1] > 0 and mark[1] <= line_count then
        pcall(vim.api.nvim_win_set_cursor, 0, mark)
      end
    end, 100) -- 延迟 10 毫秒执行
  end,
})




------------------

-- lualine

------------------

require('lualine').setup {
  sections = {
    lualine_a = { 'mode' }, -- A 显示模式
    lualine_b = { 'filename' }, -- B 显示文件名
    lualine_c = { '' }, -- C 为空白
  },
}











