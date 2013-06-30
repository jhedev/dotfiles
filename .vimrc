"Window Handling
"nmap w <C-W>

"status line
set modeline
set statusline=%F%m%r%h%w\ [\%03.3b]\ [\%02.2B]\ [%04l,%04v]
set laststatus=2
set wildmenu

"tabs
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number

set nocompatible
filetype plugin on
filetype indent on

" relative line numbers when in inesert mode
autocmd InsertEnter * :set relativenumber
autocmd InsertLeave * :set number

syntax on

cmap w!! %!sudo tee > /dev/null %

if $COLORTERM == 'gnome-terminal'
      set t_Co=256
endif
