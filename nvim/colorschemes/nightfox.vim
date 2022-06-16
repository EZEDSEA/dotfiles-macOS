" Settings for NightFox colorscheme
" https://github.com/EdenEast/nightfox.nvim

set termguicolors
set background=dark

silent! colorscheme nightfox

let g:lightline = {
    \   'colorscheme': 'nightfox',
    \   'component': { 'lineinfo': '⭡ %3l:%-2v' },
    \ }
