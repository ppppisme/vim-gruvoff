" Name:       gruvoff.vim
" Version:    0.1
" Maintainer: github.com/vladgor
" License:    GNU General Public License  (GPLv3)
"
" A lighter gruvbox theme with most of the syntax off. Structure of this
" file is copied from the vim-colors-off theme:
"
" https://github.com/pbrisbin/vim-colors-off
"
"""

highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name='gruvoff'

let s:black           = { "gui": "#282828", "cterm": "235" }
let s:subtle_black    = { "gui": "#3c3836", "cterm": "237" }
let s:light_black     = { "gui": "#504945", "cterm": "239" }
let s:lighter_black   = { "gui": "#665c54", "cterm": "241" }

let s:medium_gray     = { "gui": "#7c6f64", "cterm": "243" }
let s:light_gray      = { "gui": "#a89984", "cterm": "246" }
let s:lighter_gray    = { "gui": "#d5c4a1", "cterm": "250" }

let s:white           = { "gui": "#ebdbb2", "cterm": "223" }
let s:actual_white    = { "gui": "#ffffff", "cterm": "229" }

let s:dark_red        = { "gui": "#cc241d", "cterm": "124" }
let s:light_red       = { "gui": "#fb4934", "cterm": "167" }

let s:dark_blue       = { "gui": "#458588", "cterm": "66"  }
let s:light_blue      = { "gui": "#83a598", "cterm": "109" }

let s:dark_cyan       = { "gui": "#689d6a", "cterm": "72"  }
let s:light_cyan      = { "gui": "#8ec07c", "cterm": "108" }

let s:dark_green      = { "gui": "#98971a", "cterm": "106" }
let s:light_green     = { "gui": "#b8bb26", "cterm": "142" }

let s:dark_purple     = { "gui": "#b16286", "cterm": "132" }
let s:light_purple    = { "gui": "#d3869b", "cterm": "175" }

let s:light_yellow    = { "gui": "#fabd2f", "cterm": "214" }
let s:dark_yellow     = { "gui": "#d79921", "cterm": "172" }

if &background == "dark"
  let s:bg              = s:black
  let s:bg_subtle       = s:subtle_black
  let s:bg_very_subtle  = s:light_black
  let s:norm            = s:white
  let s:norm_subtle     = s:medium_gray
  let s:purple          = s:light_purple
  let s:cyan            = s:light_cyan
  let s:green           = s:light_green
  let s:red             = s:light_red
  let s:visual          = s:lighter_black
else
  let s:bg              = s:white
  let s:bg_subtle       = s:light_gray
  let s:bg_very_subtle  = s:lighter_gray
  let s:norm            = s:light_black
  let s:norm_subtle     = s:lighter_black
  let s:purple          = s:dark_purple
  let s:cyan            = s:dark_cyan
  let s:green           = s:dark_green
  let s:red             = s:dark_red
  let s:visual          = s:light_blue
endif

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",        {"bg": s:bg, "fg": s:norm})
call s:h("Cursor",        {"bg": s:light_blue, "fg": s:norm })
call s:h("Comment",       {"fg": s:norm_subtle, "gui": "italic"})

"call s:h("Constant",      {"fg": s:cyan})
hi! link Constant         Normal
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant

"call s:h("Identifier",    {"fg": s:dark_blue})
hi! link Identifier       Normal
hi! link Function         Identifier

"call s:h("Statement",     {"fg": s:green})
hi! link Statement        Normal
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Operator         Statement
hi! link Keyword          Statement
hi! link Exception        Statement

"call s:h("PreProc",       {"fg": s:red})
hi! link PreProc          Normal
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

"call s:h("Type",          {"fg": s:purple})
hi! link Type             Normal
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

"call s:h("Special",       {"fg": s:light_red})
hi! link Special          Normal
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h("Underlined",            {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",                {"fg": s:bg})
call s:h("Error",                 {"fg": s:actual_white, "bg": s:light_red, "cterm": "bold"})
call s:h("Todo",                  {"fg": s:actual_white, "gui": "bold", "cterm": "bold"})
call s:h("SpecialKey",            {"fg": s:light_green})
call s:h("NonText",               {"fg": s:light_black})
call s:h("Directory",             {"fg": s:dark_blue})
call s:h("ErrorMsg",              {"fg": s:light_red})
call s:h("IncSearch",             {"bg": s:visual})
call s:h("Search",                {"bg": s:bg_subtle, "fg": s:norm})
call s:h("MoreMsg",               {"fg": s:light_gray, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",                {"fg": s:bg_very_subtle})
call s:h("CursorLineNr",          {"fg": s:light_yellow, "bg": s:bg_subtle})
call s:h("Question",              {"fg": s:light_red})
call s:h("StatusLine",            {"bg": s:bg_subtle, "fg": s:light_gray})
call s:h("StatusLinePrefix",      {"bg": s:white, "fg": s:medium_gray})
call s:h("StatusLineNC",          {"bg": s:bg, "fg": s:medium_gray})
call s:h("StatusLineNCPrefix",    {"bg": s:bg_subtle, "fg": s:medium_gray})
call s:h("VertSplit",             {"bg": s:bg_very_subtle, "fg": s:bg_very_subtle})
call s:h("Title",                 {"fg": s:dark_blue})
call s:h("Visual",                {"bg": s:visual})
call s:h("VisualNOS",             {"bg": s:bg_subtle})
call s:h("WarningMsg",            {"fg": s:red})
call s:h("WildMenu",              {"fg": s:bg, "bg": s:norm})
call s:h("Folded",                {"fg": s:medium_gray})
call s:h("FoldColumn",            {"fg": s:bg_subtle})
call s:h("DiffAdd",               {"fg": s:light_green})
call s:h("DiffDelete",            {"fg": s:light_red})
call s:h("DiffChange",            {"fg": s:dark_yellow})
call s:h("DiffText",              {"fg": s:dark_blue})
call s:h("SignColumn",            {"fg": s:light_green})

if has("gui_running")
  call s:h("SpellBad",            {"gui": "underline", "sp": s:red})
  call s:h("SpellCap",            {"gui": "underline", "sp": s:light_green})
  call s:h("SpellRare",           {"gui": "underline", "sp": s:light_red})
  call s:h("SpellLocal",          {"gui": "underline", "sp": s:dark_green})
else
  call s:h("SpellBad",            {"cterm": "underline", "fg": s:red})
  call s:h("SpellCap",            {"cterm": "underline", "fg": s:light_green})
  call s:h("SpellRare",           {"cterm": "underline", "fg": s:light_red})
  call s:h("SpellLocal",          {"cterm": "underline", "fg": s:dark_green})
endif

call s:h("Pmenu",                 {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuSel",              {"fg": s:norm, "bg": s:light_blue})
call s:h("PmenuSbar",             {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb",            {"fg": s:norm, "bg": s:bg_subtle})
call s:h("TabLine",               {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("TabLineSel",            {"fg": s:light_blue, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",           {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("CursorColumn",          {"bg": s:bg_very_subtle})
call s:h("CursorLine",            {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("ColorColumn",           {"bg": s:bg_subtle})

call s:h("MatchParen",            {"bg": s:bg_subtle, "fg": s:norm})
call s:h("qfLineNr",              {"fg": s:medium_gray})

call s:h("htmlH1",                {"bg": s:bg, "fg": s:norm})
call s:h("htmlH2",                {"bg": s:bg, "fg": s:norm})
call s:h("htmlH3",                {"bg": s:bg, "fg": s:norm})
call s:h("htmlH4",                {"bg": s:bg, "fg": s:norm})
call s:h("htmlH5",                {"bg": s:bg, "fg": s:norm})
call s:h("htmlH6",                {"bg": s:bg, "fg": s:norm})

hi link diffRemoved                DiffDelete
hi link diffAdded                  DiffAdd

" git-gutter
call s:h("GitGutterAdd",          {"bg": s:bg, "fg": s:light_green})
call s:h("GitGutterDelete",       {"bg": s:bg, "fg": s:light_red})
call s:h("GitGutterChange",       {"bg": s:bg, "fg": s:light_blue})
call s:h("GitGutterChangeDelete", {"bg": s:bg, "fg": s:light_cyan})
