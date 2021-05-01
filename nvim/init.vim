" Plugins
call plug#begin('~/.vim/plugged')

" fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" testing
Plug 'vim-test/vim-test'
Plug 'tpope/vim-dispatch'

" syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/jsonc.vim'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" git, linting and autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'

" must-have
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" colorscheme and ui
Plug 'jonathanfilip/vim-lucius'
Plug 'morhetz/gruvbox'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'

call plug#end()

" leader key
let mapleader=" "

" turn off matching parens highlighting
let g:loaded_matchparen=1

" autocommands
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup CLEAN_SETUP
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
augroup END

" disable auto commenting on next line when using single line comments only
inoremap <expr> <enter> getline('.') =~ '^\s*//' ? '<enter><esc>S' : '<enter>'
nnoremap <expr> O getline('.') =~ '^\s*//' ? 'O<esc>S' : 'O'
nnoremap <expr> o getline('.') =~ '^\s*//' ? 'o<esc>S' : 'o'

" other useful remaps
vnoremap <leader>p "_dP

" configure closing tags file types
let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.tsx'
