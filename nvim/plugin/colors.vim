fun! ColorMyVim()
  colorscheme lucius
  " LuciusDarkHighContrast
  LuciusDark
  " LuciusBlack

  let g:lightline = {
      \ 'colorscheme': 'default'
      \ }

  " tab bar
  hi TabLineFill guifg=Black guibg=White
  hi TabLineSel guifg=White guibg=Black
  hi TabLine guifg=Grey guibg=Black

endfun

call ColorMyVim()
