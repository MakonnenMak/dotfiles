set shell=/bin/zsh
set nocompatible              " be iMproved, required
filetype off                  " required
set cindent
set nospell
set noswapfile

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'metakirby5/codi.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'junegunn/fzf.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'davidhalter/jedi-vim'
Plugin 'deviantfero/wpgtk.vim',
Plugin 'derekwyatt/vim-scala',
Plugin 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plugin 'morhetz/gruvbox'
Plugin 'neoclide/coc.nvim', {'branch':'release'}
Plugin 'ayu-theme/ayu-vim'
let g:livepreview_previewer='zathura' 
call vundle#end()            " required
filetype plugin indent on    " required
"au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown "recognizing markdown files for syntax highlighting

set nocompatible
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

filetype off

nnoremap <C-j> :tabprevious<CR>                                                                            
nnoremap <C-l> :tabnext<CR>
nnoremap <silent> <C-t> :Files<CR>
nnoremap <silent> <leader>r :Ag

"trying no bottom bar"
set noshowmode
set noruler
set laststatus=0
set noshowcmd
set cmdheight=1

let mapleader = ","

set number
set relativenumber
syntax on

syntax enable
imap jk <Esc>
set termguicolors
let ayucolor="dark"
colorscheme ayu
source ~/.config/nvim/coc_mappings.vim


