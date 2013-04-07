execute pathogen#infect()
syntax on

" Replace tab with 4 spaces.
set expandtab
set shiftwidth=4
set softtabstop=4

set showmode
" 顯示游標所在行列
set cursorline
"set cursorcolumn

set ruler
set number

" hightlight search
set hls
set ignorecase
set incsearch

set ai "autoindent
colorscheme torte
set t_Co=256

set scrolloff=3 "保持上下有三行的距離

" set fileencoding
set fileencodings=utf-8,big5,cp936,default

filetype plugin indent on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd Filetype c setlocal omnifunc=ccomplete#Complete
autocmd Filetype cpp setlocal omnifunc=cppcomplete#Complete

" syntax set
"au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
"au BufRead,BufNewFile *.html set filetype=smarty
au BufNewFile,BufRead *.json set ft=javascript

" statusline
set ls=2
set statusline=%<%f\ %m%=\ %h%r\ %-19(\ [ASCII:%b]\ [%p%%]\ %3l,%02c%03V%)%y
highlight StatusLine term=bold,reverse cterm=bold,reverse

" Removing tailing spaces.
au! BufWrite * mark ' | silent! %s/\s\+$// | norm ''

" Set foldering.
set foldmethod=manual
set foldnestmax=3
highlight Folded ctermbg=black ctermfg=darkcyan
let g:DisableAutoPHPFolding = 1

" Set F1 - F12 shortcut keys
nnoremap <silent> <F1> :NERDTree<CR>
map <silent> <F2> :TagbarToggle<CR>
"nmap <F2> :WMToggle<cr>
"nnoremap <silent> <F12> :TlistToggle<CR>
map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>

" for Taglist
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1
"let Tlist_Use_Right_Window=1
"let Tlist_Auto_Open=0

" for netrw
let g:netrw_liststyle = 3
let g:netrw_winsize = 30

" Tagbar plugin.
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30

" winManager setting
"let g:winManagerWindowLayout = "TagList|BufExplorer"
"let g:winManagerWidth = 30
"let g:defaultExplorer = 0
"nmap <C-W><C-F> :FirstExplorerWindow<cr>
"nmap <C-W><C-B> :BottomExplorerWindow<cr>

" BufExplorer
"let g:bufExplorerDefaultHelp=0       " Do not show default help.
"let g:bufExplorerShowRelativePath=1  " Show relative paths.
"let g:bufExplorerSortBy='mru'        " Sort by most recently used.
"let g:bufExplorerSplitRight=0        " Split left.
"let g:bufExplorerSplitVertical=1     " Split vertically.
"let g:bufExplorerSplitVertSize = 30  " Split width
"let g:bufExplorerUseCurrentWindow=1  " Open in new window.
"autocmd BufWinEnter \[Buf\ List\] setl nonumber
