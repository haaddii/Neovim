local packer = require("packer")
packer.startup({
  function(use)
    -- enable packer to update itself
    use 'wbthomason/packer.nvim'
    
    -- other plugins

    -- COLORSHEME
    use 'overcache/NeoSolarized'
    use 'cocopon/iceberg.vim'
    use 'folke/tokyonight.nvim'
    use 'cocopon/pgmnt.vim'
    use 'ellisonleao/gruvbox.nvim'
    use 'marko-cerovac/material.nvim'

    -- THEMING
    use 'frazrepo/vim-rainbow'
    use {
      'akinsho/bufferline.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', 'moll/vim-bbye' }
    }
    -- PAIRING
    use 'jiangmiao/auto-pairs'

    -- SEARCHING
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
    }

    -- FORMATTING
    use 'junegunn/vim-easy-align'
    use 'sbdchd/neoformat'
  end
})
