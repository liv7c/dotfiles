" linter / ALE config
nnoremap ]r :ALENextWrap<CR> " move to the next ALE warning / error
nnoremap [r :ALEPreviousWrap<CR> " move to the previous ALE warning / error
nnoremap <leader>d :ALEDetail<cr> " show the full message

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_linters = {'javascript': ['eslint'], 'javascriptreact': ['eslint'], 'typescript': ['tsserver', 'eslint'], 'typescriptreact': ['tsserver', 'eslint']}
let g:ale_fixers = {'javascript': ['prettier'], 'javascriptreact': ['prettier'], 'typescript': ['prettier'], 'typescriptreact': ['prettier']}
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_delay = 0
let g:ale_set_quickfix = 0
let g:ale_set_loclist = 0
let g:ale_javascript_eslint_executable = 'eslint --cache'
