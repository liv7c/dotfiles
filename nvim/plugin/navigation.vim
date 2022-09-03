" Navigate splits
nnoremap <C-h> <C-w>h " Ctrl + h to move to the left split
nnoremap <C-l> <C-w>l " Ctrl + l to move to the right one

" Navigate windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" switch between last 2 files (super useful one!)
nnoremap ,, <c-^>

" quick fix list navigation
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>

" nvim tree
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>n :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>

