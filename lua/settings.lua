vim.cmd([[set t_8f=^[[38;2;%lu;%lu;%lum]])
vim.cmd([[set t_8b=^[[48;2;%lu;%lu;%lum]])
vim.cmd([[set cmdheight=2]])
vim.cmd([[set termguicolors]])
vim.cmd([[set hidden]])
vim.cmd([[set number]])
vim.cmd([[set relativenumber]])
vim.cmd([[set mouse=a]])
vim.cmd([[set inccommand=split]])
vim.cmd([[set completeopt=menuone,noinsert,noselect]])
vim.cmd([[set encoding=UTF-8]])
vim.cmd([[set guifont=Nerd\ Font\ 11]])
vim.cmd([[set autoindent expandtab tabstop=2 shiftwidth=2]])
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
vim.cmd([[colorscheme gruvbox]])
vim.g.mapleader = ' '
vim.keymap.set('n', '<c-p>', ':Files<cr>')
vim.keymap.set('n', '<Leader>n', ':NERDTreeFocus<CR>')
vim.keymap.set('n', '<C-n>', ':NERDTree<CR>')
vim.keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>')
vim.keymap.set('n', '<C-f>', ':NERDTreeFind<CR>')
vim.keymap.set('n', '<Leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<Leader>fg', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<Leader>fb', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<Leader>fh','<cmd>Telescope help_tags<cr>')
local bufopts = { noremap=true, silent=true, buffer=bufnr }
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
vim.cmd([[
	function! AutoCpp()
	  call append(0, '#include <iostream>')
	  call append(1, '')
	  call append(2, 'int main( int argc , char **argv ){')
	  call append(3, "  std::cout << \"Olá, Mundo!\" << '\\n';")
	  call append(4, '  return 0;')
	  call append(5, '}')
	  call cursor(4, 17)
	endfunction
	autocmd BufNewFile *.cpp :call AutoCpp()
]])

vim.cmd 'let g:NERDTreeIgnore = ["^node_modules$"]'

-- Formating with neoformat
vim.cmd 'let g:neoformat_try_node_exe = 1'

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  callback = function()
    vim.cmd("Neoformat")
  end,
  group = autogroup_eslint_lsp,
})

vim.cmd [[cabbrev w execute "Format sync" <bar> w]]

vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]



-- call plug#begin() 

-- Plug 'neoclide/coc.nvim', {'branch': 'release'}
-- Plug 'sheerun/vim-polyglot'
-- Plug 'terryma/vim-multiple-cursors'
-- Plug 'dense-analysis/ale'
-- Plug 'jiangmiao/auto-pairs'
-- Plug 'kyazdani42/nvim-web-devicons' " for file icons
-- Plug 'kyazdani42/nvim-tree.lua'
-- Plug 'nvim-lua/plenary.nvim'
-- Plug 'nvim-telescope/telescope.nvim'
-- Plug 'neovim/nvim-lspconfig'
-- Plug 'nvim-lua/completion-nvim'
-- Plug 'scrooloose/nerdtree'
-- Plug 'scrooloose/nerdcommenter'
-- Plug 'Xuyuanp/nerdtree-git-plugin'
-- Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
-- Plug 'ryanoasis/vim-devicons'
-- Plug 'airblade/vim-gitgutter'
-- Plug 'yuezk/vim-js'
-- Plug 'HerringtonDarkholme/yats.vim'
-- Plug 'maxmellon/vim-jsx-pretty'
-- Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
-- Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
-- Plug 'morhetz/gruvbox'

-- call plug#end()


-- " open NERDTree automatically
-- "autocmd StdinReadPre * let s:std_in=1
-- "autocmd VimEnter * NERDTree

-- let g:NERDTreeGitStatusWithFlags = 1
-- "let g:WebDevIconsUnicodeDecorateFolderNodes = 1
-- "let g:NERDTreeGitStatusNodeColorization = 1
-- "let g:NERDTreeColorMapCustom = {
--     "\ "Staged"    : "#0ee375",  
--     "\ "Modified"  : "#d9bf91",  
--     "\ "Renamed"   : "#51C9FC",  
--     "\ "Untracked" : "#FCE77C",  
--     "\ "Unmerged"  : "#FC51E6",  
--     "\ "Dirty"     : "#FFBD61",  
--     "\ "Clean"     : "#87939A",   
--     "\ "Ignored"   : "#808080"   
--     "\ }                         


-- 
-- colorscheme gruvbox 

-- set t_8f=^[[38;2;%lu;%lu;%lum
-- set t_8b=^[[48;2;%lu;%lu;%lum
-- set termguicolors
-- set hidden
-- set number
-- set relativenumber
-- set mouse=a
-- set inccommand=split
-- set completeopt=menuone,noinsert,noselect
-- set encoding=UTF-8
-- set guifont=DroidSansMono\ Nerd\ Font\ 11

-- " vim-prettier
-- " prettier command for coc
-- command! -nargs=0 Prettier :CocCommand prettier.formatFile
-- " run prettier on save
-- " Exit Vim if NERDTree is the only window remaining in the only tab.
-- autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


-- let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']


-- " coc config
-- let g:coc_global_extensions = [
--   \ 'coc-snippets',
--   \ 'coc-pairs',
--   \ 'coc-tsserver',
--   \ 'coc-eslint', 
--   \ 'coc-prettier', 
--   \ 'coc-json', 
--   \ ]
-- " from readme
-- " if hidden is not set, TextEdit might fail.
-- set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
-- set updatetime=300

-- nnoremap <leader>;A;<esc>
-- nnoremap <leader>ev :vsplit ~/config/nvim/init.vim<cr>
-- nnoremap <leader>sv :source ~/config/nvim/init.vim<cr>
-- nnoremap <c-p> :Files<cr>
-- nnoremap <leader>n :NERDTreeFocus<CR>
-- nnoremap <C-n> :NERDTree<CR>
-- nnoremap <C-t> :NERDTreeToggle<CR>
-- nnoremap <C-f> :NERDTreeFind<CR>
-- nnoremap <leader>ff <cmd>Telescope find_files<cr>
-- nnoremap <leader>fg <cmd>Telescope live_grep<cr>
-- nnoremap <leader>fb <cmd>Telescope buffers<cr>
-- nnoremap <leader>fh <cmd>Telescope help_tags<cr>
-- nmap <silent> gd <Plug>(coc-definition)
-- nmap <silent> gy <Plug>(coc-type-definition)
-- nmap <silent> gi <Plug>(coc-implementation)
-- nmap <silent> gr <Plug>(coc-references)

-- lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
