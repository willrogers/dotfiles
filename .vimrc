set nocompatible
set tabstop=4
set expandtab
set backspace=2
set shiftwidth=4
" clear search highlighting
map \ :noh<cr>

set ignorecase
set smartcase

" per-language
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype c setlocal tabstop=8 shiftwidth=8 softtabstop=8

