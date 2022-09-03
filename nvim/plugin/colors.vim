fun! ColorMyVim()
  colorscheme lucius
  LuciusDark
  " LuciusWhite
  " LuciusBlack

  " let g:space_vim_dark_background = 235
  " color space-vim-dark

  " let g:gruvbox_italicize_strings = 1
  " let g:gruvbox_contrast_dark = 'hard'
  " colorscheme gruvbox

  " let g:molokai_original = 1
  " colorscheme molokai
  " colorscheme dracula
  " colorscheme embark

  " let g:everforest_background = 'hard'
  " let g:everforest_better_performance = 1
  " colorscheme everforest

  let g:lightline = {
      \ 'colorscheme': 'powerline'
      \ }

  " tab bar
  hi TabLineFill guifg=Black guibg=White
  hi TabLineSel guifg=White guibg=Black
  hi TabLine guifg=Grey guibg=Black

endfun

call ColorMyVim()
