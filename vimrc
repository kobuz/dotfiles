set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tpope/vim-surround'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'guns/vim-clojure-static'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'vim-scripts/paredit.vim'

Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

set encoding=utf-8
set fileencoding=utf-8

syntax on
filetype plugin indent on
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

set background=dark
let g:solarized_termtrans=1
colorscheme solarized

let mapleader=","

set number
set numberwidth=4

" set backspace config
set backspace=eol,start,indent
set ignorecase " ignore case when searching
set hlsearch " highlight search things
set incsearch " make search act like search in modern browsers
set ruler " always show current position
set so=3 " show x lines of context(above and below)
set showmatch " show matching bracets when text indicator is over them

" turn off backup
set nobackup
set nowb
set noswapfile

" text and indent related
set expandtab
set textwidth=0
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set lbr

set autoindent
set nowrap

set hidden " enable unsaved buffers

" toggle line nubmers and fold column for easy copying
map <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
map <F3> :NERDTreeToggle<CR>
map <C-h> :bprev<CR>
map <C-l> :bnext<CR>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\~$'] " ignored file extentions

" Powerline setup
set laststatus=2

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
