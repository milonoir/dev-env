execute pathogen#infect()

"""
""" General settings
"""
syntax enable
set noshowmode
set number
set numberwidth=3
set encoding=utf8
set cursorline
set showcmd
set cmdheight=1
set wildmenu
set ruler
filetype indent on

"""
""" Powerline status
"""
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2

"""
""" Color settings
"""
if has("gui_running")
    set t_Co=256
endif

if $COLORTERM == "gnome-terminal"
    set t_Co=256
endif

set background=dark
colorscheme badwolf

"colorscheme solarized
"call togglebg#map("<F4>")

"let g:solarized_termcolors=256

"""
""" TAB settings
"""
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4

