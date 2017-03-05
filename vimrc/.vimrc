filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set number

if $TERM == "xterm-256color"
    set t_Co=256
endif

call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'

call plug#end()

autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

syntax enable
set background=dark

let g:solarized_contrast   = "high"
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
colorscheme solarized

let g:indentLine_enabled = 1
let g:indentLine_setColors = 1
let g:indentLine_color_term = 239
let g:indentLine_char = '|'
