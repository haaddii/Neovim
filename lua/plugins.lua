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
    use 'ryanoasis/vim-devicons'
    -- PAIRING
    use 'jiangmiao/auto-pairs'
    -- SEARCHING
    use {'junegunn/fzf.vim', rtp = '~/.fzf/bin/fzf'}
    -- FORMATTING
    use 'junegunn/vim-easy-align'
    use 'sbdchd/neoformat'
  end
})
