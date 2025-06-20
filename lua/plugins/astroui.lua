-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "astrodark",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    palettes = {
      astrodark = {
        -- VS Code Dark Modern colors
        none = "NONE",
        syntax = {},
        ui = {
          -- Background colors matching VS Code Dark Modern
          base = "#1e1e1e", -- Main background
          inactive_base = "#252526", -- Inactive areas
          menu = "#252526", -- Menu background
          float = "#252526", -- Floating windows
          border = "#464647", -- Border color
          current_line = "#2a2d2e", -- Current line highlight
          selection = "#264f78", -- Selection background

          -- Foreground colors
          text = "#cccccc", -- Main text
          text_active = "#ffffff", -- Active text
          text_inactive = "#969696", -- Inactive text
          text_match = "#ffcc02", -- Search matches
          none_text = "#969696",

          -- Status line
          -- statusline = "#007acc",     -- Active statusline
          winbar = "#252526", -- Window bar
          tabline = "#252526", -- Tab line

          -- Tool colors
          tool = "#1e1e1e", -- Tool background
          accent = "#007acc", -- Accent color (VS Code blue)

          -- Git colors
          red = "#f14c4c", -- Error/deletion
          green = "#23d18b", -- Success/addition
          yellow = "#f5f543", -- Warning/modification
          blue = "#3794ff", -- Info
          purple = "#bc3fbc", -- Hint
          orange = "#ff8800", -- Special
          cyan = "#29b8db", -- Cyan

          -- Semantic colors
          folder = "#dcb67a", -- Folder icons
        },
      },
    },
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        -- Editor
        Normal = { fg = "#cccccc", bg = "#1e1e1e" },
        NormalFloat = { fg = "#cccccc", bg = "#252526" },
        NormalNC = { fg = "#cccccc", bg = "#1e1e1e" },

        -- Cursor and lines
        CursorLine = { bg = "#2a2d2e" },
        CursorColumn = { bg = "#2a2d2e" },
        ColorColumn = { bg = "#2a2d2e" },
        LineNr = { fg = "#858585" },
        CursorLineNr = { fg = "#cccccc", bold = true },

        -- Visual selection
        Visual = { bg = "#264f78" },
        VisualNOS = { bg = "#264f78" },

        -- Search
        Search = { fg = "#000000", bg = "#ffcc02" },
        IncSearch = { fg = "#000000", bg = "#ffcc02" },

        -- Syntax highlighting (matching VS Code Dark Modern)
        Comment = { fg = "#6a9955", italic = true },
        Constant = { fg = "#4fc1ff" },
        String = { fg = "#ce9178" },
        Character = { fg = "#ce9178" },
        Number = { fg = "#b5cea8" },
        Boolean = { fg = "#569cd6" },
        Float = { fg = "#b5cea8" },

        Identifier = { fg = "#9cdcfe" },
        Function = { fg = "#dcdcaa" },

        Statement = { fg = "#c586c0" },
        Conditional = { fg = "#c586c0" },
        Repeat = { fg = "#c586c0" },
        Label = { fg = "#c586c0" },
        Operator = { fg = "#cccccc" },
        Keyword = { fg = "#569cd6" },
        Exception = { fg = "#c586c0" },

        PreProc = { fg = "#c586c0" },
        Include = { fg = "#c586c0" },
        Define = { fg = "#c586c0" },
        Macro = { fg = "#c586c0" },
        PreCondit = { fg = "#c586c0" },

        Type = { fg = "#4ec9b0" },
        StorageClass = { fg = "#569cd6" },
        Structure = { fg = "#4ec9b0" },
        Typedef = { fg = "#4ec9b0" },

        Special = { fg = "#d7ba7d" },
        SpecialChar = { fg = "#d7ba7d" },
        Tag = { fg = "#569cd6" },
        Delimiter = { fg = "#cccccc" },
        SpecialComment = { fg = "#6a9955", italic = true },
        Debug = { fg = "#569cd6" },

        -- Error and warnings
        Error = { fg = "#f14c4c" },
        ErrorMsg = { fg = "#f14c4c" },
        WarningMsg = { fg = "#ffcc02" },

        -- Diff colors
        DiffAdd = { bg = "#144212" },
        DiffChange = { bg = "#1f1707" },
        DiffDelete = { bg = "#441414" },
        DiffText = { bg = "#2f2707" },

        -- Popup menu
        Pmenu = { fg = "#cccccc", bg = "#252526" },
        PmenuSel = { fg = "#ffffff", bg = "#094771" },
        PmenuSbar = { bg = "#3e3e42" },
        PmenuThumb = { bg = "#6e6e70" },

        -- -- Tab line
        TabLine = { fg = "#969696", bg = "#252526" },
        TabLineFill = { bg = "#252526" },
        TabLineSel = { fg = "#ffffff", bg = "#1e1e1e" },

        -- Window separator
        WinSeparator = { fg = "#464647" },
        VertSplit = { fg = "#464647" },

        -- Folding
        Folded = { fg = "#969696", bg = "#252526" },
        FoldColumn = { fg = "#969696", bg = "#1e1e1e" },

        -- Sign column
        SignColumn = { bg = "#1e1e1e" },

        -- Spell checking
        SpellBad = { sp = "#f14c4c", undercurl = true },
        SpellCap = { sp = "#ffcc02", undercurl = true },
        SpellLocal = { sp = "#3794ff", undercurl = true },
        SpellRare = { sp = "#bc3fbc", undercurl = true },

        -- Treesitter highlighting
        ["@variable"] = { fg = "#9cdcfe" },
        ["@variable.builtin"] = { fg = "#569cd6" },
        ["@variable.parameter"] = { fg = "#9cdcfe" },
        ["@variable.member"] = { fg = "#9cdcfe" },

        ["@constant"] = { fg = "#4fc1ff" },
        ["@constant.builtin"] = { fg = "#569cd6" },
        ["@constant.macro"] = { fg = "#4fc1ff" },

        ["@module"] = { fg = "#4ec9b0" },
        ["@label"] = { fg = "#c586c0" },

        ["@string"] = { fg = "#ce9178" },
        ["@string.regexp"] = { fg = "#d16969" },
        ["@string.escape"] = { fg = "#d7ba7d" },

        ["@character"] = { fg = "#ce9178" },
        ["@character.special"] = { fg = "#d7ba7d" },

        ["@number"] = { fg = "#b5cea8" },
        ["@number.float"] = { fg = "#b5cea8" },

        ["@boolean"] = { fg = "#569cd6" },

        ["@annotation"] = { fg = "#dcdcaa" },
        ["@attribute"] = { fg = "#dcdcaa" },
        ["@namespace"] = { fg = "#4ec9b0" },

        ["@function"] = { fg = "#dcdcaa" },
        ["@function.builtin"] = { fg = "#dcdcaa" },
        ["@function.call"] = { fg = "#dcdcaa" },
        ["@function.macro"] = { fg = "#dcdcaa" },

        ["@function.method"] = { fg = "#dcdcaa" },
        ["@function.method.call"] = { fg = "#dcdcaa" },

        ["@constructor"] = { fg = "#4ec9b0" },
        ["@operator"] = { fg = "#cccccc" },

        ["@keyword"] = { fg = "#569cd6" },
        ["@keyword.function"] = { fg = "#569cd6" },
        ["@keyword.operator"] = { fg = "#569cd6" },
        ["@keyword.import"] = { fg = "#c586c0" },
        ["@keyword.type"] = { fg = "#569cd6" },
        ["@keyword.modifier"] = { fg = "#569cd6" },
        ["@keyword.repeat"] = { fg = "#c586c0" },
        ["@keyword.return"] = { fg = "#c586c0" },
        ["@keyword.debug"] = { fg = "#c586c0" },
        ["@keyword.exception"] = { fg = "#c586c0" },
        ["@keyword.conditional"] = { fg = "#c586c0" },
        ["@keyword.conditional.ternary"] = { fg = "#cccccc" },
        ["@keyword.directive"] = { fg = "#c586c0" },
        ["@keyword.directive.define"] = { fg = "#c586c0" },

        ["@type"] = { fg = "#4ec9b0" },
        ["@type.builtin"] = { fg = "#569cd6" },
        ["@type.definition"] = { fg = "#4ec9b0" },

        ["@storageclass"] = { fg = "#569cd6" },
        ["@field"] = { fg = "#9cdcfe" },
        ["@property"] = { fg = "#9cdcfe" },

        ["@parameter"] = { fg = "#9cdcfe" },
        ["@parameter.reference"] = { fg = "#9cdcfe" },

        ["@symbol"] = { fg = "#4fc1ff" },

        ["@text"] = { fg = "#cccccc" },
        ["@text.strong"] = { fg = "#cccccc", bold = true },
        ["@text.emphasis"] = { fg = "#cccccc", italic = true },
        ["@text.underline"] = { fg = "#cccccc", underline = true },
        ["@text.strike"] = { fg = "#cccccc", strikethrough = true },
        ["@text.title"] = { fg = "#569cd6", bold = true },
        ["@text.literal"] = { fg = "#ce9178" },
        ["@text.uri"] = { fg = "#3794ff", underline = true },
        ["@text.math"] = { fg = "#b5cea8" },
        ["@text.reference"] = { fg = "#569cd6" },
        ["@text.environment"] = { fg = "#c586c0" },
        ["@text.environment.name"] = { fg = "#4ec9b0" },

        ["@tag"] = { fg = "#569cd6" },
        ["@tag.attribute"] = { fg = "#92c5f7" },
        ["@tag.delimiter"] = { fg = "#808080" },

        -- LSP semantic tokens
        ["@lsp.type.class"] = { fg = "#4ec9b0" },
        ["@lsp.type.decorator"] = { fg = "#dcdcaa" },
        ["@lsp.type.enum"] = { fg = "#4ec9b0" },
        ["@lsp.type.enumMember"] = { fg = "#4fc1ff" },
        ["@lsp.type.function"] = { fg = "#dcdcaa" },
        ["@lsp.type.interface"] = { fg = "#4ec9b0" },
        ["@lsp.type.macro"] = { fg = "#dcdcaa" },
        ["@lsp.type.method"] = { fg = "#dcdcaa" },
        ["@lsp.type.namespace"] = { fg = "#4ec9b0" },
        ["@lsp.type.parameter"] = { fg = "#9cdcfe" },
        ["@lsp.type.property"] = { fg = "#9cdcfe" },
        ["@lsp.type.struct"] = { fg = "#4ec9b0" },
        ["@lsp.type.type"] = { fg = "#4ec9b0" },
        ["@lsp.type.typeParameter"] = { fg = "#4ec9b0" },
        ["@lsp.type.variable"] = { fg = "#9cdcfe" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
