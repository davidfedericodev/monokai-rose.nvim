-- Monokai Rose Theme Highlights

local M = {}

function M.setup(config)
  local c = require("monokai-rose.palette").colors

  local transparent_bg = config.transparent and c.none or c.bg
  local italic_comments = config.italic_comments and "italic" or nil
  local italic_keywords = config.italic_keywords and "italic" or nil
  local bold_functions = config.bold_functions and "bold" or nil

  local highlights = {
    -- ============================================
    -- Editor
    -- ============================================
    Normal = { fg = c.fg, bg = transparent_bg },
    NormalNC = { fg = c.fg, bg = transparent_bg },
    NormalFloat = { fg = c.fg, bg = c.bg_popup },
    FloatBorder = { fg = c.border, bg = c.bg_popup },
    FloatTitle = { fg = c.purple, bg = c.bg_popup },
    ColorColumn = { bg = c.bg_light },
    Conceal = { fg = c.fg_dim },
    Cursor = { fg = c.bg, bg = c.purple },
    lCursor = { fg = c.bg, bg = c.purple },
    CursorIM = { fg = c.bg, bg = c.purple },
    CursorColumn = { bg = c.bg_light },
    CursorLine = { bg = c.bg_light },
    CursorLineNr = { fg = c.fg_dark, bold = true },
    Directory = { fg = c.blue },
    DiffAdd = { bg = "#98C37926" },
    DiffChange = { bg = "#E5C07B26" },
    DiffDelete = { bg = "#E06C7526" },
    DiffText = { bg = "#E5C07B40" },
    EndOfBuffer = { fg = c.bg },
    ErrorMsg = { fg = c.error },
    VertSplit = { fg = c.border },
    WinSeparator = { fg = c.border },
    Folded = { fg = c.fg_dim, bg = c.bg_light },
    FoldColumn = { fg = c.fg_dim, bg = c.bg_gutter },
    SignColumn = { fg = c.fg_dim, bg = transparent_bg },
    IncSearch = { fg = c.bg, bg = c.yellow_orange },
    Substitute = { fg = c.bg, bg = c.yellow_orange },
    LineNr = { fg = c.fg_dim },
    LineNrAbove = { fg = c.fg_dim },
    LineNrBelow = { fg = c.fg_dim },
    MatchParen = { fg = c.fg, bg = c.bg_selection, bold = true },
    ModeMsg = { fg = c.fg, bold = true },
    MsgArea = { fg = c.fg },
    MsgSeparator = { fg = c.border },
    MoreMsg = { fg = c.blue },
    NonText = { fg = c.fg_dim },
    Pmenu = { fg = c.fg_dark, bg = c.bg_popup },
    PmenuSel = { fg = c.fg, bg = c.bg_light },
    PmenuSbar = { bg = c.bg_light },
    PmenuThumb = { bg = c.border_light },
    Question = { fg = c.blue },
    QuickFixLine = { bg = c.bg_light, bold = true },
    Search = { fg = c.fg, bg = c.bg_selection },
    CurSearch = { fg = c.bg, bg = c.yellow_orange },
    SpecialKey = { fg = c.fg_dim },
    SpellBad = { undercurl = true, sp = c.error },
    SpellCap = { undercurl = true, sp = c.warning },
    SpellLocal = { undercurl = true, sp = c.info },
    SpellRare = { undercurl = true, sp = c.hint },
    StatusLine = { fg = c.fg, bg = c.bg },
    StatusLineNC = { fg = c.fg_dim, bg = c.bg },
    TabLine = { fg = c.fg_dim, bg = c.bg },
    TabLineFill = { bg = c.bg },
    TabLineSel = { fg = c.fg, bg = c.bg, bold = true },
    Title = { fg = c.purple, bold = true },
    Visual = { bg = c.bg_visual },
    VisualNOS = { bg = c.bg_visual },
    WarningMsg = { fg = c.warning },
    Whitespace = { fg = c.border_light },
    WildMenu = { fg = c.fg, bg = c.bg_light },
    WinBar = { fg = c.fg, bg = transparent_bg },
    WinBarNC = { fg = c.fg_dim, bg = transparent_bg },

    -- ============================================
    -- Syntax
    -- ============================================
    Comment = { fg = c.fg_muted, italic = italic_comments },

    Constant = { fg = c.orange_soft },
    String = { fg = c.green },
    Character = { fg = c.green },
    Number = { fg = c.orange_soft },
    Boolean = { fg = c.orange_soft },
    Float = { fg = c.orange_soft },

    Identifier = { fg = c.fg },
    Function = { fg = c.blue, bold = bold_functions },

    Statement = { fg = c.purple_soft, bold = true },
    Conditional = { fg = c.purple_soft, bold = true, italic = italic_keywords },
    Repeat = { fg = c.purple_soft, bold = true, italic = italic_keywords },
    Label = { fg = c.purple_soft },
    Operator = { fg = c.purple_soft },
    Keyword = { fg = c.purple_soft, bold = true, italic = italic_keywords },
    Exception = { fg = c.purple_soft, bold = true },

    PreProc = { fg = c.purple_light },
    Include = { fg = c.purple_light, bold = true },
    Define = { fg = c.purple_light },
    Macro = { fg = c.purple_soft },
    PreCondit = { fg = c.purple_light },

    Type = { fg = c.green, bold = true },
    StorageClass = { fg = c.purple_soft, bold = true },
    Structure = { fg = c.green },
    Typedef = { fg = c.green },

    Special = { fg = c.purple_dim },
    SpecialChar = { fg = c.orange_soft },
    Tag = { fg = c.purple_light },
    Delimiter = { fg = c.purple_soft },
    SpecialComment = { fg = c.fg_muted, italic = italic_comments },
    Debug = { fg = c.orange },

    Underlined = { underline = true },
    Ignore = { fg = c.fg_dim },
    Error = { fg = c.error },
    Todo = { fg = c.bg, bg = c.purple, bold = true },

    -- ============================================
    -- Diagnostics
    -- ============================================
    DiagnosticError = { fg = c.error },
    DiagnosticWarn = { fg = c.warning },
    DiagnosticInfo = { fg = c.info },
    DiagnosticHint = { fg = c.hint },
    DiagnosticOk = { fg = c.green },

    DiagnosticUnderlineError = { undercurl = true, sp = c.error },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.info },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.hint },
    DiagnosticUnderlineOk = { undercurl = true, sp = c.green },

    DiagnosticVirtualTextError = { fg = c.error, bg = "#E06C7515" },
    DiagnosticVirtualTextWarn = { fg = c.warning, bg = "#DDB26F15" },
    DiagnosticVirtualTextInfo = { fg = c.info, bg = "#61AFEF15" },
    DiagnosticVirtualTextHint = { fg = c.hint, bg = "#B06CD515" },

    DiagnosticFloatingError = { fg = c.error },
    DiagnosticFloatingWarn = { fg = c.warning },
    DiagnosticFloatingInfo = { fg = c.info },
    DiagnosticFloatingHint = { fg = c.hint },

    DiagnosticSignError = { fg = c.error },
    DiagnosticSignWarn = { fg = c.warning },
    DiagnosticSignInfo = { fg = c.info },
    DiagnosticSignHint = { fg = c.hint },

    -- ============================================
    -- LSP
    -- ============================================
    LspReferenceText = { bg = c.bg_selection .. "50" },
    LspReferenceRead = { bg = c.bg_selection .. "50" },
    LspReferenceWrite = { bg = c.bg_selection .. "66" },

    LspSignatureActiveParameter = { fg = c.yellow_orange, bold = true },
    LspCodeLens = { fg = c.purple_dark },
    LspInlayHint = { fg = c.fg_dark, bg = c.bg_light },

    -- ============================================
    -- Treesitter
    -- ============================================
    ["@text"] = { fg = c.fg },
    ["@text.literal"] = { fg = c.green },
    ["@text.reference"] = { fg = c.blue_soft },
    ["@text.title"] = { fg = c.purple, bold = true },
    ["@text.uri"] = { fg = c.blue_soft, underline = true },
    ["@text.underline"] = { underline = true },
    ["@text.todo"] = { fg = c.bg, bg = c.purple, bold = true },
    ["@text.note"] = { fg = c.bg, bg = c.info, bold = true },
    ["@text.warning"] = { fg = c.bg, bg = c.warning, bold = true },
    ["@text.danger"] = { fg = c.bg, bg = c.error, bold = true },
    ["@text.emphasis"] = { italic = true },
    ["@text.strong"] = { bold = true },
    ["@text.strike"] = { strikethrough = true },

    ["@comment"] = { fg = c.fg_muted, italic = italic_comments },
    ["@punctuation"] = { fg = c.purple_soft },
    ["@punctuation.bracket"] = { fg = c.purple_soft },
    ["@punctuation.delimiter"] = { fg = c.purple_soft },
    ["@punctuation.special"] = { fg = c.purple_soft },

    ["@constant"] = { fg = c.orange_soft },
    ["@constant.builtin"] = { fg = c.orange_soft },
    ["@constant.macro"] = { fg = c.purple_soft },

    ["@define"] = { fg = c.purple_light },
    ["@macro"] = { fg = c.purple_soft },
    ["@string"] = { fg = c.green },
    ["@string.escape"] = { fg = c.orange_soft },
    ["@string.special"] = { fg = c.green },
    ["@string.regex"] = { fg = c.red },

    ["@character"] = { fg = c.green },
    ["@character.special"] = { fg = c.orange_soft },

    ["@number"] = { fg = c.orange_soft },
    ["@boolean"] = { fg = c.orange_soft },
    ["@float"] = { fg = c.orange_soft },

    ["@function"] = { fg = c.blue, bold = bold_functions },
    ["@function.builtin"] = { fg = c.blue_soft, italic = true },
    ["@function.call"] = { fg = c.blue },
    ["@function.macro"] = { fg = c.purple_soft },
    ["@function.method"] = { fg = c.blue, bold = bold_functions },
    ["@function.method.call"] = { fg = c.blue },

    ["@method"] = { fg = c.blue, bold = bold_functions },
    ["@method.call"] = { fg = c.blue },

    ["@constructor"] = { fg = c.purple_dim },
    ["@parameter"] = { fg = c.fg },

    ["@keyword"] = { fg = c.purple_soft, bold = true, italic = italic_keywords },
    ["@keyword.conditional"] = { fg = c.purple_soft, bold = true, italic = italic_keywords },
    ["@keyword.repeat"] = { fg = c.purple_soft, bold = true, italic = italic_keywords },
    ["@keyword.return"] = { fg = c.purple_soft, bold = true },
    ["@keyword.exception"] = { fg = c.purple_soft, bold = true },
    ["@keyword.function"] = { fg = c.purple_soft, bold = true },
    ["@keyword.operator"] = { fg = c.purple_soft },
    ["@keyword.import"] = { fg = c.purple_light, bold = true },
    ["@keyword.export"] = { fg = c.purple_light, bold = true },

    ["@conditional"] = { fg = c.purple_soft, bold = true, italic = italic_keywords },
    ["@repeat"] = { fg = c.purple_soft, bold = true, italic = italic_keywords },
    ["@label"] = { fg = c.purple_soft },
    ["@include"] = { fg = c.purple_light, bold = true },
    ["@exception"] = { fg = c.purple_soft, bold = true },

    ["@type"] = { fg = c.green, bold = true },
    ["@type.builtin"] = { fg = c.green },
    ["@type.definition"] = { fg = c.green },
    ["@type.qualifier"] = { fg = c.purple_soft },

    ["@storageclass"] = { fg = c.purple_soft, bold = true },
    ["@attribute"] = { fg = c.yellow_orange, italic = true },
    ["@field"] = { fg = c.blue },
    ["@property"] = { fg = c.purple_dim },

    ["@variable"] = { fg = c.fg },
    ["@variable.builtin"] = { fg = c.purple_light, italic = true },
    ["@variable.parameter"] = { fg = c.fg },
    ["@variable.member"] = { fg = c.purple_dim },

    ["@namespace"] = { fg = c.purple_soft },
    ["@module"] = { fg = c.purple_soft },

    ["@tag"] = { fg = c.purple_light },
    ["@tag.attribute"] = { fg = c.purple_soft, italic = true },
    ["@tag.delimiter"] = { fg = c.purple_light },

    ["@operator"] = { fg = c.purple_soft },

    -- ============================================
    -- Semantic Tokens
    -- ============================================
    ["@lsp.type.class"] = { fg = c.green, bold = true },
    ["@lsp.type.comment"] = { fg = c.fg_muted, italic = italic_comments },
    ["@lsp.type.decorator"] = { fg = c.yellow_orange, italic = true },
    ["@lsp.type.enum"] = { fg = c.green, bold = true },
    ["@lsp.type.enumMember"] = { fg = c.orange_soft },
    ["@lsp.type.function"] = { fg = c.blue, bold = bold_functions },
    ["@lsp.type.interface"] = { fg = c.cyan, bold = true },
    ["@lsp.type.keyword"] = { fg = c.purple_soft, bold = true },
    ["@lsp.type.macro"] = { fg = c.purple_soft },
    ["@lsp.type.method"] = { fg = c.blue, bold = bold_functions },
    ["@lsp.type.namespace"] = { fg = c.purple_soft },
    ["@lsp.type.number"] = { fg = c.orange_soft },
    ["@lsp.type.operator"] = { fg = c.purple_soft },
    ["@lsp.type.parameter"] = { fg = c.fg },
    ["@lsp.type.property"] = { fg = c.purple_dim },
    ["@lsp.type.regexp"] = { fg = c.red },
    ["@lsp.type.string"] = { fg = c.green },
    ["@lsp.type.struct"] = { fg = c.green, bold = true },
    ["@lsp.type.type"] = { fg = c.green, bold = true },
    ["@lsp.type.typeParameter"] = { fg = c.cyan, italic = true },
    ["@lsp.type.variable"] = { fg = c.fg },

    ["@lsp.mod.declaration"] = { bold = true },
    ["@lsp.mod.readonly"] = { fg = c.orange_soft },
    ["@lsp.mod.defaultLibrary"] = {},

    -- ============================================
    -- Git Signs
    -- ============================================
    GitSignsAdd = { fg = c.git_add },
    GitSignsChange = { fg = c.git_change },
    GitSignsDelete = { fg = c.git_delete },
    GitSignsAddNr = { fg = c.git_add },
    GitSignsChangeNr = { fg = c.git_change },
    GitSignsDeleteNr = { fg = c.git_delete },
    GitSignsAddLn = { bg = "#98C37920" },
    GitSignsChangeLn = { bg = "#E5C07B20" },
    GitSignsDeleteLn = { bg = "#E06C7520" },
    GitSignsCurrentLineBlame = { fg = c.fg_dim, italic = true },

    -- ============================================
    -- Telescope
    -- ============================================
    TelescopeNormal = { fg = c.fg, bg = c.bg_popup },
    TelescopeBorder = { fg = c.border, bg = c.bg_popup },
    TelescopePromptNormal = { fg = c.fg, bg = c.bg_light },
    TelescopePromptBorder = { fg = c.border, bg = c.bg_light },
    TelescopePromptTitle = { fg = c.bg, bg = c.purple },
    TelescopePromptPrefix = { fg = c.purple },
    TelescopePreviewTitle = { fg = c.bg, bg = c.green },
    TelescopeResultsTitle = { fg = c.bg, bg = c.blue },
    TelescopeSelection = { fg = c.fg, bg = c.bg_light },
    TelescopeSelectionCaret = { fg = c.purple },
    TelescopeMatching = { fg = c.purple, bold = true },

    -- ============================================
    -- NvimTree
    -- ============================================
    NvimTreeNormal = { fg = c.fg_dark, bg = transparent_bg },
    NvimTreeNormalNC = { fg = c.fg_dark, bg = transparent_bg },
    NvimTreeRootFolder = { fg = c.purple, bold = true },
    NvimTreeFolderName = { fg = c.fg_dark },
    NvimTreeFolderIcon = { fg = c.yellow_orange },
    NvimTreeEmptyFolderName = { fg = c.fg_dim },
    NvimTreeOpenedFolderName = { fg = c.fg, bold = true },
    NvimTreeSymlink = { fg = c.cyan },
    NvimTreeSpecialFile = { fg = c.purple_dim },
    NvimTreeImageFile = { fg = c.fg_dark },
    NvimTreeIndentMarker = { fg = c.border },
    NvimTreeGitDirty = { fg = c.git_change },
    NvimTreeGitNew = { fg = c.git_add },
    NvimTreeGitDeleted = { fg = c.git_delete },
    NvimTreeGitStaged = { fg = c.git_add },

    -- ============================================
    -- Neo-tree
    -- ============================================
    NeoTreeNormal = { fg = c.fg_dark, bg = transparent_bg },
    NeoTreeNormalNC = { fg = c.fg_dark, bg = transparent_bg },
    NeoTreeRootName = { fg = c.purple, bold = true },
    NeoTreeDirectoryName = { fg = c.fg_dark },
    NeoTreeDirectoryIcon = { fg = c.yellow_orange },
    NeoTreeSymbolicLinkTarget = { fg = c.cyan },
    NeoTreeGitAdded = { fg = c.git_add },
    NeoTreeGitConflict = { fg = c.git_conflict },
    NeoTreeGitDeleted = { fg = c.git_delete },
    NeoTreeGitModified = { fg = c.git_change },
    NeoTreeGitUntracked = { fg = c.yellow_orange },
    NeoTreeIndentMarker = { fg = c.border },

    -- ============================================
    -- Indent Blankline
    -- ============================================
    IndentBlanklineChar = { fg = c.border },
    IndentBlanklineContextChar = { fg = c.border_light },
    IndentBlanklineContextStart = { sp = c.border_light, underline = true },
    IblIndent = { fg = c.border },
    IblScope = { fg = c.border_light },

    -- ============================================
    -- Which-key
    -- ============================================
    WhichKey = { fg = c.purple },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeperator = { fg = c.fg_dim },
    WhichKeySeparator = { fg = c.fg_dim },
    WhichKeyFloat = { bg = c.bg_popup },
    WhichKeyValue = { fg = c.fg_dim },

    -- ============================================
    -- Dashboard
    -- ============================================
    DashboardHeader = { fg = c.purple },
    DashboardCenter = { fg = c.fg },
    DashboardFooter = { fg = c.fg_dim, italic = true },
    DashboardShortCut = { fg = c.cyan },

    -- ============================================
    -- Alpha
    -- ============================================
    AlphaHeader = { fg = c.purple },
    AlphaButtons = { fg = c.fg },
    AlphaShortcut = { fg = c.cyan },
    AlphaFooter = { fg = c.fg_dim, italic = true },

    -- ============================================
    -- Lazy.nvim
    -- ============================================
    LazyNormal = { fg = c.fg, bg = c.bg_popup },
    LazyButton = { fg = c.fg, bg = c.bg_light },
    LazyButtonActive = { fg = c.bg, bg = c.purple },
    LazyComment = { fg = c.fg_dim },
    LazyCommit = { fg = c.green },
    LazyCommitIssue = { fg = c.orange },
    LazyCommitType = { fg = c.purple },
    LazyDir = { fg = c.blue },
    LazyH1 = { fg = c.bg, bg = c.purple, bold = true },
    LazyH2 = { fg = c.purple, bold = true },
    LazyProp = { fg = c.purple_dim },
    LazyReasonCmd = { fg = c.yellow_orange },
    LazyReasonEvent = { fg = c.orange },
    LazyReasonFt = { fg = c.cyan },
    LazyReasonImport = { fg = c.fg },
    LazyReasonKeys = { fg = c.green },
    LazyReasonPlugin = { fg = c.purple },
    LazyReasonSource = { fg = c.blue },
    LazyReasonStart = { fg = c.yellow },
    LazySpecial = { fg = c.purple },
    LazyTaskOutput = { fg = c.fg },
    LazyUrl = { fg = c.blue, underline = true },
    LazyValue = { fg = c.green },

    -- ============================================
    -- Mason
    -- ============================================
    MasonNormal = { fg = c.fg, bg = c.bg_popup },
    MasonHeader = { fg = c.bg, bg = c.purple, bold = true },
    MasonHeaderSecondary = { fg = c.bg, bg = c.blue, bold = true },
    MasonHighlight = { fg = c.purple },
    MasonHighlightBlock = { fg = c.bg, bg = c.purple },
    MasonHighlightBlockBold = { fg = c.bg, bg = c.purple, bold = true },
    MasonHighlightSecondary = { fg = c.blue },
    MasonMuted = { fg = c.fg_dim },
    MasonMutedBlock = { fg = c.fg_dim, bg = c.bg_light },

    -- ============================================
    -- Cmp (Completion)
    -- ============================================
    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrDeprecated = { fg = c.fg_dim, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.purple, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.purple, bold = true },
    CmpItemKind = { fg = c.purple_dim },
    CmpItemMenu = { fg = c.fg_dim },

    CmpItemKindArray = { fg = c.orange_soft },
    CmpItemKindClass = { fg = c.green_pale },
    CmpItemKindColor = { fg = c.yellow_orange },
    CmpItemKindConstant = { fg = c.orange_soft },
    CmpItemKindConstructor = { fg = c.purple_dim },
    CmpItemKindEnum = { fg = c.green_pale },
    CmpItemKindEnumMember = { fg = c.orange_soft },
    CmpItemKindEvent = { fg = c.yellow_orange },
    CmpItemKindField = { fg = c.blue },
    CmpItemKindFile = { fg = c.fg_dim },
    CmpItemKindFolder = { fg = c.yellow_orange },
    CmpItemKindFunction = { fg = c.purple_dim },
    CmpItemKindInterface = { fg = c.cyan },
    CmpItemKindKey = { fg = c.orange_soft },
    CmpItemKindKeyword = { fg = c.purple_soft },
    CmpItemKindMethod = { fg = c.purple_dim },
    CmpItemKindModule = { fg = c.purple_soft },
    CmpItemKindNamespace = { fg = c.purple_soft },
    CmpItemKindNull = { fg = c.fg_dim },
    CmpItemKindNumber = { fg = c.orange_soft },
    CmpItemKindObject = { fg = c.blue },
    CmpItemKindOperator = { fg = c.purple_soft },
    CmpItemKindPackage = { fg = c.yellow_orange },
    CmpItemKindProperty = { fg = c.blue },
    CmpItemKindReference = { fg = c.fg_dim },
    CmpItemKindSnippet = { fg = c.green_pale },
    CmpItemKindString = { fg = c.green_pale },
    CmpItemKindStruct = { fg = c.green_pale },
    CmpItemKindText = { fg = c.fg },
    CmpItemKindTypeParameter = { fg = c.cyan },
    CmpItemKindUnit = { fg = c.fg_dim },
    CmpItemKindValue = { fg = c.orange_soft },
    CmpItemKindVariable = { fg = c.fg },

    -- ============================================
    -- Notify
    -- ============================================
    NotifyERRORBorder = { fg = c.error },
    NotifyWARNBorder = { fg = c.warning },
    NotifyINFOBorder = { fg = c.info },
    NotifyDEBUGBorder = { fg = c.fg_dim },
    NotifyTRACEBorder = { fg = c.purple },
    NotifyERRORIcon = { fg = c.error },
    NotifyWARNIcon = { fg = c.warning },
    NotifyINFOIcon = { fg = c.info },
    NotifyDEBUGIcon = { fg = c.fg_dim },
    NotifyTRACEIcon = { fg = c.purple },
    NotifyERRORTitle = { fg = c.error },
    NotifyWARNTitle = { fg = c.warning },
    NotifyINFOTitle = { fg = c.info },
    NotifyDEBUGTitle = { fg = c.fg_dim },
    NotifyTRACETitle = { fg = c.purple },
    NotifyERRORBody = { fg = c.fg },
    NotifyWARNBody = { fg = c.fg },
    NotifyINFOBody = { fg = c.fg },
    NotifyDEBUGBody = { fg = c.fg },
    NotifyTRACEBody = { fg = c.fg },

    -- ============================================
    -- Noice
    -- ============================================
    NoiceCmdline = { fg = c.fg },
    NoiceCmdlineIcon = { fg = c.purple },
    NoiceCmdlineIconSearch = { fg = c.yellow_orange },
    NoiceCmdlinePopup = { fg = c.fg, bg = c.bg_popup },
    NoiceCmdlinePopupBorder = { fg = c.border },
    NoiceCmdlinePopupBorderSearch = { fg = c.yellow_orange },
    NoiceConfirm = { fg = c.fg, bg = c.bg_popup },
    NoiceConfirmBorder = { fg = c.purple },
    NoiceMini = { fg = c.fg, bg = c.bg_light },
    NoicePopup = { fg = c.fg, bg = c.bg_popup },
    NoicePopupBorder = { fg = c.border },
    NoicePopupmenu = { fg = c.fg, bg = c.bg_popup },
    NoicePopupmenuBorder = { fg = c.border },
    NoicePopupmenuSelected = { fg = c.fg, bg = c.bg_light },
    NoiceScrollbar = { fg = c.border_light },
    NoiceScrollbarThumb = { fg = c.purple },

    -- ============================================
    -- Bufferline
    -- ============================================
    BufferLineFill = { bg = c.bg },
    BufferLineBackground = { fg = c.fg_dim, bg = c.bg },
    BufferLineBufferVisible = { fg = c.fg_dim, bg = c.bg },
    BufferLineBufferSelected = { fg = c.fg, bg = c.bg, bold = true },
    BufferLineTab = { fg = c.fg_dim, bg = c.bg },
    BufferLineTabSelected = { fg = c.fg, bg = c.bg },
    BufferLineTabClose = { fg = c.red, bg = c.bg },
    BufferLineIndicatorSelected = { fg = c.purple, bg = c.bg },
    BufferLineSeparator = { fg = c.border, bg = c.bg },
    BufferLineModified = { fg = c.yellow, bg = c.bg },
    BufferLineModifiedVisible = { fg = c.yellow, bg = c.bg },
    BufferLineModifiedSelected = { fg = c.yellow, bg = c.bg },
    BufferLineCloseButton = { fg = c.fg_dim, bg = c.bg },
    BufferLineCloseButtonVisible = { fg = c.fg_dim, bg = c.bg },
    BufferLineCloseButtonSelected = { fg = c.red, bg = c.bg },

    -- ============================================
    -- Lualine (colors defined separately)
    -- ============================================

    -- ============================================
    -- Mini
    -- ============================================
    MiniCursorword = { bg = c.bg_selection .. "50" },
    MiniCursorwordCurrent = { bg = c.bg_selection .. "50" },
    MiniIndentscopeSymbol = { fg = c.purple_dark },
    MiniIndentscopePrefix = { nocombine = true },
    MiniJump = { fg = c.bg, bg = c.purple },
    MiniJump2dSpot = { fg = c.purple, bold = true },
    MiniStarterCurrent = {},
    MiniStarterFooter = { fg = c.fg_dim, italic = true },
    MiniStarterHeader = { fg = c.purple },
    MiniStarterInactive = { fg = c.fg_dim },
    MiniStarterItem = { fg = c.fg },
    MiniStarterItemBullet = { fg = c.border },
    MiniStarterItemPrefix = { fg = c.yellow_orange },
    MiniStarterSection = { fg = c.purple },
    MiniStarterQuery = { fg = c.purple },
    MiniStatuslineDevinfo = { fg = c.fg, bg = c.bg_light },
    MiniStatuslineFileinfo = { fg = c.fg, bg = c.bg_light },
    MiniStatuslineFilename = { fg = c.fg_dim, bg = c.bg },
    MiniStatuslineInactive = { fg = c.fg_dim, bg = c.bg },
    MiniStatuslineModeCommand = { fg = c.bg, bg = c.yellow, bold = true },
    MiniStatuslineModeInsert = { fg = c.bg, bg = c.green, bold = true },
    MiniStatuslineModeNormal = { fg = c.bg, bg = c.purple, bold = true },
    MiniStatuslineModeOther = { fg = c.bg, bg = c.cyan, bold = true },
    MiniStatuslineModeReplace = { fg = c.bg, bg = c.red, bold = true },
    MiniStatuslineModeVisual = { fg = c.bg, bg = c.blue, bold = true },
    MiniSurround = { fg = c.bg, bg = c.yellow_orange },
    MiniTablineCurrent = { fg = c.fg, bg = c.bg, bold = true },
    MiniTablineFill = { bg = c.bg },
    MiniTablineHidden = { fg = c.fg_dim, bg = c.bg },
    MiniTablineModifiedCurrent = { fg = c.yellow, bg = c.bg, bold = true },
    MiniTablineModifiedHidden = { fg = c.yellow, bg = c.bg },
    MiniTablineModifiedVisible = { fg = c.yellow, bg = c.bg },
    MiniTablineTabpagesection = { fg = c.purple, bg = c.bg },
    MiniTablineVisible = { fg = c.fg_dim, bg = c.bg },
    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = c.red, bold = true },
    MiniTestPass = { fg = c.green, bold = true },
    MiniTrailspace = { bg = c.red },

    -- ============================================
    -- Navic
    -- ============================================
    NavicIconsFile = { fg = c.fg_dim },
    NavicIconsModule = { fg = c.purple_soft },
    NavicIconsNamespace = { fg = c.purple_soft },
    NavicIconsPackage = { fg = c.yellow_orange },
    NavicIconsClass = { fg = c.green },
    NavicIconsMethod = { fg = c.purple_dim },
    NavicIconsProperty = { fg = c.blue },
    NavicIconsField = { fg = c.blue },
    NavicIconsConstructor = { fg = c.purple_dim },
    NavicIconsEnum = { fg = c.green },
    NavicIconsInterface = { fg = c.cyan },
    NavicIconsFunction = { fg = c.purple_dim },
    NavicIconsVariable = { fg = c.fg },
    NavicIconsConstant = { fg = c.orange_soft },
    NavicIconsString = { fg = c.green },
    NavicIconsNumber = { fg = c.orange_soft },
    NavicIconsBoolean = { fg = c.orange_soft },
    NavicIconsArray = { fg = c.orange_soft },
    NavicIconsObject = { fg = c.blue },
    NavicIconsKey = { fg = c.orange_soft },
    NavicIconsNull = { fg = c.fg_dim },
    NavicIconsEnumMember = { fg = c.orange_soft },
    NavicIconsStruct = { fg = c.green },
    NavicIconsEvent = { fg = c.yellow_orange },
    NavicIconsOperator = { fg = c.purple_soft },
    NavicIconsTypeParameter = { fg = c.cyan },
    NavicText = { fg = c.fg },
    NavicSeparator = { fg = c.fg_dim },

    -- ============================================
    -- Trouble
    -- ============================================
    TroubleNormal = { fg = c.fg, bg = c.bg_popup },
    TroubleNormalNC = { fg = c.fg, bg = c.bg_popup },
    TroubleText = { fg = c.fg },
    TroubleCount = { fg = c.purple, bg = c.bg_light },
    TroubleSource = { fg = c.fg_dim },
    TroubleLocation = { fg = c.fg_dim },
    TroubleFoldIcon = { fg = c.purple },
    TroubleIndent = { fg = c.border },

    -- ============================================
    -- Flash
    -- ============================================
    FlashBackdrop = { fg = c.fg_dim },
    FlashMatch = { fg = c.fg, bg = c.bg_selection },
    FlashCurrent = { fg = c.bg, bg = c.purple },
    FlashLabel = { fg = c.bg, bg = c.purple, bold = true },

    -- ============================================
    -- Leap
    -- ============================================
    LeapMatch = { fg = c.bg, bg = c.purple, bold = true },
    LeapLabelPrimary = { fg = c.bg, bg = c.purple, bold = true },
    LeapLabelSecondary = { fg = c.bg, bg = c.green, bold = true },
    LeapBackdrop = { fg = c.fg_dim },

    -- ============================================
    -- Markdown
    -- ============================================
    ["@markup.heading.1.markdown"] = { fg = c.purple, bold = true },
    ["@markup.heading.2.markdown"] = { fg = c.blue, bold = true },
    ["@markup.heading.3.markdown"] = { fg = c.green, bold = true },
    ["@markup.heading.4.markdown"] = { fg = c.yellow_orange, bold = true },
    ["@markup.heading.5.markdown"] = { fg = c.cyan, bold = true },
    ["@markup.heading.6.markdown"] = { fg = c.purple_dim, bold = true },
    ["@markup.link.markdown_inline"] = { fg = c.blue_soft, underline = true },
    ["@markup.link.label.markdown_inline"] = { fg = c.purple },
    ["@markup.raw.markdown_inline"] = { fg = c.orange_soft },
    ["@markup.raw.block.markdown"] = { fg = c.orange_soft },
    ["@markup.list.markdown"] = { fg = c.purple },
    ["@markup.italic.markdown_inline"] = { fg = c.purple_dim, italic = true },
    ["@markup.strong.markdown_inline"] = { fg = c.purple, bold = true },

    markdownH1 = { fg = c.purple, bold = true },
    markdownH2 = { fg = c.blue, bold = true },
    markdownH3 = { fg = c.green, bold = true },
    markdownH4 = { fg = c.yellow_orange, bold = true },
    markdownH5 = { fg = c.cyan, bold = true },
    markdownH6 = { fg = c.purple_dim, bold = true },
    markdownHeadingDelimiter = { fg = c.purple },
    markdownCode = { fg = c.orange_soft },
    markdownCodeBlock = { fg = c.orange_soft },
    markdownCodeDelimiter = { fg = c.fg_dim },
    markdownBlockquote = { fg = c.fg_dim },
    markdownListMarker = { fg = c.purple },
    markdownOrderedListMarker = { fg = c.purple },
    markdownRule = { fg = c.border },
    markdownLinkText = { fg = c.blue_soft, underline = true },
    markdownUrl = { fg = c.blue_soft, underline = true },
    markdownLinkDelimiter = { fg = c.fg_dim },
    markdownItalic = { fg = c.purple_dim, italic = true },
    markdownBold = { fg = c.purple, bold = true },

    -- ============================================
    -- Copilot
    -- ============================================
    CopilotSuggestion = { fg = c.fg_dim, italic = true },
    CopilotAnnotation = { fg = c.fg_dim, italic = true },

    -- ============================================
    -- Neogit
    -- ============================================
    NeogitBranch = { fg = c.purple },
    NeogitRemote = { fg = c.green },
    NeogitHunkHeader = { fg = c.fg, bg = c.bg_light },
    NeogitHunkHeaderHighlight = { fg = c.fg, bg = c.bg_selection },
    NeogitDiffContextHighlight = { bg = c.bg_light },
    NeogitDiffDeleteHighlight = { fg = c.red, bg = "#E06C7520" },
    NeogitDiffAddHighlight = { fg = c.green, bg = "#98C37920" },

    -- ============================================
    -- Gitsigns
    -- ============================================
    GitGutterAdd = { fg = c.git_add },
    GitGutterChange = { fg = c.git_change },
    GitGutterDelete = { fg = c.git_delete },

    -- ============================================
    -- Illuminate
    -- ============================================
    IlluminatedWordText = { bg = c.bg_selection .. "50" },
    IlluminatedWordRead = { bg = c.bg_selection .. "50" },
    IlluminatedWordWrite = { bg = c.bg_selection .. "66" },

    -- ============================================
    -- Hop
    -- ============================================
    HopNextKey = { fg = c.purple, bold = true },
    HopNextKey1 = { fg = c.purple, bold = true },
    HopNextKey2 = { fg = c.purple_dim },
    HopUnmatched = { fg = c.fg_dim },
    HopCursor = { fg = c.purple, bold = true },
    HopPreview = { fg = c.green },
  }

  return highlights
end

return M
