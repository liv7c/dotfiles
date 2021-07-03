fun! ColorMyVim()
  colorscheme lucius
  " LuciusDarkHighContrast
  LuciusBlack

  " let base16colorspace=256
  " colorscheme base16-gruvbox-dark-hard


  let g:lightline = {
      \ 'colorscheme': 'default',
      \ }

  " tab bar
  hi TabLineFill guifg=Black guibg=White
  hi TabLineSel guifg=White guibg=Black
  hi TabLine guifg=Grey guibg=Black

endfun

call ColorMyVim()
