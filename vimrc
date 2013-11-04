set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" My Bundles, the first one is required by vundle!
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'phleet/vim-mercenary'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'


" Generic settings
filetype plugin indent on

set encoding=utf-8
set incsearch
set hlsearch
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set smartcase
set scrolloff=5
set history=50
set wildmenu

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

set colorcolumn=80
hi ColorColumn ctermbg=darkgrey

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

" vim-airline setup
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
