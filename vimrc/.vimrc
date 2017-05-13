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
"
Plug 'pseewald/vim-anyfold'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
Plug 'python-mode/python-mode'

"Plug 'Rip-Rip/clang_complete'

Plug 'powerline/powerline'

call plug#end()

autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

syntax enable
set background=dark
"set background=light

let g:solarized_contrast   = "high"
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
colorscheme solarized

let g:indentLine_enabled = 1
let g:indentLine_setColors = 1
let g:indentLine_color_term = 239
let g:indentLine_char = '|'

let anyfold_activatate = 1
set foldlevel=0

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_balloons = 1

"let g:syntastic_auto_loc_list = 2
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_balloons = 0
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_ignore_files = ['\.min\.js$', '\.min\.css$']
"let g:syntastic_loc_list_height = 5
"let g:syntastic_warning_symbol = '✗'
"let g:syntastic_style_error_symbol = '∆'
"let g:syntastic_style_warning_symbol = '∆'

"let g:syntastic_html_checkers = []
"let g:syntastic_java_checkers = []
"let g:syntastic_javascript_checkers = ['standard']
"let g:syntastic_json_checkers = ['jsonlint']
"let g:syntastic_lua_checkers = []
"let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_ruby_checkers = ['mri']
"let g:syntastic_sh_checkers = ['shellcheck']

"let g:pymode = 1

let g:ycm_global_ycm_extra_conf = '/home/darek/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"path to directory where library can be found
let g:clang_library_path='/usr/lib/x86_64-linux-gnu/libclang.so'

set rtp+=$HOME/.vim/plugged/powerline/powerline/bindings/vim/

" Always show statusline
set laststatus=2
"
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
