execute pathogen#infect()
syntax on
filetype plugin indent on

let python_highlight_all=1
set encoding=utf-8
set number

" sane backspace behaviour
set backspace=indent,eol,start


" Set up sane tab behaviours
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Let's try some spell-checking
set spelllang=en_us

" Nice right-margin guide
set colorcolumn=80

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Na-na na-na na-na na Leader
let mapleader=","

" Make the clipboard work with OSX
set clipboard=unnamed

" Open Nerd Tree with control-n 
map <C-n> :NERDTreeToggle<CR>

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Use flake8 for python
let g:syntastic_python_checkers = ['flake8']
