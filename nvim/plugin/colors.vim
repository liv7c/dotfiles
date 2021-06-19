fun! ColorMyVim()
  colorscheme lucius
  LuciusDarkHighContrast
  " LuciusBlack

  " let base16colorspace=256
  " colorscheme base16-gruvbox-dark-hard

  " colorscheme codedark

  let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }

  " tab bar
  hi TabLineFill guifg=Black guibg=White
  hi TabLineSel guifg=White guibg=Black
  hi TabLine guifg=Grey guibg=Black

  " highlight NormalFloat ctermbg=0 guibg=Black
endfun

call ColorMyVim()
