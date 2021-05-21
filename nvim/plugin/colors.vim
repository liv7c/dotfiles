fun! ColorMyVim()
  colorscheme lucius
  LuciusDark

  " let g:molokai_original = 1
  " colorscheme molokai

  " let g:sonokai_style = 'default'
  " let g:sonokai_enable_italic = 1
  " colorscheme sonokai
  " colorscheme PaperColor

  colorscheme material
  " let g:material_theme_style = ''
  let g:material_terminal_italics = 1

  let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

  " tab bar
  hi TabLineFill guifg=Black guibg=White
  hi TabLineSel guifg=White guibg=Black
  hi TabLine guifg=Grey guibg=Black

  highlight NormalFloat ctermbg=0 guibg=Black
endfun

call ColorMyVim()
