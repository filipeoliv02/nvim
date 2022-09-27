local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require ('packer').startup(function()
use 'wbthomason/packer.nvim'
-- LSP
use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
}
-- navigator
use({
    'ray-x/navigator.lua',
    requires = {
        { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
    },
})
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
use 'junegunn/fzf'
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
use 'ray-x/aurora'
-- AutoCompletion
use {'neoclide/coc.nvim', branch = 'release'}


--use 'folke/tokyonight.vim'
if packer_bootstrap then
    require('packer').sync()
end
end)


