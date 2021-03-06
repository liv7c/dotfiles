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

" nerd tree
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
