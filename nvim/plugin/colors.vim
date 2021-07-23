fun! ColorMyVim()
  colorscheme lucius
  " LuciusDarkHighContrast
  LuciusBlack

  " let g:material_terminal_italics = 1
  " let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
  " let g:material_theme_style = 'ocean'
  " colorscheme material

  let g:lightline = {
      \ 'colorscheme': 'default'
      \ }

  " tab bar
  hi TabLineFill guifg=Black guibg=White
  hi TabLineSel guifg=White guibg=Black
  hi TabLine guifg=Grey guibg=Black

endfun

call ColorMyVim()
