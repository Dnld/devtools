" Donald Steinert
" updated November 26, 2016
" https://github.com/Dnld/devtools

" general settings
inoremap jj <Esc>
set ruler
set number
set laststatus=2
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set hlsearch!
set nowrap
nnorema <silent> <Esc><Esc> :let @/=""<CR>

" syntax highlighting and theme
syntax enable
set t_Co=256
colorscheme Tomorrow-Night
set background=dark 

" splitpace configuratin
set splitbelow
set splitright
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" move line up or down
nnoremap <C-J> :m .+1<CR>==
nnoremap <C-K> :m .-2<CR>==
inoremap <C-J> <Esc>:m .+1<CR>==gi
inoremap <C-K> <Esc>:m .-2<CR>==gi
vnoremap <C-J> :m '>+1<CR>gv=gv
vnoremap <C-K> :m '<-2<CR>gv=gv

" explorer settings
let mapleader=" "
map <leader><leader> :Explore<cr>
let g:netrw_banner = 0
let g:netrw_winsize = 100
let g:netrw_liststyle = 3

