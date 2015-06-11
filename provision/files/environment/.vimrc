" Required by Vundle 
set nocompatible
filetype plugin indent off
syntax off

" Init Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Start Vundle
call vundle#begin()

" Plugins from GitHub
Plugin 'gmarik/Vundle.vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'python-rope/ropevim'

" End Vundle 
call vundle#end()

" After Vundle things can be turned on
filetype plugin indent on
syntax on

" Setup powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Color settings
set t_Co=256
set background=dark
colorscheme Tomorrow-Night

" Editor settings
set encoding=utf8
set laststatus=2
set cursorline
set number
set numberwidth=3
set showcmd
set noshowmode
set colorcolumn=80
set wildmenu
set wildmode=longest:list,full
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Custom key mappings
map <F3> :NERDTreeToggle<CR>
"map <F12> :let &background = ( &background == "dark" ? "light" : "dark" )<CR>
map <F5> :SyntasticCheck python pylint pep8
map <F6> :Errors<CR>

" Open NERDTree if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if only NERDTree was left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Code checkers
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_python_checkers=["python", "pylint", "pep8"]
let g:syntastic_error_symbol="X"
let g:syntastic_warning_symbol="!"
let g:syntastic_style_error_symbol="*"
let g:syntastic_style_warning_symbol="+"

