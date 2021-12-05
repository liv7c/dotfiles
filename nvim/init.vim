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

" nerd tree
Plug 'preservim/nerdtree'

" syntax highlighting
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/jsonc.vim'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'
" Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'jxnblk/vim-mdx-js'
Plug 'pantharshit00/vim-prisma'

" svelte related
Plug 'evanleck/vim-svelte'
Plug 'Shougo/context_filetype.vim'

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
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'itchyny/lightline.vim'

Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

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

" configure closing tags file types
let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.tsx, *.tmpl'

" Useful remaps
" copy the rest of the line from the location you are in the line
nnoremap Y y$

" make file executable
nnoremap <leader>x :!chmod +x %<CR>

" create new tmux session quickly using custom script
nnoremap <silent> <C-s> :silent !tmux neww tmux_sessioner<CR>

" moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap ,k :m .-2<CR>==
nnoremap ,j :m .+1<CR>==
