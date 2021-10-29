set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} " requires compiliation with ruby
"Plugin 'https://github.com/ycm-core/YouCompleteMe.git'
Plugin 'jacoborus/tender.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/syntastic'
Plugin 'junegunn/fzf.vim'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            " required
filetype plugin indent on    " required

if (has("termguicolors"))
    set termguicolors
endif

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif

" Theme
syntax enable
colorscheme tender
let g:airline_theme = 'tender'

" Autoclose
""inoremap " ""<left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
""inoremap { {}<left>
""inoremap {<CR> {<CR>}<ESC>O
""inoremap {;<CR> {<CR>};<ESC>O

"General
set encoding=utf-8
set ruler
set cmdheight=1
set number relativenumber
"set list
"set lcs+=space:·
"set lcs+=tab:>-
map q <Nop>

"Search
set ignorecase
set smartcase
set hlsearch
set incsearch
"Others
set lazyredraw
set magic
set showmatch
set mat=2

"Disable Annoying Indicators
set noerrorbells
set visualbell
set t_vb=
set tm=500

"Left Margin
set foldcolumn=0

"Text, tab, indents
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set linebreak
set textwidth=500

set autoindent
set smartindent
set wrap

set laststatus=2

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
