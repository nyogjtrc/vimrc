
execute pathogen#infect()
syntax on

set tabstop=4
" 按下 tab 後會輸入的空白數目
set softtabstop=4
" 以空白當tab
set expandtab
" 縮排為四個空白
set shiftwidth=4
" 顯示當前模式
set showmode
" 顯示游標所在行列
set cursorline
set cursorcolumn

" 在狀態列顯示游標所在行列狀態
set ruler
" 顯示行號
set number
" hightlight search
set hls
" 尋找不分大小寫
set ignorecase
" 搜尋時，自動跳到符合的字串
set incsearch
" 自動縮排
set ai
" 色彩主題 torte
colorscheme torte 
set t_Co=256
"let g:molokai_original = 1

set scrolloff=3 "保持上下有三行的距離

" 設定滑鼠游標，不管 normal , visual , select mode 都要用 輸入文字 的游標
set mouseshape+=n:beam,v:beam,s:beam,i:beam

" 游標形狀跟閃爍速度
set guicursor+=n-v-c:block-cursor-blinkwait300-blinkon90-blinkoff90
set guicursor+=i:ver3-cursor-blinkwait200-blinkon110-blinkoff110
set guicursor+=v:ver90-cursor-blinkwait200-blinkon150-blinkoff150

" 設定 gvim 的字型
set guifont=Monaco\ 10

filetype on
filetype plugin on
filetype indent on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd Filetype c setlocal omnifunc=ccomplete#Complete
autocmd Filetype cpp setlocal omnifunc=cppcomplete#Complete
autocmd Filetype python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType perl set omnifunc=perlcomplete#Complete

" syntax set
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.html set filetype=smarty 
autocmd BufNewFile,BufRead *.json set ft=javascript

"nmap <leader>G  :ToggleGitMenu<CR>

" statusline
set ls=2
set statusline=%<%f\ %m%=\ %h%r\ %-19(\ [ASCII:%b]\ [%p%%]\ %3l,%02c%03V%)%y
"set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
"set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ [%p%]
highlight StatusLine term=bold,reverse cterm=bold,reverse

" for Taglist
nnoremap <F12> :TlistToggle<CR>

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0

set fileencodings=utf-8,big5,cp936,default

"for netrw
let g:netrw_liststyle = 3
let g:netrw_winsize = 30

""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "TagList|BufExplorer"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <F2> :WMToggle<cr> 

""""""""""""""""""""""""""""""
" BufExplorer
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
autocmd BufWinEnter \[Buf\ List\] setl nonumber 
