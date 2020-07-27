set encoding=utf-8
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

set rtp+=~/.vim/bundle/Vundle.vim
" Vundle stuff
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'preservim/nerdtree' " nerd tree
Plugin 'vim-airline/vim-airline'
Plugin 'Xuyuanp/nerdtree-git-plugin' " nerd tree git plugin
Plugin 'sheerun/vim-polyglot' " syntax detection
Bundle 'ycm-core/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter' " shows git changes
Plugin 'frazrepo/vim-rainbow' " shows colorful curly braces
call vundle#end()          
" No more Vundle stuff

:bel terminal
" Nerd Tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" You Complete Me
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

" Settings
set background=dark
set ignorecase " disable case sensitive search
set incsearch " real time search
set smartcase " case sensitive search on uppercase
set smartindent " enable smart indentation
set wildmenu " enable command completion
set nowrap " disable line wrapping
set bs=2
set mouse=a
syntax on