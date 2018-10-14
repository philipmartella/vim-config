let mapleader=","

let g:sessions_dir = '~/Sessions'

let s:color_column_old = 0

let g:vim_markdown_conceal = 0

let g:PHP_outdentphpescape = 0

let g:html_indent_inctags = "html,head,body,table,tbody,tr,ul,ol,div"

let g:lastplace_ignore = "gitcommit,svn,json"

let g:airline_theme='fleet'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let b:csv_arrange_leftalign = 1
let g:csv_autocmd_arrange = 0
let g:csv_autocmd_arrange_size = 1024*4096

let g:signify_sign_change = '='
let g:signify_line_highlight = 0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

let g:NERDTreeDirArrowExpandable="▶"
let g:NERDTreeDirArrowCollapsible="▼"

" Performance
set lazyredraw

" Set locations for swap storage
set directory=~/.swp,/tmp

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

" toggle colored right border after 80 chars
set colorcolumn=81

" Case insensitive search
set ignorecase smartcase hlsearch incsearch

" Line wrapping
set linebreak showbreak=◢\  breakindent breakindentopt=shift:-2

" Autoformatting
set formatoptions+=nj

" Keep sign gutter open
"set signcolumn="yes"

set tabstop=2
set shiftwidth=2
set smartindent

set number
set foldmethod=marker
set cursorline

function! s:ToggleSpellCheck()
	if exists("&l:spell") && &l:spell!=0
		setlocal nospell
	else
		setlocal spell spelllang=en_us
	endif
endfunction

function! s:ToggleColorColumn()
    if s:color_column_old == 0
        let s:color_column_old = &colorcolumn
        windo let &colorcolumn = 0
    else
        windo let &colorcolumn=s:color_column_old
        let s:color_column_old = 0
    endif
endfunction

function! <SID>StripWhite()
  %s/[ \t]\+$//ge
  %s!^\( \+\)\t!\=StrRepeat("\t", 1 + strlen(submatch(1)) / 8)!ge
endfunction

autocmd BufWritePre * :call <SID>StripWhite()
autocmd InsertEnter * :set nocursorline
autocmd InsertLeave * :set cursorline

filetype indent on
filetype plugin on
syntax on

colo fleet

"Colemak keymaps
nnoremap f e|xnoremap f e|onoremap f e|
nnoremap p r|xnoremap p r|onoremap p r|
nnoremap g t|xnoremap g t|onoremap g t|
nnoremap j y|xnoremap j y|onoremap j y|
nnoremap l u|xnoremap l u|onoremap l u|
nnoremap u i|xnoremap u i|onoremap u i|
nnoremap y o|xnoremap y o|onoremap y o|
nnoremap ; p|xnoremap ; p|onoremap ; p|
nnoremap r s|xnoremap r s|onoremap r s|
nnoremap s d|xnoremap s d|onoremap s d|
nnoremap t f|xnoremap t f|onoremap t f|
nnoremap d g|xnoremap d g|onoremap d g|
nnoremap n j|xnoremap n j|onoremap n j|
nnoremap e k|xnoremap e k|onoremap e k|
nnoremap i l|xnoremap i l|onoremap i l|
nnoremap o ;|xnoremap o ;|onoremap o ;|
nnoremap k n|xnoremap k n|onoremap k n|
nnoremap F E|xnoremap F E|onoremap F E|
nnoremap P R|xnoremap P R|onoremap P R|
nnoremap G T|xnoremap G T|onoremap G T|
nnoremap J Y|xnoremap J Y|onoremap J Y|
nnoremap L U|xnoremap L U|onoremap L U|
nnoremap U I|xnoremap U I|onoremap U I|
nnoremap Y O|xnoremap Y O|onoremap Y O|
nnoremap R S|xnoremap R S|onoremap R S|
nnoremap S D|xnoremap S D|onoremap S D|
nnoremap T F|xnoremap T F|onoremap T F|
nnoremap D G|xnoremap D G|onoremap D G|
nnoremap N J|xnoremap N J|onoremap N J|
nnoremap E K|xnoremap E K|onoremap E K|
nnoremap I L|xnoremap I L|onoremap I L|
nnoremap O :|xnoremap O :|onoremap O :|
nnoremap K N|xnoremap K N|onoremap K N|

nnoremap dd gg|xnoremap dd gg|onoremap dd gg|

exec 'nnoremap <Leader>ss :mksession! ' . g:sessions_dir . '/'
exec 'nnoremap <Leader>sr :so ' . g:sessions_dir . '/'

"Colemak plugin keymaps
let NERDTreeMapOpenSplit = "k"
let NERDTreeMapOpenExpl = "l"

"Custom keymaps
xnoremap ; pgvy
nnoremap <silent> <Leader><Space> :nohlsearch<Bar>:echo<CR>
nnoremap <silent> <Leader>8 :call <SID>ToggleColorColumn()<CR>
nnoremap <silent> <Leader>7 :call <SID>ToggleSpellCheck()<CR>
nnoremap <Leader>9 :SignifyToggleHighlight<CR>
map <Leader>a :%y+<CR>
map <silent> <Leader>k :NERDTreeToggle<CR>
map <Leader>w :set nowrap!<CR>
map <C-H> :tabp<CR>
map <C-I> :tabn<CR>
map <silent> <Leader>h :wincmd h<CR>
map <silent> <Leader>n :wincmd j<CR>
map <silent> <Leader>e :wincmd k<CR>
map <silent> <Leader>i :wincmd l<CR>

