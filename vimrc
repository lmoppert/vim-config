" Init Settings --------------------------------------------------------------
set nocompatible

if (has('win32') || has('win64'))
    "set shellslash
    set pythonthreehome=C:/Program\ Files/Python38
    set pythonthreedll=python38.dll
    set runtimepath+=$HOME/vimfiles
    set backupdir=$HOME/vimfiles/backup
    set spellfile=$HOME/vimfiles/spell/de.add
else
    set runtimepath+=~/.vim
    set backupdir=~/.vim/backup
    set spellfile=~/.vim/spell/de.add
endif

" Manage Plugins -------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-latex/vim-latex'
Plug 'vim-scripts/hexHighlight.vim'
Plug 'PProvost/vim-ps1'
" Only one of the following makes sence
Plug 'vimoutliner/vimoutliner'
Plug 'isene/hyperlist.vim'
" Suggestions from https://www.vimfromscratch.com/articles/vim-for-python/
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
"Plug 'jeetsukumaran/vim-pythonsense'
"Plug 'liuchengxu/vista.vim'
"Plug 'junegunn/fzf.vim'
"Plug 'numirias/semshi'
"Plug 'Vimjas/vim-python-pep8-indent'
"Plug 'dense-analysis/ale'
" Removals
"Plug 'VundleVim/Vundle.vim'
"Plug 'klen/python-mode'
"Plug 'ludovicchabant/vim-lawrencium'
call plug#end()

" Generic settings -----------------------------------------------------------
syntax on
scriptencoding utf-8
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
        set renderoptions=type:directx
        set guifont=JetBrains_Mono:h11:cANSI:qDRAFT
        "set guifont=Fira_Code_Retina:h11:W450:cANSI:qDRAFT
        "set guifont=Fira_Code_Medium:h11:W500:cANSI:qDRAFT
    elseif has("mac")
        set guifont=DejaVu_Sans_Mono_for_Powerline:h15
    else
        set guifont=DejaVu\ Sans\ Mono\ 13
    endif

    " Other Settings ---------------------------------------------------------
    hi ColorColumn guibg=gray21
    au FocusLost * silent! wall
    set list listchars=tab:»·,trail:·,nbsp:·
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
let g:Tex_ViewRule_pdf='SumatraPDF'
let g:Tex_AdvancedMath = 1
let g:Tex_SmartQuoteOpen = ',,'
let g:Tex_SmartQuoteClose = '``'
"
" Diff-Mode settings ---------------------------------------------------------
hi DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
hi DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
hi DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
hi DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
