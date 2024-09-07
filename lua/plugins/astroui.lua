-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = function(_, opts)
    local oxocarbon = require("oxocarbon").oxocarbon

    -- change colorscheme
    -- opts.colorscheme = "astrodark"
    opts.colorscheme = "oxocarbon"
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    opts.highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal
        Normal = { bg = "none" },
        NormalFloat = { bg = "none" },
        NormalNC = { bg = "none" },
        SignColumn = { bg = "none" },
        FoldColumn = { bg = "none" },
        NormalSB = { bg = "none" },
        FloatBorder = { bg = "none" },
        FloatTitle = { fg = "#F2F3F5", bg = "none" },
        LineNr = { bg = "none" },
        -- WinBar
        WinBar = { bg = "none" },
        WinSeparator = { fg = "#F2F3F5", bg = "none" },
        WinBarNC = { bg = "none" },
        WhichKeyFloat = { bg = "none" },
        -- Telescope
        TelescopeBorder = { bg = "none" },
        TelescopePromptTitle = { bg = "none" },
        TelescopePromptBorder = { bg = "none" },
        TelescopeNormal = { bg = "none" },
        -- Diagnosis
        DiagnosticVirtualTextHint = { fg = "#F2F3F5", bg = "none" },
        DiagnosticVirtualTextWarn = { fg = "#e0af68", bg = "none" },
        DiagnosticVirtualTextInfo = { fg = "#9ece6a", bg = "none" },
        DiagnosticVirtualTextError = { fg = "#bd2c00", bg = "none" },
        -- NeoTree
        NeoTreeNormal = { bg = "none" },
        NeoTreeNormalNC = { bg = "none" },
        NeoTreeTabInactive = { bg = "none" },
        NeoTreeTabSeperatorActive = { fg = "#F2F3F5", bg = "none" },
        NeoTreeTabSeperatorInactive = { fg = "#F2F3F5", bg = "none" },
        NvimTreeTabSeperatorActive = { fg = "#F2F3F5", bg = "none" },
        NvimTreeTabSeperatorInactive = { fg = "#F2F3F5", bg = "none" },
        MiniTabLineFill = { fg = "#F2F3F5", bg = "none" },
        -- Spectre
        DiffChange = { fg = "#F2F3F5", bg = "#050a30" },
        DiffDelete = { fg = "#F2F3F5", bg = "#bd2c00" },
        -- StatusLine
        StatusLine = { fg = "#F2F3F5", bg = "none" },
        StatusLineNC = { fg = "#F2F3F5", bg = "none" },
        StatusLineTerm = { fg = "#F2F3F5", bg = "none" },
        StatusLineTermNC = { fg = "#F2F3F5", bg = "none" },
        VertSplit = { fg = "#F2F3F5", bg = "none" },
        -- QuickFixLine
        QuickFixLine = { bg = "none" },
        -- TabLine
        TabLine = { bg = "none" },
        TabLineSel = { bg = "none" },
        TabLineFill = { bg = "none" },
        -- Cursor
        CursorLineNr = { bg = "none" },
        CursorLine = { bg = "none" },
        ColorColumn = { bg = "none" },
        -- Search
        Search = { fg = "red" },
        IncSearch = { fg = "red" },
        -- Pmenu
        Pmenu = { bg = "none" },
        PmenuSel = { bg = "none" },
        PmenuSbar = { bg = "none" },
        PmenuThumb = { bg = "none" },
        -- Notifications
        NotifyINFOBody = { bg = "none" },
        NotifyWARNBody = { bg = "none" },
        NotifyERRORBody = { bg = "none" },
        NotifyDEBUGBody = { bg = "none" },
        NotifyTRACEBody = { bg = "none" },
        NotifyINFOBorder = { bg = "none" },
        NotifyWARNBorder = { bg = "none" },
        NotifyERRORBorder = { bg = "none" },
        NotifyDEBUGBorder = { bg = "none" },
        NotifyTRACEBorder = { bg = "none" },
        NotifyBackground = { bg = "#000000" },
        -- Autocompletion
        CmpItemAbbr = {fg = "#adadad", bg = oxocarbon.none },
        CmpItemAbbrMatch = {fg = oxocarbon.base05, bg = oxocarbon.none, bold = true },
        CmpItemAbbrMatchFuzzy = {fg = oxocarbon.base04, bg = oxocarbon.none, bold = true },
        CmpItemMenu = {fg = oxocarbon.base04, bg = oxocarbon.none, italic = true },
        CmpItemKindInterface = {fg = oxocarbon.base08, bg = oxocarbon.base01 },
        CmpItemKindColor = {fg = oxocarbon.base08, bg = oxocarbon.base01 },
        CmpItemKindTypeParameter = {fg = oxocarbon.base08, bg = oxocarbon.base01 },
        CmpItemKindText = {fg = oxocarbon.base09, bg = oxocarbon.base01 },
        CmpItemKindEnum = {fg = oxocarbon.base09, bg = oxocarbon.base01 },
        CmpItemKindKeyword = {fg = oxocarbon.base09, bg = oxocarbon.base01 },
        CmpItemKindConstant = {fg = oxocarbon.base10, bg = oxocarbon.base01 },
        CmpItemKindConstructor = {fg = oxocarbon.base10, bg = oxocarbon.base01 },
        CmpItemKindReference = {fg = oxocarbon.base10, bg = oxocarbon.base01 },
        CmpItemKindFunction = {fg = oxocarbon.base11, bg = oxocarbon.base01 },
        CmpItemKindStruct = {fg = oxocarbon.base11, bg = oxocarbon.base01 },
        CmpItemKindClass = {fg = oxocarbon.base11, bg = oxocarbon.base01 },
        CmpItemKindModule = {fg = oxocarbon.base11, bg = oxocarbon.base01 },
        CmpItemKindOperator = {fg = oxocarbon.base11, bg = oxocarbon.base01 },
        CmpItemKindField = {fg = oxocarbon.base12, bg = oxocarbon.base01 },
        CmpItemKindProperty = {fg = oxocarbon.base12, bg = oxocarbon.base01 },
        CmpItemKindEvent = {fg = oxocarbon.base12, bg = oxocarbon.base01 },
        CmpItemKindUnit = {fg = oxocarbon.base13, bg = oxocarbon.base01 },
        CmpItemKindSnippet = {fg = oxocarbon.base13, bg = oxocarbon.base01 },
        CmpItemKindFolder = {fg = oxocarbon.base13, bg = oxocarbon.base01 },
        CmpItemKindVariable = {fg = oxocarbon.base14, bg = oxocarbon.base01 },
        CmpItemKindFile = {fg = oxocarbon.base14, bg = oxocarbon.base01 },
        CmpItemKindMethod = {fg = oxocarbon.base15, bg = oxocarbon.base01 },
        CmpItemKindValue = {fg = oxocarbon.base15, bg = oxocarbon.base01 },
        CmpItemKindEnumMember = {fg = oxocarbon.base15, bg = oxocarbon.base01 },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" },
      },
    }
    -- Icons can be configured throughout the interface
    opts.icons = {
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
    }
    return opts
  end,
}
