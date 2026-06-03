local function ColorNeovim()
  local ok, themer = pcall(require, "themer")
  if not ok then
    vim.notify("themer.lua is not installed", vim.log.levels.WARN)
    return
  end

  local styles = {}

  local syntax_elements = {
    "function",
    "functionbuiltin",
    "variable",
    "variableBuiltIn",
    "parameter",
    "include",
    "identifier",
    "keyword",
    "keywordBuiltIn",
    "struct",
    "string",
    "field",
    "type",
    "typeBuiltIn",
    "property",
    "comment",
    "punctuation",
    "constructor",
    "operator",
    "constant",
    "constantBuiltIn",
    "todo",
    "character",
    "conditional",
    "number",
    "statement",
    "uri",
  }

  for _, name in ipairs(syntax_elements) do
    styles[name] = { style = "italic" }
  end

  themer.setup({
    colorscheme = "kurai",
    transparent = true,
    dim_inactive = true,
    terminal_colors = true,
    styles = styles,
  })

  vim.diagnostic.config({
    virtual_text = {
      spacing = 2,
      prefix = "▎",
    },
    underline = true,
    signs = true,
    severity_sort = true,
  })

  local highlights = {
    DiagnosticVirtualTextError = { fg = "#ff6c6b", italic = true },
    DiagnosticVirtualTextWarn = { fg = "#ECBE7B", italic = true },
    DiagnosticVirtualTextInfo = { fg = "#51afef", italic = true },
    DiagnosticVirtualTextHint = { fg = "#98be65", italic = true },

    LineNrAbove = { fg = "#c0c0c0" },
    LineNrBelow = { fg = "#c0c0c0" },
    CursorLineNr = { fg = "#ffffff", bold = true },
    CursorLine = { bg = "#2a2a2a" },

    StatusLine = { bold = true },

    NormalFloat = { bg = "NONE" },
    FloatBorder = { fg = "#44475a", bg = "NONE" },
    FloatTitle = { fg = "#c0c0c0", italic = true },
    PmenuBorder = { fg = "#44475a", bg = "NONE" },

    TelescopeNormal = { bg = "NONE" },
    TelescopePromptNormal = { bg = "NONE" },
    TelescopeResultsNormal = { bg = "NONE" },
    TelescopePreviewNormal = { bg = "NONE" },

    TelescopeBorder = { fg = "#44475a", bg = "NONE" },
    TelescopePromptBorder = { fg = "#44475a", bg = "NONE" },
    TelescopeResultsBorder = { fg = "#44475a", bg = "NONE" },
    TelescopePreviewBorder = { fg = "#44475a", bg = "NONE" },

    TelescopeTitle = { fg = "#c0c0c0", bg = "NONE", italic = true },
    TelescopePromptPrefix = { fg = "#ffffff", bold = true },
    TelescopeMatching = { fg = "#ffffff" },
    TelescopeResultsIdentifier = { fg = "#ffffff", bg = "NONE" },
    TelescopeSelection = { bg = "#2a2a2a", fg = "#ffffff", bold = true },
    TelescopeSelectionCaret = { fg = "#ffffff", bold = true },

    CmpItemAbbrMatch = { bold = true },
    CmpItemKindFunction = { italic = true },

    GitSignsAdd = { italic = true },
    GitSignsChange = { italic = true },
    GitSignsDelete = { italic = true },
  }

  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

ColorNeovim()



