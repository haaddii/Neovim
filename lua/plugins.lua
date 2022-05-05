local packer = require("packer")
packer.startup({
  function(use)
    -- enable packer to update itself
    use 'wbthomason/packer.nvim'
    
    -- other plugins

    -- COLORSHEME
    use 'overcache/NeoSolarized'
    use 'yuttie/hydrangea-vim'
    use 'cocopon/iceberg.vim'
    use 'folke/tokyonight.nvim'
    use 'cocopon/pgmnt.vim'

    -- THEMING
    use 'frazrepo/vim-rainbow'
    use {
      'akinsho/bufferline.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', 'moll/vim-bbye' }
    }
    -- PAIRING
    use 'jiangmiao/auto-pairs'

    -- SEARCHING

    -- FORMATTING
    use 'junegunn/vim-easy-align'
    use 'sbdchd/neoformat'
  end
})
