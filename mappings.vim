 "Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-Down>    :resize -2<CR>
nnoremap <M-Up>      :resize +2<CR>
nnoremap <M-Left>    :vertical resize -2<CR>
nnoremap <M-Right>   :vertical resize +2<CR>
nnoremap <M-j>       :resize -2<CR>
nnoremap <M-k>       :resize +2<CR>
nnoremap <M-h>       :vertical resize -2<CR>
nnoremap <M-l>       :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-Left> <C-w>h
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>l

" Set leader key
let g:mapleader="\<Space>"

" Nerd Tree toggler
nnoremap <F2> :NERDTreeToggle<Enter>

" GOTO DEFINITION
nmap <silent> gd <Plug>(coc-definition)
