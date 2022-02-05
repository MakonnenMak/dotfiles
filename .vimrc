""Default settings
set number
set relativenumber
syntax enable
syntax on
set clipboard=unnamedplus

""Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


""COC
nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>


""FZF
let mapleader = ","
nnoremap <leader><leader> :GFiles<CR>
nnoremap <leader><space>       :Files<CR>
nnoremap <leader>C        :Colors<CR>
nnoremap <leader><CR>     :Buffers<CR>
nnoremap <leader>fl       :Lines<CR>
nnoremap <leader>ag       :Ag! <C-R><C-W><CR>
nnoremap <leader>m        :History<CR>

""Personal navigation
""nnoremap <C-j> :tabprevious<CR>                                                                            
""nnoremap <C-l> :tabnext<CR>
imap jk <Esc>
