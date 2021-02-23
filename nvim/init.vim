" Plugins
call plug#begin('~/.vim/plugged')

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" for testing
Plug 'vim-test/vim-test'
Plug 'tpope/vim-dispatch'

" repeat commands from vim surround
Plug 'tpope/vim-repeat'

" react and typescript
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" git, linting and autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" ui theme
Plug 'jonathanfilip/vim-lucius'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" leader key
let mapleader=" "

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

" autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
" autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" disable auto commenting on next line when using single line comments only
inoremap <expr> <enter> getline('.') =~ '^\s*//' ? '<enter><esc>S' : '<enter>'
nnoremap <expr> O getline('.') =~ '^\s*//' ? 'O<esc>S' : 'O'
nnoremap <expr> o getline('.') =~ '^\s*//' ? 'o<esc>S' : 'o'

" configure closing tags file types
let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.tsx'
