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

" search
set ignorecase
set smartcase
set nohlsearch " remove highlight searches
set incsearch " highlight expressions as you search

" no match parens
set noshowmatch

" no backup
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set hidden " can switch to other buffers even when unsaved changes

" use system clipboard
set clipboard=unnamed

if has('termguicolors')
  set termguicolors
endif


" ui
set background=dark
" set background=light

" settings for coc
set updatetime=300
set shortmess+=c

highlight clear LineNr
" highlight Comment cterm=italic gui=italic
" hi Comment guifg=#777777
" call Base16hi("Comment", g:base16_gui09, "", g:base16_cterm09, "", "", "")
" highlight NormalFloat ctermbg=0 guibg=Black
" hi Pmenu ctermbg=black ctermfg=white
" hi Pmenu guibg=black guifg=white

" highlight Normal guibg=none
" highlight NonText guibg=none
