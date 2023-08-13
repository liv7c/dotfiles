" format code
au FileType html setlocal formatprg=prettier
au FileType gohtmltmpl setlocal formatprg=prettier
au FileType javascript setlocal formatprg=prettier
au FileType svelte setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType css setlocal formatprg=prettier\ --parser\ css
au FileType go setlocal formatprg=gofmt

" go specific
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

" json into jsonc automatically
autocmd BufNewFile,BufRead *.json set filetype=jsonc

" convert njk and ejs filetypes to html
au BufRead,BufNewFile *.njk set filetype=html
au BufRead,BufNewFile *.ejs set filetype=html
au BufRead,BufNewFile *.mdx set filetype=markdown

" correct comments using svelte
if !exists('g:context_filetype#same_filetypes')
  let g:context_filetype#filetypes = {}
endif

let g:context_filetype#filetypes.svelte =
\ [
\   {'filetype' : 'javascript', 'start' : '<script>', 'end' : '</script>'},
\   {
\     'filetype': 'typescript',
\     'start': '<script\%( [^>]*\)\? \%(ts\|lang="\%(ts\|typescript\)"\)\%( [^>]*\)\?>',
\     'end': '',
\   },
\   {'filetype' : 'css', 'start' : '<style \?.*>', 'end' : '</style>'},
\ ]

let g:ft = ''
