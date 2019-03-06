set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'valloric/youcompleteme'

call vundle#end()            " required
filetype plugin indent on    " required





set nocompatible
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

filetype off


set number
set relativenumber
syntax on
imap jk <Esc>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
