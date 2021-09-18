fun! ColorMyVim()
  " colorscheme lucius
  " LuciusDark
  " LuciusBlack

  " colorscheme nord
  let g:embark_terminal_italics = 1
  colorscheme embark

  let g:lightline = {
      \ 'colorscheme': 'embark'
      \ }

  " tab bar
  hi TabLineFill guifg=Black guibg=White
  hi TabLineSel guifg=White guibg=Black
  hi TabLine guifg=Grey guibg=Black

endfun

call ColorMyVim()
