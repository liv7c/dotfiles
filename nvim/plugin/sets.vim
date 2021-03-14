" tab and indentation
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

" disable auto comments
set formatoptions-=c formatoptions-=r formatoptions-=o

" other useful options
set shell=bash
set exrc " use local project vimrc if there is one
set cmdheight=1 " give more space for displaying messages
set noerrorbells

set updatetime=50 " quicker update time
set completeopt=menu,preview " autocomplete

set nu " line numbers...
set relativenumber

set scrolloff=5 " scroll off when you get to the end of buffer

set signcolumn=number

" ui
syntax enable " syntax highlighting
set termguicolors

" search
set nohlsearch " remove highlight searches
set incsearch " highlight expressions as you search

" no backup
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set hidden " can switch to other buffers even when unsaved changes

" use system clipboard
set clipboard=unnamed

" ui
set background=dark

" settings for coc
set updatetime=300
set shortmess+=c

highlight clear LineNr
highlight Comment cterm=italic gui=italic
