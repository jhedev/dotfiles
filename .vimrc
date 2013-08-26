"status line
set modeline
"set statusline=%F%m%r%h%w\ [\%03.3b]\ [\%02.2B]\ [%04l,%04v]\ %{GitBranch()}
set laststatus=2
set wildmenu

"tabs
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number

"searching
set incsearch
set ignorecase
set smartcase


execute pathogen#infect()
set nocompatible
filetype plugin on
filetype indent on

" relative line numbers when in inesert mode
autocmd InsertEnter * :set relativenumber
autocmd InsertLeave * :set number

syntax on
set background=dark

cmap w!! %!sudo tee > /dev/null %

if $COLORTERM == 'gnome-terminal'
      set t_Co=256
endif

"Powerline 
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'
set guifont=Menlo\ Regular\ for\ Powerline:h15


"NERDTree
map <C-n> :NERDTreeToggle<CR>

