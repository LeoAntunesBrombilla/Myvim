vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'terroo/vim-simple-emoji'
  use 'navarasu/onedark.nvim'
  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'kyazdani42/nvim-web-devicons'
  use 'scrooloose/nerdtree'
  use 'scrooloose/nerdcommenter'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'morhetz/gruvbox'
end)
