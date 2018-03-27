execute pathogen#infect()
syntax on
colorscheme distinguished
filetype plugin indent on

let g:airline#extensions#syntastic#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2
let python_highlight_all=1
set encoding=utf-8
set number
set hlsearch

" sane backspace behaviour
set backspace=indent,eol,start

" Set up sane tab behaviours
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79

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
let g:syntastic_check_on_wq = 1

" Use flake8 for python
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_exec = '/Users/daudet/.pyenv/shims/flake8'

" Set Runtime Path to use FZF installed via Homebrew
set rtp+=/usr/local/opt/fzf

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
map <silent> <C-f> :Rg<CR>

" Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
map <silent> <C-o> :Files<CR>
