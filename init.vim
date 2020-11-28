source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/mappings.vim

call plug#begin()

" auto complete
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Plug 'jackguo380/vim-lsp-cxx-highlight'
" Start Screen - NEEDS CONFIG
Plug 'mhinz/vim-startify'
" File Explorer - Incomplete
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
 "Comment helper
Plug 'scrooloose/nerdcommenter'
" Status line
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
" Colors on Hex Codes
Plug 'norcalli/nvim-colorizer.lua'
" Leader Key Helper - NEEDS CONFIG
Plug 'liuchengxu/vim-which-key'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'airblade/vim-rooter'
" Auto format clangd
Plug 'rhysd/vim-clang-format'
" C better syntax
Plug 'arakashic/chromatica.nvim'
" Best theme ever
Plug 'sainnhe/sonokai'

Plug 'vimlab/split-term.vim'
Plug 'vim-scripts/DoxygenToolkit.vim'

call plug#end()


lua require'colorizer'.setup()
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai                                      "Set the current color scheme/theme
let g:lightline = {
      \ 'colorscheme': 'material',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }


let g:lightline#bufferline#enable_devicons = 1



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
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['f'] = [ ':FZF'                       , 'FZF' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger' ]
let g:which_key_map['S'] = [ ':Startify'                  , 'start screen' ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]

let g:which_key_map.c = {
      \ 'name' : '+code' ,
      \ 'c' : [':!cmake --build ./ -- -j 6'               , 'Build'],
      \ 'g' : [':!gcc -lm -lglut -lGL -lGLU %'            , 'glut compile'],
      \ 'G' : [':Term7 ./a.out'                           , 'Run Glut File'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")


" explorer
