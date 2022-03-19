fun! ColorMyVim()
  " colorscheme lucius
  " LuciusDark
  " LuciusBlack
  " colorscheme dracula
  " let g:gruvbox_contrast_dark = 'hard'
  " let g:gruvbox_italic = 1
  " colorscheme gruvbox
  colorscheme 1989

  let g:lightline = {
      \ 'colorscheme': 'default'
      \ }

  " tab bar
  hi TabLineFill guifg=Black guibg=White
  hi TabLineSel guifg=White guibg=Black
  hi TabLine guifg=Grey guibg=Black

endfun

call ColorMyVim()
