return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  opts = {
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    transparent_background = false,
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      treesitter = true,
      notify = true,
      mini = true,
      lsp_trouble = true,
      mason = true,
      noice = true,
      which_key = true,
    },
    custom_highlights = function(colors)
      return {
        texEnvArgName = { link = "String" }, 
        texMathEnvArgName  = { link = "String" }, 
        texDelim = { link = "Special" },
        texMathCmd = { link = "Operator" },
        texMathDelim = { link = "Delimiter" },
        texMathSub = { link = "Type" },
        texMathSuperSub = { link = "Delimiter" },
        texMathGroup = { link = "Type" },
        texMathZoneTD = { link = "Type" },
        texMathSuper = { link = "Type" },
        texMathArg = { link = "Type" },
        texMathZoneTI = { link = "Type" },
        texMathZoneEnv = { link = "Type" },
        texMathDelimZoneTI = { link = "Keywords" },
        texMathDelimZoneTD = { link = "Keywords" },
        texTabularChar = { link = "Function" },
        Special = { fg = "#FFFFFF" },
        String = { fg = "#fd9621", style = { "bold" } },
        Statement = { fg = "#f92472"},
        Preproc = { fg = "#f92472" },
        Delimiter = { fg = "#FFFFFF" },
        Nonetext = { fg = "#FFFFFF" },
        Operator = { fg = "#67d8ef" },
        Function = { fg = "#ac80ff" },
        Keywords = { fg = "#e7db74" },
        Type = { fg = "#a6e22c" },
        Normal = { fg = "#ffffff"},  -- 修改普通文本颜色
      }
    end,
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
}