require ('packer').startup(function()

-- Auto pairs for '(' '[' '{'
use 'jiangmiao/auto-pairs'
-- Colors on Hex Codes
use 'norcalli/nvim-colorizer.lua'
-- Start Screen
use 'mhinz/vim-startify'
-- Status line
use 'itchyny/lightline.vim'
use 'mengelbrecht/lightline-bufferline'
use 'maximbaz/lightline-ale'
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
-- Comments Helper
use 'b3nj5m1n/kommentary'
-- Terminal
use 'vimlab/split-term.vim'
-- Camel Case Motion
use 'vim-scripts/camelcasemotion'
-- Themes
use 'sainnhe/sonokai'

end)


