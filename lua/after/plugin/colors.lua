local function ColorNeovim()
    local themer          = require("themer")

    local italic          = { style = "italic" }
    local bold            = { style = "bold" }
    local under           = { style = "underline" }

    -- Syntax element styles
    local syntax_elements = {
        "function", "functionbuiltin", "variable", "variableBuiltIn", "parameter",
        "include", "identifier", "keyword", "keywordBuiltIn", "struct", "string",
        "field", "type", "typeBuiltIn", "property", "comment", "punctuation",
        "constructor", "operator", "constant", "constantBuiltIn", "todo",
        "character", "conditional", "number", "statement", "uri",
    }

    local styles          = {}
    for _, name in ipairs(syntax_elements) do
        styles[name] = italic
    end

    -- Diagnostic styles
    styles.diagnostic = {
        underline = {
            error = under,
            warn = under,
            info = under,
            hint = under,
        },
        virtual_text = {
            error = italic,
            warn = italic,
            info = italic,
            hint = italic,
        },
    }

    -- Optional: Plugin-specific styles
    styles.plugins = {
        TelescopePromptPrefix = bold,
        TelescopeSelection = bold,
        CmpItemAbbrMatch = bold,
        CmpItemKindFunction = italic,
        GitSignsAdd = italic,
        GitSignsChange = italic,
        GitSignsDelete = italic,
    }

    -- Themer setup
    themer.setup({
        colorscheme = "kurai",
        transparent = true,
        enable_installer = true,
        dim_inactive = true,    -- Dims unfocused windows
        terminal_colors = true, -- Applies theme to :terminal
        styles = styles,
        overrides = {
            -- Custom highlights (optional)
            CursorLine = { bg = "#2a2a2a" },
            StatusLine = { bold = true },
            NormalFloat = { bg = "none" },
            FloatBorder = { fg = "#999999" },
        },
    })
end

ColorNeovim()


-- Style line numbers for transparent background
vim.cmd([[
  highlight LineNrAbove guifg=#c0c0c0
  highlight LineNrBelow guifg=#c0c0c0
  highlight CursorLineNr guifg=#ffffff gui=bold
]])

-- Make floating windows transparent
vim.cmd([[
  highlight NormalFloat guibg=NONE
  highlight FloatBorder guibg=NONE
]])

vim.cmd([[
  highlight NormalFloat guibg=NONE
  highlight FloatBorder guifg=#44475a guibg=NONE
  highlight FloatTitle guifg=#c0c0c0 gui=italic
  highlight PmenuBorder guifg=#44475a guibg=NONE
]])


vim.cmd([[
  " Transparent backgrounds
  highlight TelescopeNormal guibg=NONE
  highlight TelescopePromptNormal guibg=NONE
  highlight TelescopeResultsNormal guibg=NONE
  highlight TelescopePreviewNormal guibg=NONE

  " Borders (soft gray)
  highlight TelescopeBorder guifg=#44475a guibg=NONE
  highlight TelescopePromptBorder guifg=#44475a guibg=NONE
  highlight TelescopeResultsBorder guifg=#44475a guibg=NONE
  highlight TelescopePreviewBorder guifg=#44475a guibg=NONE

  " Title and prompt prefix
  highlight TelescopeTitle guifg=#c0c0c0 guibg=NONE gui=italic
  highlight TelescopePromptPrefix guifg=#ffffff

  " Matching text inside results (like fuzzy matches)
  highlight TelescopeMatching guifg=#ffffff gui=NONE

  " 👇 File names (default text)
  highlight TelescopeResultsIdentifier guifg=#ffffff guibg=NONE gui=NONE

  " 👇 Selected file name (bold white on soft bg)
  highlight TelescopeSelection guibg=#2a2a2a guifg=#ffffff gui=bold
  highlight TelescopeSelectionCaret guifg=#ffffff gui=bold
]])



