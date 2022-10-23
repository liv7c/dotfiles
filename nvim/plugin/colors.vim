fun! ColorMyVim()
  " colorscheme lucius
  " LuciusLight
  " LuciusWhite
  " LuciusBlack
  " LuciusDark

  " let g:space_vim_dark_background = 235
  " color space-vim-dark

  let g:gruvbox_italicize_strings = 1
  let g:gruvbox_contrast_dark = 'hard'
  " let g:gruvbox_contrast_light = 'hard'
  colorscheme gruvbox
  " let g:space_vim_dark_background = 234
  " colorscheme space-vim-dark
  " hi Comment cterm=italic

  " let g:molokai_original = 1
  " colorscheme molokai
  " colorscheme dracula
  colorscheme gruvbox

  " colorscheme PaperColor

  let g:lightline = {
      \ 'colorscheme': 'gruvbox'
      \ }

  " tab bar
  " hi TabLineFill guifg=Black guibg=White
  " hi TabLineSel guifg=White guibg=Black
  " hi TabLine guifg=Grey guibg=Black

endfun

call ColorMyVim()
