"status line
set modeline
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

"disable wrap lines
set nowrap

cmap w!! %!sudo tee > /dev/null %

if $COLORTERM == 'gnome-terminal'
      set t_Co=256
endif

"Powerline 
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'
if has("gui_running")
  set guioptions-=m "Remove menubar
  set guioptions-=T "Remove toolbar
  set guioptions-=r "Remove right hand scroll bar
  if has("gui_gtk2")
    set guifont=Menlo\ for\ Powerline\ 15
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular\ for\ Powerline:h15
  endif
endif

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
inoremap fd <Esc>


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

"Hotkey for SyntasticToggleMode
noremap <F3> :SyntasticToggleMode<CR>
"Hotkey for make
noremap <F2> :make!<CR>
