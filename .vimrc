"Window Handling
"nmap w <C-W>


"Git branch taken from http://amix.dk/blog/post/19571
function! GitBranch()
    let branch = system("git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*//'")
    if branch != ''
        return '   Git Branch: ' . substitute(branch, '\n', '', 'g')
    en
    return ''
endfunction

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


"NERDTree
map <C-n> :NERDTreeToggle<CR>
