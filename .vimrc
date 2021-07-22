set nocompatible
set relativenumber
set nowrap
set smartcase
set ignorecase
set scrolloff=8
set nohlsearch
set clipboard+=unnamedplus

filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

set nu " Enable line numbers
syntax on " Enable syntax highlighting

" How many columns of whitespace a \t is worth
set tabstop=4
" How many columns of whitespace a level of indentation is worth
set shiftwidth=4
" Use spaces when tabbing
set expandtab
set number
filetype indent on
set autoindent

set incsearch " Enable incremental search

set termwinsize=12x0 " Set terminal size
set splitbelow  " Always split below
set mouse=a  " Enable mouse drag on window splits

set background=dark " dark or light

let python_highlight_all = 1
""""""""""
" Download plug-ins to the ~/.vim/plugged/ directory
call plug#begin()

Plug 'https://github.com/w0ng/vim-hybrid'
Plug 'https://github.com/morhetz/gruvbox'

" FIle Manager incorporation
Plug 'preservim/nerdtree'
" Syntax Highlighting
Plug 'https://github.com/vim-python/python-syntax'

call plug#end()

colorscheme hybrid

filetype plugin indent on

set laststatus=2

" remap split navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" adjust split sizes easier
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>

" change 2 split windows from vertical to horizontal and vice versa
map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K

" Toggle NerdTree
map <F2> :NERDTreeToggle<CR>

" remap ESC to ii
:imap ii <Esc>

" map F5 to save and execute current python file
nmap <F5> <Esc>:w<CR>:!clear;python3 %<CR>

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
