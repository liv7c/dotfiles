fun! ColorMyVim()
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  colorscheme night-owl
  " colorscheme lucius
  " LuciusDarkHighContrast

  let g:lightline = {
      \ 'colorscheme': 'nightowl',
      \ }

  " tab bar
  hi TabLineFill guifg=Black guibg=White
  hi TabLineSel guifg=White guibg=Black
  hi TabLine guifg=Grey guibg=Black
endfun

call ColorMyVim()
