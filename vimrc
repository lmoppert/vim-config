set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" My Bundles, the first one is required by vundle!
Bundle 'gmarik/vundle'
Bundle 'phleet/vim-mercenary'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'altercation/vim-colors-solarized'


" Generic settings
filetype plugin indent on

set encoding=utf-8
set incsearch
set hlsearch
set smartcase
set scrolloff=7
set history=50
set wildmenu
set autoread

set tabstop=8
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

set backup
set backupdir=~/.vim/backup/

" Spell checking only when requested
set nospell
set spelllang=de,en
set spellfile=~/.vim/spell/de.add

" Use line numbering and change mode to relative, when in insert mode
set number
set relativenumber
set ruler
set cursorline
au InsertEnter * :set nu
au InsertLeave * :set rnu

set colorcolumn=80
hi ColorColumn ctermbg=darkgrey

" Settings for graphical version
if has("gui_running")
    " Different colorschemes are available
    "colorscheme ir_dark
    "colorscheme pyte
    "colorscheme railscasts
    "colorscheme temp_ir_dark
    "colorscheme twilight
    "colorscheme wombat
    colorscheme xoria256

    set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
    set columns=150
    set lines=50
    set guifont=DejaVu\ Sans\ Mono\ 13
    set guioptions-=T
    set guioptions-=r
    set guioptions-=l

    hi ColorColumn guibg=#e9e9e9
    au FocusLost * silent! wall
else
    set bg=dark
endif

" key bindings
let mapleader = ","
inoremap jj <Esc>
nnoremap <leader><space> :noh<cr>

" moving between split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" no help on F1
nnoremap <F1> <Esc>
vnoremap <F1> <Esc>
inoremap <F1> <Esc>

" Powerline setup
set laststatus=2

" Nerd-Tree settings
noremap <leader>n :NERDTreeToggle<cr>
let NERDTreeWinSize=50
let NERDTreeQuitOnOpen=1
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=0
let NERDTreeIgnore=['\~$','\.sw.$','\.pyc$']

" Python-Mode settings
let g:pymode_rope = 0
