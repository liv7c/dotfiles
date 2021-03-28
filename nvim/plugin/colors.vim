fun! ColorMyVim()
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  " colorscheme lucius
  " LuciusDarkHighContrast
  let g:material_terminal_italics = 1
  let g:material_theme_style = 'darker'
  colorscheme material

  let g:lightline = {
      \ 'colorscheme': 'material_vim',
      \ }

  " tab bar
  hi TabLineFill guifg=Black guibg=White
  hi TabLineSel guifg=White guibg=Black
  hi TabLine guifg=Grey guibg=Black
endfun

call ColorMyVim()
