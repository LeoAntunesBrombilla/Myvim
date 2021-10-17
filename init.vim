call plug#begin() 

Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'


call plug#end()


colorscheme gruvbox
set background=dark

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split

let mapleader="\<space>"

nnoremap <leader>;A;<esc>
nnoremap <leader>ev :vsplit ~/config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/config/nvim/init.vim<cr>


nnoremap <c-p> :Files<cr>
