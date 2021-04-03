" format code
au FileType html setlocal formatprg=prettier
au FileType template setlocal formatprg=prettier
au FileType javascript setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType css setlocal formatprg=prettier\ --parser\ cs
au FileType go setlocal formatprg=gofmt

" go specific
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

