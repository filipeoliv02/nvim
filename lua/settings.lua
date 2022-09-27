buffer = vim.bo
editor = vim.o
global = vim.g
window = vim.wo
command = vim.cmd
option = vim.opt

global.filetype_plugin_on = 1
global.CtrlSpaceDefaultMappingKey = "<C-space> "
global.CtrlSpaceLoadLastWorkspaceOnStart = 1

option.tabstop = 4
option.softtabstop = 2
option.shiftwidth = 4
option.expandtab = true
option.smartindent = true
option.cursorline = true 
option.number = true
option.numberwidth = 2
option.relativenumber = true

option.pumheight = 10

editor.hidden = true
editor.compatible = false
editor.belloff = 'all'
option.wrap = false
option.smartcase = true
option.ignorecase = true
option.swapfile = false
option.backup = false
option.hlsearch = true
editor.incsearch = true
editor.scrolloff = 8
editor.sidescrolloff = 8
option.signcolumn = 'yes'
option.cmdheight = 2                        
option.splitbelow = true                          
option.splitright = true
editor.mouse = 'a'
option.writebackup = false
option.showtabline = 0
option.updatetime = 50         
option.timeoutlen = 50         
option.clipboard = 'unnamedplus'
editor.autochdir = true
editor.laststatus = 2
option.showmode = false

-- Theme
option.termguicolors = true
command[[colorscheme aurora]]
global.aurora_italic = 1     
global.aurora_transparent = 0     
global.aurora_bold = 1     
global.aurora_darker = 1  


--vim.o.background = 'dark'
--global.everforest_background = 'hard'
--[[global.tokyonight_enable_italic = 1]]

global.encoding = 'utf-8'
global.mapleader = " "


--[[Turn this into lua]]
--augroup vimrc-incsearch-highlight
		  --autocmd!
		  --autocmd CmdlineEnter /,\? :set hlsearch
		  --autocmd CmdlineLeave /,\? :set nohlsearch
--augroup END
