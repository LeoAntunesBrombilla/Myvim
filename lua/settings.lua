vim.cmd([[set t_8f=^[[38;2;%lu;%lu;%lum]])
vim.cmd([[set t_8b=^[[48;2;%lu;%lu;%lum]])
vim.cmd([[set termguicolors]])
vim.cmd([[set hidden]])
vim.cmd([[set number]])
vim.cmd([[set relativenumber]])
vim.cmd([[set mouse=a]])
vim.cmd([[set inccommand=split]])
vim.cmd([[set completeopt=menuone,noinsert,noselect]])
vim.cmd([[set encoding=UTF-8]])
vim.cmd([[set guifont=Nerd\ Font\ 11]])
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
vim.cmd([[colorscheme gruvbox]])
