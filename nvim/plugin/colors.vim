fun! ColorMyVim()
  " colorscheme lucius
  " LuciusDark
  " LuciusBlack

  colorscheme onehalfdark

  let g:lightline = {
      \ 'colorscheme': 'onehalfdark'
      \ }

  " tab bar
  hi TabLineFill guifg=Black guibg=White
  hi TabLineSel guifg=White guibg=Black
  hi TabLine guifg=Grey guibg=Black

endfun

call ColorMyVim()
