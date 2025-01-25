-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
------------------

-- neovide

------------------
if vim.g.neovide then
  vim.opt.guifont = { "FiraCode Nerd Font", ":h13" } -- 字体和大小
  vim.g.neovide_transparency = 0.85              -- 背景透明度
  vim.g.neovide_cursor_vfx_mode = "railgun"         -- 光标特效
end

vim.opt.swapfile = false 
vim.opt.writebackup = false 


vim.cmd("set wrap")  -- 按行宽换行
vim.cmd("syntax on")  -- 启用语法高亮

vim.api.nvim_set_hl(0, "Conceal", { fg = "#85D3F2" }) -- 代码高亮

vim.g.neovide_window_blurred = true  -- 毛玻璃效果

vim.api.nvim_set_hl(0, "Visual", { bg = "#FF6077", fg = "#FFFFFF" }) -- vision模式





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








