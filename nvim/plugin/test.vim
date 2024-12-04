" Vim test
let g:test#preserve_screen = 1
let test#strategy = "dispatch_background" " to start tests in other tmux window
nmap <silent> <leader>tf :TestFile<CR>

let test#go#gotest#options = {
  \ 'all':   '-v',
\}
