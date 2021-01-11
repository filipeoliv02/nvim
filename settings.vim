set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
set number relativenumber               " Line numbers
set nohlsearch
set hidden                              " Required to keep multiple buffers open multiple buffers
set noerrorbells
set nowrap                              " Display long lines as just one line
set smartcase
set ignorecase
set noswapfile
set nobackup
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set cmdheight=2                         " More space for displaying messages
set iskeyword-=_                      	" treat underscore separated words as a word text object
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set mouse=a
set background=dark                     " tell vim what the background color looks like
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set showtabline=2
set updatetime=50                       " Faster completion
set timeoutlen=50                       " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set autochdir                           " Your working directory will always be the same as your working directory
set laststatus=2
set noshowmode
set termguicolors

au BufEnter * set fo-=c fo-=r fo-=o
au BufNewFile,BufRead *.s,*.S,*.asm set filetype=mips


au! BufWritePost $MYVIMRC source %      "Auto source when writing to init.vim alternatively you can run :source $MYVIMRC



