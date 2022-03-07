require ('packer').startup(function()
-- LSP
use 'neovim/nvim-lspconfig'
use 'kabouzeid/nvim-lspinstall'
-- Auto pairs for '(' '[' '{'
use 'jiangmiao/auto-pairs'
-- Colors on Hex Codes
use 'norcalli/nvim-colorizer.lua'
-- Status line
use 'itchyny/lightline.vim'
use 'mengelbrecht/lightline-bufferline'
use 'maximbaz/lightline-ale'
-- Start Screen
use 'mhinz/vim-startify'
-- i3wm syntax highlight
use 'mboughaba/i3config.vim'
-- NerdTree
use 'preservim/nerdtree' 
use 'Xuyuanp/nerdtree-git-plugin' 
use 'tiagofumo/vim-nerdtree-syntax-highlight'
use 'ryanoasis/vim-devicons'
-- Fuzzy Finder
use 'junegunn/fzf.vim'
-- Leader Key Helper
use {
    'AckslD/nvim-whichkey-setup.lua',
    requires = {'liuchengxu/vim-which-key'},
}
-- Telescope
use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use 'nvim-telescope/telescope-fzy-native.nvim'
use 'nvim-treesitter/nvim-treesitter'
use 'vim-ctrlspace/vim-ctrlspace'
-- Comments Helper
use 'preservim/nerdcommenter'
-- Terminal
use 'vimlab/split-term.vim'
-- Camel Case Motion
use 'vim-scripts/camelcasemotion'
-- Themes
use 'sainnhe/sonokai'
use 'sainnhe/everforest'
use 'folke/tokyonight.vim'

end)


