return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  opts = {
    flavour = "mocha", -- latte, frappe, macchiato, mocha
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
        texCmdMathEnv  = { fg = "#f92472" },
        texOpt = { fg = "#ffffff"},
        texCmdPart = { fg = "#67d8ef"},
        texCmdEnv = { fg = "#f92472"},
        texMathSymbol = { fg = "#f92472"},
        texCmdGreek = { fg = "#f92472"},
        texMathOper = { fg = "#f92472"},
        texCmdEnvM = { fg = "#f92472"},
        texPartArgTitle = { fg = "#ffffff"},
        texMathEnvArgName = { fg = "#F99421"},
        texEnvArgName = { fg = "#F99421"},
        texMathZoneTD = { fg = "#ffffff"},
        texMathGroup = { fg = "#ffffff"},
        texMathZoneEnv = { fg = "#ffffff"},
        texMathDelim  = { fg = "#ffffff"},
        texMathStyleConcArg = { fg = "#ffffff"},
        texMathSuperSub = { fg = "#ffffff"},
        texMathZoneTI = { fg = "#ffffff"},
        texMathArg = { fg = "#ffffff"},
        texDelim = { fg = "#ffffff"},
        Normal = { fg = "#ffffff"},
        texTabularChar = { fg = "#ac80ff"},
        texSpecialChar = { fg = "#ac80ff"},
        texMathSuper = { fg = "#ac80ff"},
        texMathSub = { fg = "#ac80ff"},
        texCmdStyleItal = { fg = "#67d8ef"},
        texMathCmd = { fg = "#67d8ef"},
        texMathCmdStyle = { fg = "#67d8ef"},
        texCmd = { fg = "#67d8ef"},
        texMathDelimZoneTD = { fg = "#e7db74"},
        texMathDelimZoneTI = { fg = "#e7db74"},
      }
    end,
  },
  
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
}








