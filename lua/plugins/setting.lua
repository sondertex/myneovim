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
      vim.o.conceallevel = 0
      vim.g.vimtex_compiler_latexmk_engines = {['_'] = '-xelatex'}
      vim.g.vimtex_compiler_latexrun_engines = {['_'] = 'xelatex'}
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
    "folke/flash.nvim",
    opts = {},  -- 默认配置
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash Jump" },
    },
    },
    {"blink.cmp", enabled = false},
    {"mason-lspconfig.nvim", enabled = false},
    {"nvim-treesitter", enabled = false},
    {"nvim-treesitter-textobjects", enabled = false}, 
    {"mini.ai", enabled = false},
    {"gitsigns.nvim", enabled = false},
    {"gitsigns.nvim", enabled = false},
    {"mason.nvim", enabled = false},
    {"nvim-lspconfig", enabled = false},
    {"nvim-lint", enabled = false},
    {"nvim-ts-autotag", enabled = false},
    {"todo-comments.nvim", enabled = false},
    {"nvim-ts-autotag", enabled = false},
    {"ts-comments.nvim", enabled = false},
    {"neo-tree.nvim", enabled = false},
    {"persistent.nvim", enabled = false},

}
