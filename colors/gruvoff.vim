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

let s:black           = { "gui": "#282828", "cterm": "0" }
let s:subtle_black    = { "gui": "#3c3836", "cterm": "8" }

let s:dark_red        = { "gui": "#cc241d", "cterm": "1" }
let s:light_red       = { "gui": "#fb4934", "cterm": "9" }

let s:dark_green      = { "gui": "#98971a", "cterm": "2" }
let s:light_green     = { "gui": "#b8bb26", "cterm": "10" }

let s:light_yellow    = { "gui": "#fabd2f", "cterm": "3" }
let s:dark_yellow     = { "gui": "#d79921", "cterm": "11" }

let s:dark_blue       = { "gui": "#458588", "cterm": "4"  }
let s:light_blue      = { "gui": "#83a598", "cterm": "12" }

let s:dark_purple     = { "gui": "#b16286", "cterm": "5" }
let s:light_purple    = { "gui": "#d3869b", "cterm": "13" }

let s:dark_cyan       = { "gui": "#689d6a", "cterm": "6"  }
let s:light_cyan      = { "gui": "#8ec07c", "cterm": "14" }

let s:white           = { "gui": "#ebdbb2", "cterm": "7" }
let s:subtle_white    = { "gui": "#a8898d", "cterm": "15" }

if &background == "dark"
  let s:bg               = s:black
  let s:bg_subtle        = s:subtle_black
  let s:fg               = s:white
  let s:fg_subtle        = s:subtle_white
  let s:accent           = s:light_yellow

  let s:error            = s:light_red
  let s:warning          = s:light_yellow
  let s:question         = s:light_cyan

  let s:diff_change      = s:light_cyan
  let s:diff_add         = s:light_green
  let s:diff_remove      = s:light_red
else
  let s:bg               = s:white
  let s:bg_subtle        = s:actual_white
  let s:fg               = s:black
  let s:fg_subtle        = s:medium_gray
  let s:accent           = s:dark_green

  let s:error            = s:dark_red
  let s:warning          = s:dark_yellow
  let s:question         = s:dark_cyan

  let s:diff_change      = s:dark_cyan
  let s:diff_add         = s:dark_green
  let s:diff_remove      = s:dark_red
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

call s:h("Normal",        {"bg": s:bg, "fg": s:fg})
call s:h("Cursor",        {"bg": s:fg, "fg": s:fg })
call s:h("Comment",       {"fg": s:fg_subtle, "cterm": "italic", "gui": "italic"})

hi! link Constant         Normal
hi! link Character        Normal
hi! link Number           Normal
hi! link Boolean          Normal
hi! link Float            Normal
hi! link String           Normal
hi! link Identifier       Normal
hi! link Function         Normal
hi! link Statement        Normal
hi! link Conditonal       Normal
hi! link Repeat           Normal
hi! link Label            Normal
hi! link Operator         Normal
hi! link Keyword          Normal
hi! link Exception        Normal
hi! link PreProc          Normal
hi! link Include          Normal
hi! link Define           Normal
hi! link Macro            Normal
hi! link PreCondit        Normal
hi! link Type             Normal
hi! link StorageClass     Normal
hi! link Structure        Normal
hi! link Typedef          Normal
hi! link Special          Normal
hi! link SpecialChar      Normal
hi! link Tag              Normal
hi! link Delimiter        Normal
hi! link SpecialComment   Normal
hi! link Debug            Normal

call s:h("Underlined",            {"fg": s:fg, "gui": "underline", "cterm": "underline"})

call s:h("Ignore",                {"fg": s:bg_subtle})

call s:h("Error",                 {"fg": s:fg, "bg": s:error, "cterm": "bold"})
call s:h("Todo",                  {"fg": s:fg, "gui": "bold", "cterm": "bold"})

call s:h("NonText",               {"fg": s:bg_subtle})
call s:h("Directory",             {"fg": s:accent})

call s:h("IncSearch",             {"bg": s:bg_subtle})
call s:h("Search",                {"bg": s:bg_subtle, "fg": s:fg})

call s:h("MoreMsg",               {"fg": s:fg_subtle, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg

call s:h("LineNr",                {"fg": s:bg_subtle, "cterm": "bold"})
call s:h("CursorLineNr",          {"fg": s:fg, "bg": s:bg_subtle, "cterm": "bold"})

call s:h("StatusLine",            {"bg": s:bg_subtle, "fg": s:fg_subtle})
call s:h("StatusLinePrefix",      {"bg": s:white, "fg": s:bg_subtle})
call s:h("StatusLineNC",          {"bg": s:bg, "fg": s:fg_subtle})
call s:h("StatusLineNCPrefix",    {"bg": s:bg_subtle, "fg": s:fg_subtle})

call s:h("VertSplit",             {"bg": s:bg_subtle, "fg": s:bg_subtle})

call s:h("Title",                 {"fg": s:accent})

call s:h("Visual",                {"bg": s:bg_subtle})
call s:h("VisualNOS",             {"bg": s:bg_subtle})

call s:h("Question",              {"fg": s:question})
call s:h("ErrorMsg",              {"fg": s:error})
call s:h("WarningMsg",            {"fg": s:warning})

call s:h("WildMenu",              {"fg": s:bg, "bg": s:fg})

call s:h("Folded",                {"fg": s:fg_subtle})
call s:h("FoldColumn",            {"fg": s:fg_subtle})

call s:h("Pmenu",                 {"fg": s:fg, "bg": s:bg_subtle})
call s:h("PmenuSel",              {"fg": s:bg, "bg": s:fg})
call s:h("PmenuSbar",             {"fg": s:fg, "bg": s:bg_subtle})
call s:h("PmenuThumb",            {"fg": s:fg, "bg": s:bg_subtle})

call s:h("TabLine",               {"fg": s:fg, "bg": s:bg_subtle})
call s:h("TabLineSel",            {"fg": s:accent, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",           {"fg": s:fg, "bg": s:bg_subtle})

call s:h("CursorColumn",          {"bg": s:bg_subtle})
call s:h("CursorLine",            {"fg": s:fg, "bg": s:bg_subtle})

call s:h("ColorColumn",           {"bg": s:bg_subtle})

call s:h("MatchParen",            {"bg": s:bg_subtle, "fg": s:fg})

call s:h("qfLineNr",              {"fg": s:bg_subtle})

call s:h("DiffAdd",               {"fg": s:diff_add})
call s:h("DiffDelete",            {"fg": s:diff_remove})
call s:h("DiffChange",            {"fg": s:diff_change})
call s:h("DiffText",              {"fg": s:fg})

call s:h("SignColumn",            {"fg": s:fg})

hi link diffRemoved               DiffDelete
hi link diffAdded                 DiffAdd

" git-gutter
call s:h("GitGutterAdd",          {"bg": s:bg, "fg": s:diff_add})
call s:h("GitGutterDelete",       {"bg": s:bg, "fg": s:diff_remove})
call s:h("GitGutterChange",       {"bg": s:bg, "fg": s:diff_change})
call s:h("GitGutterChangeDelete", {"bg": s:bg, "fg": s:diff_change})
