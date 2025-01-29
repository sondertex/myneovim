return {
  { 
    'SirVer/ultisnips',
    config = function()
      vim.g.UltiSnipsExpandTrigger = '<tab>'
      vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
      vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'
    end,
  },
    {
    'lervag/vimtex',
    config = function()
      vim.g.tex_flavor = 'latex'            -- 设置 TeX 风格为 latex
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_view_method = 'skim'
      vim.g.vimtex_view_skim_sync = 1
      vim.o.conceallevel = 1
      vim.g.tex_conceal = 'abdmg'
      vim.g.vimtex_compiler_latexmk_engines = {['_'] = '-pdflatex'}
      vim.g.vimtex_compiler_latexrun_engines = {['_'] = 'pdflatex'}
      vim.g.vimtex_compiler_latexmk = {
      continuous = 0, -- 禁用连续编译模式
      }
    end,   
  },
    {
        "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      enabled = true, -- 自动保存功能是否启用
      execution_message = {
        message = function() return "" end, -- 不显示保存提示
      },
      events = {"InsertLeave"}, -- 在离开插入模式和文本更改时保存
      conditions = {
        exists = true,
        modifiable = true,
      },
    })
  end,
  },

    {
    'smoka7/hop.nvim',
    config = function()
      -- 初始化 Hop.nvim
      require'hop'.setup({
        keys = 'etovxqpdygfblzhckisuran',  -- 自定义的跳转键位
      })
    end,
  },
    {"blink.cmp", enabled = false}, 
    {"nvim-treesitter", enabled = false},
    {"nvim-treesitter-textobjects", enabled = false}, 
    {"mini.ai", enabled = false},
    {"flash.nvim", enabled = false}, 
    {"gitsigns.nvim", enabled = false},
    {"noice.nvim", enabled = false},
    {"catppuccin", enabled = false},
    {"mason.nvim", enabled = false},
    {"nvim-lspconfig", enabled = false},
    {"nvim-lint", enabled = false},
    {"nvim-ts-autotag", enabled = false},
    {"plenary.nvim", enabled = false},
    {"todo-comments.nvim", enabled = false},
    {"nvim-ts-autotag", enabled = false},
    {"ts-comments.nvim", enabled = false},

}
