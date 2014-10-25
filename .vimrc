set nocompatible
set tabstop=4
set expandtab
set backspace=2
set shiftwidth=4

" line numbers
set number

" clear search highlighting
map \ :noh<cr>
" search preferences
set hlsearch
set incsearch
set ignorecase
set smartcase

" what were these?
set autoindent
set softtabstop=4

" whitespace
set list listchars=tab:»¯,trail:°

" .sh files are bash
let g:is_bash=1

" per-language
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype c setlocal noexpandtab tabstop=8 shiftwidth=8 softtabstop=8
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype haskell setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
