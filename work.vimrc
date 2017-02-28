set shell=/bin/bash
" Vundle and plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/MatchTagAlways'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'othree/html5.vim'
call vundle#end()
filetype plugin indent on

" Pymode
let g:pymode_lint = 1
let g:pymode_lint_checker = "pylint"
let g:pymode_lint_write = "pylint"
let g:pymode_rope = 0
" Disable folding on file open
set nofoldenable
" Grey bar at 80 chars
highlight ColorColumn ctermbg=7

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = "sol"
" Always show status line
set laststatus=2
" Fix airline colours
set t_Co=256

" NERDTree abbreviation
map <leader>n :NERDTreeToggle<CR>

" YCM
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:c_syntax_for_h = 1
set tabstop=4
set expandtab
set backspace=2
set shiftwidth=4
syntax on

" line numbers
set number

" enable mouse and don't select line numbers
set mouse=a

" Y should yank to end of line
map Y y$
" clear search highlighting
map <leader>c :noh<cr>
" search preferences
set hlsearch
set incsearch
set ignorecase
set smartcase

" what were these?
"set autoindent
set softtabstop=4

" XML
set foldmethod=syntax
let xml_syntax_folding=1

" whitespace
set list listchars=tab:»¯,trail:°

" .sh files are bash
let g:is_bash=1

" per-language
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype xml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2


