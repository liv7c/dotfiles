let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugins
call plug#begin()

" fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" testing
Plug 'vim-test/vim-test'
Plug 'tpope/vim-dispatch'

" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" nvim-tree
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'

" syntax highlighting
Plug 'neoclide/jsonc.vim'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
" Plug 'jxnblk/vim-mdx-js'

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'buoto/gotests-vim'

" prisma synthax highlighting
Plug 'pantharshit00/vim-prisma'

" git, linting and autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'

" must-have
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'

" colorscheme and ui
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'jonathanfilip/vim-lucius'
Plug 'sainnhe/everforest'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'

" for tailwind v3
" Plug 'yaegassy/coc-tailwindcss',  {'do': 'npm install && npm run build', 'branch': 'feat/support-v3-and-use-server-pkg'}
Plug 'yaegassy/coc-tailwindcss3', {'do': 'yarn install --frozen-lockfile'}

" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

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

" copy full path of current file name to system clipboard
nnoremap <leader>cp :let @+ = expand("%:p")<CR>

" paste without losing what's in your register
vnoremap <leader>p "_dP

" moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap ,k :m .-2<CR>==
nnoremap ,j :m .+1<CR>==
