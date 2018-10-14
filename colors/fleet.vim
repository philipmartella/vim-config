" Vim color file
"
" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="fleet"

" highlight groups
hi Normal	                  guifg=White guibg=grey20
hi Cursor	                  guibg=khaki guifg=slategrey
"hi CursorIM
hi CursorLine               cterm=none ctermbg=17 guibg=darkred guifg=white
hi CursorLineNr             cterm=bold ctermbg=0 ctermfg=11 guibg=darkred guifg=white
hi CursorColumn             cterm=none ctermbg=17
hi Column                   ctermbg=4
hi ColorColumn              ctermbg=52
hi Directory	              ctermfg=12
hi Folded	                  cterm=none ctermbg=none ctermfg=8 guibg=grey30 guifg=gold
hi FoldColumn               cterm=none ctermbg=none ctermfg=8 guibg=grey30 guifg=tan
hi IncSearch                cterm=bold ctermfg=17 ctermbg=10 guifg=slategrey guibg=khaki
hi LineNr                   ctermbg=17 ctermfg=100
hi ModeMsg                  cterm=none ctermfg=brown guifg=goldenrod
hi MoreMsg                  ctermfg=darkgreen guifg=SeaGreen
hi ErrorMsg	                cterm=bold ctermfg=7 ctermbg=1
hi NonText                  cterm=bold ctermfg=21 guifg=LightBlue guibg=grey30
hi Question                 ctermfg=2 guifg=springgreen
hi Search                   cterm=bold ctermfg=17 ctermbg=11 guibg=peru guifg=wheat
hi SpecialKey	              ctermfg=2 guifg=yellowgreen
hi StatusLine               cterm=bold,reverse ctermfg=91 ctermbg=Gray gui=none guibg=#c2bfa5 guifg=black
hi StatusLineNC             cterm=reverse ctermfg=53 ctermbg=Gray gui=none guibg=#c2bfa5 guifg=grey50
hi SignColumn               ctermbg=17 guibg=darkgray
hi TabLineFill              ctermfg=53 ctermbg=black
hi TabLine                  cterm=none ctermfg=Black ctermbg=darkgray
hi TabLineSel               cterm=none ctermfg=white ctermbg=none
hi TabLineMod               cterm=underline
hi Title	                  ctermbg=none ctermfg=10 guifg=indianred
hi VertSplit                cterm=none ctermbg=53 ctermfg=0 guibg=#c2bfa5 guifg=grey50 gui=none
hi Visual	                  cterm=reverse ctermbg=0 gui=none guifg=khaki guibg=olivedrab
hi VisualNOS                cterm=bold,underline
hi WarningMsg               ctermfg=1 guifg=salmon
hi WildMenu                 ctermfg=0 ctermbg=3
"hi Menu
"hi Scrollbar
"hi Tooltip

" Spell Check Colors
hi SpellBad                 cterm=underline ctermfg=red ctermbg=none
hi SpellCap                 cterm=underline
hi SpellRare                cterm=underline
hi SpellLocal               cterm=underline

" CSV colors
hi CSVColumnEven            ctermbg=0 guibg=DarkBlue
hi CSVColumnOdd             ctermbg=0 guibg=DarkMagenta
hi CSVColumnHeaderEven      term=bold ctermbg=darkgray
hi CSVColumnHeaderOdd       term=bold ctermbg=darkgray

" Diff
hi DiffAdd                  cterm=none ctermbg=22 ctermfg=none
hi DiffChange               cterm=none ctermbg=25 ctermfg=none
hi DiffDelete	              cterm=bold ctermbg=88 ctermfg=none
hi DiffText                 cterm=bold ctermbg=1

" signify
hi SignifySignAdd           cterm=bold ctermbg=17  ctermfg=2
hi SignifySignDelete        cterm=bold ctermbg=17  ctermfg=9
hi SignifySignChange        cterm=bold ctermbg=17  ctermfg=11
hi link SignifyLineAdd      DiffAdd
hi link SignifyLineChange   DiffChange
hi link SignifyLineDelete   DiffDelete

" syntax highlighting groups
hi Boolean                  cterm=none ctermbg=none ctermfg=94
hi Comment                  cterm=none ctermbg=none ctermfg=4 guifg=SkyBlue
hi Constant                 cterm=none ctermbg=none ctermfg=94 guifg=#ffa0a0
hi Error	                  cterm=bold ctermbg=1 ctermfg=15
hi Exception                cterm=none ctermbg=none ctermfg=13
hi Function                 cterm=none ctermbg=none ctermfg=7
hi Ignore	                  cterm=bold ctermbg=none ctermfg=8 guifg=grey40
hi Identifier               cterm=none ctermbg=none ctermfg=6 guifg=palegreen
hi Keyword                  cterm=none ctermbg=none ctermfg=2
hi Number                   cterm=none ctermbg=none ctermfg=94
hi Operator                 cterm=none ctermbg=none ctermfg=3
hi PreProc                  cterm=none ctermbg=none ctermfg=5 guifg=indianred
hi Special                  cterm=none ctermbg=none ctermfg=5 guifg=navajowhite
hi SpecialChar              cterm=none ctermbg=none ctermfg=5
hi Statement                cterm=none ctermbg=none ctermfg=3 guifg=khaki
hi StorageClass             cterm=none ctermbg=none ctermfg=2
hi String                   cterm=none ctermbg=none ctermfg=94
hi Todo                     cterm=bold ctermbg=6 ctermfg=15 guifg=orangered guibg=yellow2
hi Type                     cterm=none ctermbg=none ctermfg=14 guifg=darkkhaki
hi Underlined	              cterm=underline ctermbg=none ctermfg=5
hi phpDocTags               cterm=none ctermbg=none ctermfg=5
