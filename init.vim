" Additional Configuration Files
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/start-screen.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/lsp-config.vim
source $HOME/.config/nvim/plug-config/cmp-config.vim

"--------------PLUGINS--------------
call plug#begin()
"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
"##################################
" Colors on Hex Codes
Plug 'norcalli/nvim-colorizer.lua'
"##################################
" Start Screen
Plug 'mhinz/vim-startify'
"##################################
" Status line
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'maximbaz/lightline-ale'
"##################################
" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"##################################
" i3wm syntax highlight
Plug 'mboughaba/i3config.vim'
"##################################
" NerdTree
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
"##################################
 "Comment helper
Plug 'scrooloose/nerdcommenter'
"##################################
" Leader Key Helper - NEEDS CONFIG
Plug 'liuchengxu/vim-which-key'
Plug 'vimlab/split-term.vim'
"##################################
"Themes
Plug 'sainnhe/sonokai'
Plug 'gruvbox-community/gruvbox'
call plug#end()

"--------nvim-colorizer-------------
lua require'colorizer'.setup()
"-----------------------------------

colorscheme sonokai
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
let g:lightline#bufferline#enable_devicons = 1
let g:lightline = {
      \ 'colorscheme': 'material',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

let g:which_key_map =  {}
let g:which_key_sep = '→'
let g:which_key_use_floating_win = 0
" Change the colors 
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function
" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
" Single mappings
let g:which_key_map['/'] = [ '<plug>NERDCommenterToggle'  , 'Comment Line' ]
let g:which_key_map['f'] = [ ':Files'                       , 'Search files' ]
let g:which_key_map['r'] = [ ':Rg'                       , 'Search on files' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'Split Right']

let g:which_key_map.c = {
      \ 'name' : '+code' ,
      \ 'c' : [':!cmake --build /home/filipe/Projects/Gestor_de_Reservas-C/cmake-build-debug --target AED1_LP1 -- -j 6'   , 'Build'],
      \ 'r' : [':VTerm50 ./cmake-build-debug/AED1_LP1'                             , 'run'],
      \ 'g' : [':!gcc -lm -lglut -lGL -lGLU % glm.c'                             , 'glut compile'],
      \ 'G' : [':Term7 ./a.out'                                            , 'Run Glut File'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")


