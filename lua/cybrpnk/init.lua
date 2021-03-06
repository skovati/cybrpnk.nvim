local lush = require "lush"
local colors = require "cybrpnk.colors"

vim.g.terminal_color_0 = colors.black.hex
vim.g.terminal_color_1 = colors.red.hex
vim.g.terminal_color_2 = colors.green.hex
vim.g.terminal_color_3 = colors.yellow.hex
vim.g.terminal_color_4 = colors.blue.hex
vim.g.terminal_color_5 = colors.magenta.hex
vim.g.terminal_color_6 = colors.cyan.hex
vim.g.terminal_color_7 = colors.white.hex
vim.g.terminal_color_8 = colors.black.hex
vim.g.terminal_color_9 = colors.red.hex
vim.g.terminal_color_10 = colors.green.hex
vim.g.terminal_color_11 = colors.yellow.hex
vim.g.terminal_color_12 = colors.blue.hex
vim.g.terminal_color_13 = colors.magenta.hex
vim.g.terminal_color_14 = colors.cyan.hex
vim.g.terminal_color_15 = colors.white.hex

local theme = lush(function()
    return {
        Normal       {bg = colors.black,fg = colors.white}, -- normal text
        Comment      {fg = colors.gray}, -- any comment
        ColorColumn  {Comment}, -- used for the columns set with 'colorcolumn'
        Conceal      {Comment}, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor       {Normal}, -- character under the cursor
        lCursor      {Cursor}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM     {Cursor}, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn {bg = colors.black.lighten(15)}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine   {CursorColumn}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory    {fg = colors.red}, -- directory names (and other special names in listings)
        DiffAdd      {fg = colors.green}, -- diff mode: Added line |diff.txt|
        DiffChange   {fg = colors.magenta}, -- diff mode: Changed line |diff.txt|
        DiffDelete   {fg = colors.red}, -- diff mode: Deleted line |diff.txt|
        DiffText     {fg = colors.white, bg = colors.red}, -- diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer  {Comment}, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        TermCursor   {fg = colors.white}, -- cursor in a focused terminal
        TermCursorNC {fg = colors.gray}, -- cursor in an unfocused terminal
        ErrorMsg     {DiffText}, -- error messages on the command line
        VertSplit    {Comment}, -- the column separating vertically split windows
        Folded       {Comment}, -- line used for closed folds
        FoldColumn   {Comment}, -- 'foldcolumn'
        SignColumn   {fg = colors.gray, bg = colors.black}, -- column where |signs| are displayed
        IncSearch    {fg = colors.orange, bg = colors.black.lighten(20), gui = "bold"}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        Substitute   {IncSearch}, -- |:substitute| replacement text highlighting
        LineNr       {fg = colors.gray}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr {IncSearch}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen   {IncSearch}, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        ModeMsg      {fg = colors.orange}, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea      {fg = colors.}, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg      {ModeMsg}, -- |more-prompt|
        NonText      {Comment}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        NormalFloat  {Normal}, -- Normal text in floating windows.
        NormalNC     {Normal}, -- normal text in non-current windows
        Pmenu        {fg = colors.white, bg = colors.gray.darken(40)}, -- Popup menu: normal item.
        PmenuSel     {fg = colors.black, bg = colors.cyan}, -- Popup menu: selected item.
        PmenuSbar    {fg = colors.black, bg = colors.white}, -- Popup menu: scrollbar.
        PmenuThumb   {fg = colors.white, bg = colors.black}, -- Popup menu: Thumb of the scrollbar.
        Question     {fg = colors.green, gui = "bold"}, -- |hit-enter| prompt and yes/no questions
        -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search       {MatchParen}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        SpecialKey   {ErrorMsg}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad     {fg = colors.red, gui = "underline"}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
        SpellCap     {fg = colors.blue, gui = "underline"}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        -- StatusLine   { }, -- status line of current window
        -- StatusLineNC { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine      {fg = colors.white, bg = colors.black.lighten(15)}, -- tab pages line, not active tab page label
        TabLineFill  {fg = colors.white, bg = colors.black}, -- tab pages line, where there are no labels
        TabLineSel   { fg = colors.white, bg = colors.blue, gui = "bold"}, -- tab pages line, active tab page label
        Title        {ModeMsg}, -- titles for output from ":set all", ":autocmd" etc.
        Visual       {CursorColumn}, -- Visual mode selection
        -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg   {fg = colors.red, gui = "bold"}, -- warning messages
        Whitespace   {Comment}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu     {fg = colors.cyan}, -- current match in 'wildmenu' completion

        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.
        -- commented out groups should chain up to their "preferred" group by
        -- default,
        -- Uncomment and edit if you want more specific syntax highlighting.

        Constant       {fg = colors.red}, -- (preferred) any constant
        String         {fg = colors.yellow}, --   a string constant: "this is a string"
        Character      {fg = colors.orange}, --  a character constant: 'c', '\n'
        Number         {fg = colors.cyan}, --   a number constant: 234, 0xff
        Boolean        {fg = colors.green}, --  a boolean constant: TRUE, false
        Float          {fg = colors.magenta}, --    a floating point constant: 2.3e10

        Identifier     {fg = colors.blue}, -- (preferred) any variable name
        Function       {fg = colors.green, gui = "bold"}, -- function name (also: methods for classes)

        Statement      {fg = colors.yellow}, -- (preferred) any statement
        Conditional    {fg = colors.red}, --  if, then, else, endif, switch, etc.
        Repeat         {fg = colors.green}, --   for, do, while, etc.
        Label          {fg = colors.red}, --    case, default, etc.
        Operator       {fg = colors.magenta}, -- "sizeof", "+", "*", etc.
        Keyword        {fg = colors.red}, --  any other keyword
        Exception      {fg = colors.orange}, --  try, catch, throw

        -- PreProc        {}, -- (preferred) generic Preprocessor
        -- Include        { }, --  preprocessor #include
        -- Define         { }, --   preprocessor #define
        -- Macro          { }, --    same as Define
        -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

        Type           {fg = colors.magenta, gui = "bold"}, -- (preferred) int, long, char, etc.
        StorageClass   {Type}, -- static, register, volatile, etc.
        Structure      {Type}, --  struct, union, enum, etc.
        Typedef        {Type}, --  A typedef

        Special        {fg = colors.yellow}, -- (preferred) any special symbol
        SpecialChar    {fg = colors.green}, --  special character in a constant
        Tag            {Special}, --    you can use CTRL-] on this
        Delimiter      {fg = colors.orange}, --  character that needs attention
        SpecialComment {fg = colors.magenta}, -- special things inside a comment
        Debug          {Special}, --    debugging statements

        Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
        Bold       { gui = "bold" },
        Italic     { gui = "italic" },

        -- ("Ignore", below, may be invisible...)
        -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error          {fg = colors.white, bg = colors.red, gui = "bold"}, -- (preferred) any erroneous construct

        Todo           {fg = colors.white, bg = colors.cyan, gui = "bold"}, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        -- These groups are for the native LSP client. Some other LSP clients may
        -- use these groups, or use their own. Consult your LSP client's
        -- documentation.

        -- LspReferenceText                     { }, -- used for highlighting "text" references
        -- LspReferenceRead                     { }, -- used for highlighting "read" references
        -- LspReferenceWrite                    { }, -- used for highlighting "write" references

        -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

        -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
        -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
        -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
        -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

        -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
        -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
        -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
        -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

        -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

        -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
        -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
        -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
        -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

        -- LspCodeLens                          { }, -- Used to color the virtual text of the codelens

        -- These groups are for the neovim tree-sitter highlights.
        -- As of writing, tree-sitter support is a WIP, group names may change.
        -- By default, most of these groups link to an appropriate Vim group,
        -- TSError -> Error for example, so you do not have to define these unless
        -- you explicitly want to support Treesitter's improved syntax awareness.

        -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        -- TSAttribute          { };    -- (unstable) TODO: docs
        -- TSBoolean            { };    -- For booleans.
        -- TSCharacter          { };    -- For characters.
        -- TSComment            { };    -- For comment blocks.
        -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
        -- TSConditional        { };    -- For keywords related to conditionnals.
        -- TSConstant           { };    -- For constants
        -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
        -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
        -- TSError              { };    -- For syntax/parser errors.
        -- TSException          { };    -- For exception related keywords.
        -- TSField              { };    -- For fields.
        -- TSFloat              { };    -- For floats.
        -- TSFunction           { };    -- For function (calls and definitions).
        -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
        -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
        -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
        -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
        -- TSMethod             { };    -- For method calls and definitions.
        -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
        -- TSNone               { };    -- TODO: docs
        -- TSNumber             { };    -- For all numbers
        -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
        -- TSParameter          { };    -- For parameters of a function.
        -- TSParameterReference { };    -- For references to parameters of a function.
        -- TSProperty           { };    -- Same as `TSField`.
        -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
        -- TSPunctBracket       { };    -- For brackets and parens.
        -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
        -- TSRepeat             { };    -- For keywords related to loops.
        -- TSString             { };    -- For strings.
        -- TSStringRegex        { };    -- For regexes.
        -- TSStringEscape       { };    -- For escape characters within a string.
        -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
        -- TSType               { };    -- For types.
        -- TSTypeBuiltin        { };    -- For builtin types.
        -- TSVariable           { };    -- Any variable name that does not have another highlight.
        -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

        -- TSTag                { };    -- Tags like html tag names.
        -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
        -- TSText               { };    -- For strings considered text in a markup language.
        -- TSEmphasis           { };    -- For text to be represented with emphasis.
        -- TSUnderline          { };    -- For text to be represented with an underline.
        -- TSStrike             { };    -- For strikethrough text.
        -- TSTitle              { };    -- Text that is part of a title.
        -- TSLiteral            { };    -- Literal text.
        -- TSURI                { };    -- Any URI like a link or email.

    }
end)

return theme
