" FZF goodies
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

" Mapping for most oftenly used command (old vscode habits)
nnoremap <C-p> :Files<cr>
" Just press <LEADER> + f when on a word to search for it
nnoremap <Leader>f :Ag <C-R><C-W><cr>
" search in buffers
nnoremap <Leader>fb :Buffers<cr>
" project search
nnoremap <Leader>ps :Ag<cr>

" Works for visual mode as well
vnoremap <Leader>f y:Ag <C-R>"<cr>
