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

syntax on
colorscheme Monokai

cmap w!! %!sudo tee > /dev/null %

if $COLORTERM == 'gnome-terminal'
      set t_Co=256
endif

"Powerline 
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'
set guifont=Menlo\ Regular\ for\ Powerline:h15


"Mappings
let mapleader = ','
".vimrc 
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
"NERDTree
map <C-n> :NERDTreeToggle<CR>
"quotation
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
"Esc 
inoremap jk <Esc>


"Search google
function! Google()
    let query = substitute(@x, '\n', " ", "")
    let query = substitute(query, '^\s\+', "", "")
    let query = substitute(query, '\s\+$', "", "")
    let query = substitute(query,' \+', "+", "")
    exe 'silent !open https://google.de/search?q=' . query . "+" . &filetype
endfunction            

vnoremap <leader>g "xy:silent call Google()<CR>
nnoremap <leader>g bviw"xy:silent call Google()<CR>
