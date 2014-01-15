" Init Vundle ----------------------------------------------------------------
set nocompatible
filetype off

if has("win32")
    set runtimepath+=$HOME/.vim
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" My Bundles -----------------------------------------------------------------
Bundle 'gmarik/vundle'
Bundle 'vim-scripts/hgrev'
Bundle 'phleet/vim-mercenary'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vimoutliner/vimoutliner'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}


" Generic settings -----------------------------------------------------------
filetype plugin indent on
syntax on
set encoding=utf-8
set wildmenu

" Tabs and indenting ---------------------------------------------------------
set autoindent
set tabstop=8
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

" Searching ------------------------------------------------------------------
set incsearch
set hlsearch
set smartcase
set scrolloff=7
set history=50

" Editing --------------------------------------------------------------------
set textwidth=79
set backspace=2
set background=dark
set ruler
set cursorline
set colorcolumn=80
hi ColorColumn ctermbg=darkgrey

" File Options ---------------------------------------------------------------
set autoread
set backup
set backupdir=~/.vim/backup/

" Spell checking -------------------------------------------------------------
set nospell
set spelllang=de,en
set spellfile=~/.vim/spell/de.add

" Line Numbering -------------------------------------------------------------
set number
set relativenumber
au InsertEnter * :set nu
au InsertLeave * :set rnu


" GUI Settings ---------------------------------------------------------------
if has("gui_running")
    " Colorscheme ------------------------------------------------------------
    "colorscheme ir_dark
    "colorscheme pyte
    "colorscheme railscasts
    "colorscheme temp_ir_dark
    "colorscheme twilight
    colorscheme wombat
    "colorscheme xoria256

    " Appearance -------------------------------------------------------------
    set columns=150
    set lines=50
    set guioptions-=T
    set guioptions-=r
    set guioptions-=l
    set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅

    if has("win32")
        set guifont=DejaVu_Sans_Mono_for_Powerline:h11:cANSI
    elseif has("mac")
        set guifont=DejaVu_Sans_Mono_for_Powerline:h15
    else
        set guifont=DejaVu\ Sans\ Mono\ 13
    endif

    " Other Settings ---------------------------------------------------------
    hi ColorColumn guibg=#e9e9e9
    au FocusLost * silent! wall
endif

" Key Bindings ---------------------------------------------------------------
let mapleader = ","
inoremap jj <Esc>
nnoremap <leader><space> :noh<cr>
" split windows horizontaly
nnoremap <leader>w <C-w>v<C-w>l
" reformat paragraph to corrext line length
nnoremap <leader>q gqip
" Mapping for notes.ini correction
nnoremap <leader>c :%s/NCMenu,*//g<CR>:%s/NCExtMgr,*//g<CR>


" Moving between split windows -----------------------------------------------
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" No help on F1 --------------------------------------------------------------
nnoremap <F1> <Esc>
vnoremap <F1> <Esc>
inoremap <F1> <Esc>

" Powerline setup ------------------------------------------------------------
set laststatus=2
let g:Powerline_theme = 'solarized'

" Nerd-Tree settings ---------------------------------------------------------
noremap <leader>n :NERDTreeToggle<cr>
let NERDTreeWinSize=50
let NERDTreeQuitOnOpen=1
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=0
let NERDTreeIgnore=['\~$','\.sw.$','\.pyc$']

" Python-Mode settings -------------------------------------------------------
let g:pymode_rope = 0
let g:jedi#usages_command = "<leader>l"
