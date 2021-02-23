fun! ColorMyVim()
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  colorscheme lucius
  LuciusDarkHighContrast

  " enable powerline fonts
  let g:airline_powerline_fonts = 1
  let g:airline_theme='simple'

  " tab bar
  hi TabLineFill guifg=Black guibg=White
  hi TabLineSel guifg=White guibg=Black
  hi TabLine guifg=Grey guibg=Black
endfun

call ColorMyVim()
