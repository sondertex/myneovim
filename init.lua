-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
------------------

-- neovide

------------------
if vim.g.neovide then
  vim.g.neovide_refresh_rate = 120
  vim.opt.guifont = "JetBrainsMono Nerd Font:h13"
end

vim.g.neovide_opacity = 0.9  -- 设置透明度
vim.g.neovide_floating_blur = true
vim.opt.wrap = true
vim.opt.cursorline = false
vim.g.vimtex_fold_enabled = 0
vim.g.vimtex_quickfix_enabled = 1
vim.g.vimtex_indent_enabled = 0
vim.g.vimtex_matchparen_enabled = 0
vim.opt.autoindent = false
vim.opt.smartindent = false
vim.opt.cindent = false

vim.api.nvim_create_autocmd("FileType", {
    pattern = "tex",
    callback = function()
        vim.opt_local.indentexpr = ""
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

------------------

-- autosync

------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "plugins/*.lua",
  callback = function()
    vim.cmd("Lazy sync")
    vim.notify("Lazy sync executed", vim.log.levels.INFO)
  end,
})











