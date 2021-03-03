" Plugins
call plug#begin('~/.vim/plugged')

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" testing
Plug 'vim-test/vim-test'
Plug 'tpope/vim-dispatch'

" syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'cespare/vim-toml'
Plug 'neoclide/jsonc.vim'

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
Plug 'haishanh/night-owl.vim'
Plug 'itchyny/lightline.vim'

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

" disable auto commenting on next line when using single line comments only
inoremap <expr> <enter> getline('.') =~ '^\s*//' ? '<enter><esc>S' : '<enter>'
nnoremap <expr> O getline('.') =~ '^\s*//' ? 'O<esc>S' : 'O'
nnoremap <expr> o getline('.') =~ '^\s*//' ? 'o<esc>S' : 'o'

" configure closing tags file types
let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.tsx'
