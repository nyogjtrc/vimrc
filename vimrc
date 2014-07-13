" pathogen setting
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()


syntax on

" Replace tab with 4 spaces.
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set showmode
" 顯示游標所在行列
set cursorline

set ruler
set number

" hightlight search
set hls
set ignorecase
set incsearch

set ai "autoindent

" color
colorscheme torte
set t_Co=256

set scrolloff=3 "保持上下有三行的距離

" set fileencoding
set fileencodings=utf-8,big5,cp936,default

filetype plugin indent on

" syntax set
"au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
"au BufRead,BufNewFile *.html set filetype=smarty
au BufNewFile,BufRead *.json set ft=javascript

" statusline
set laststatus=2
"set statusline=%<%f\ %m%=\ %h%r\ %-19(\ [ASCII:%b]\ [%p%%]\ %3l,%02c%03V%)%y
"highlight StatusLine term=bold,reverse cterm=bold,reverse

" airline
let g:airline_powerline_fonts = 1

" Removing tailing spaces.
au! BufWrite *.php mark ' | silent! %s/\s\+$// | norm ''

" Make vim setting works immediately.
autocmd! bufwritepost .vimrc source ~/.vimrc

" Set foldering.
set foldmethod=manual
set foldnestmax=3
highlight Folded ctermbg=black ctermfg=darkcyan
let g:DisableAutoPHPFolding = 1

" Set F1 - F12 shortcut keys
nnoremap <silent> <F1> :NERDTreeToggle<cr>

map <silent> <F2> :TagbarToggle<cr>
map <F5> <Esc>:EnableFastPHPFolds<cr>
map <F6> <Esc>:EnablePHPFolds<cr>
map <F7> <Esc>:DisablePHPFolds<cr>

" Check php syntax
map <F12> <Esc>:!php -l %<cr>

" for netrw
let g:netrw_liststyle = 3
let g:netrw_winsize = 30

" Tagbar plugin.
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30
