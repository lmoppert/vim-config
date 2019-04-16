" Init Vundle ----------------------------------------------------------------
set nocompatible
filetype off

if (has('win32') || has('win64'))
    set shellslash
    set runtimepath+=$HOME/vimfiles
    set runtimepath+=$HOME/vimfiles/bundle
    set runtimepath+=$HOME/vimfiles/bundle/Vundle.vim
    set backupdir=$HOME/vimfiles/backup
    set spellfile=$HOME/vimfiles/spell/de.add
    let bundle_path='$HOME/vimfiles/bundle'
else
    set runtimepath+=~/.vim
    set runtimepath+=~/.vim/bundle
    set runtimepath+=~/.vim/bundle/Vundle.vim
    set backupdir=~/.vim/backup
    set spellfile=~/.vim/spell/de.add
    let bundle_path='~/.vim/bundle'
endif

" Manage Plugins -------------------------------------------------------------
call vundle#begin(bundle_path)
Plugin 'VundleVim/Vundle.vim'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vimoutliner/vimoutliner'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-latex/vim-latex'
Plugin 'vim-scripts/hexHighlight.vim'
Plugin 'ludovicchabant/vim-lawrencium'
Plugin 'PProvost/vim-ps1'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'will133/vim-dirdiff'
"Bundle 'vim-scripts/hgrev'
call vundle#end()
filetype plugin indent on

" Generic settings -----------------------------------------------------------
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

" Spell checking -------------------------------------------------------------
set nospell
set spelllang=de,en

" Line Numbering -------------------------------------------------------------
set number
set relativenumber
au InsertEnter * :set nu
au InsertLeave * :set rnu

" GUI Settings ---------------------------------------------------------------
if has("gui_running")
    colorscheme wombat_vo

    set columns=150
    set lines=50
    set guioptions-=T
    set guioptions-=r
    set guioptions-=l
    "set list listchars=tab:▸⋅,trail:⋅,nbsp:⋅

    if has("win32")
        set guifont=DejaVu_Sans_Mono_for_Powerline:h11:cANSI
    elseif has("mac")
        set guifont=DejaVu_Sans_Mono_for_Powerline:h15
    else
        set guifont=DejaVu\ Sans\ Mono\ 13
    endif

    " Other Settings ---------------------------------------------------------
    hi ColorColumn guibg=gray21
    au FocusLost * silent! wall
endif

if &diff
    colorscheme evening
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

" Airline settings -----------------------------------------------------------
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'

" Moving between split windows -----------------------------------------------
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" No help on F1 --------------------------------------------------------------
nnoremap <F1> <Esc>
vnoremap <F1> <Esc>
inoremap <F1> <Esc>

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

" Highlighting nginx conf files ----------------------------------------------
autocmd BufRead,BufNewFile /etc/nginx/sites-*/* setfiletype conf

" LaTeX-Suite settings -------------------------------------------------------
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'
"
" Diff-Mode settings ---------------------------------------------------------
hi DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
hi DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
hi DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
hi DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
