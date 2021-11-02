set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list,full   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

" Remape the leader to space
nnoremap <SPACE> <Nop>
map <Space> <Leader>
map <Leader> <Plug>(easymotion-prefix)

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" set max line length to something sensible
let g:pymode_lint_ignore = "E501,W"

" Plugins
call plug#begin()
 Plug 'gosukiwi/vim-atom-dark'
 Plug 'ryanoasis/vim-devicons'
 Plug 'sirver/ultisnips'
 Plug 'scrooloose/nerdtree'
 Plug 'junegunn/fzf.vim'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'heavenshell/vim-pydocstring'
 Plug 'easymotion/vim-easymotion'
 Plug 'joshdick/onedark.vim'
 Plug 'hhsnopek/vim-firewatch'
 Plug 'dense-analysis/ale'
 Plug 'townk/vim-autoclose'
call plug#end()

colo firewatch
