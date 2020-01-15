set shell=/bin/zsh
set nocompatible              " be iMproved, required
filetype off                  " required
set cindent
set nospell
set noswapfile

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-surround'
Plugin 'valloric/youcompleteme'
Plugin 'metakirby5/codi.vim'
Plugin 'b4b4r07/vim-hcl'
Plugin 'ragon000/vim-latex-live-preview'
Plugin 'godlygeek/tabular'
Plugin 'junegunn/goyo.vim'
let g:livepreview_previewer='zathura'

call vundle#end()            " required
filetype plugin indent on    " required
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown "recognizing markdown files for syntax highlighting

set nocompatible
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

filetype off

nnoremap <C-j> :tabprevious<CR>                                                                            
nnoremap <C-l> :tabnext<CR>
set number
set relativenumber
syntax on
imap jk <Esc>





