set nocompatible
set clipboard=unnamed
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'ap/vim-buftabline'
Plug 'Chiel92/vim-autoformat'
Plug 'python-mode/python-mode'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
call plug#end()

syntax enable
syntax on

:set relativenumber
:set rnu

nnoremap <leader>% :MtaJumpToOtherTag<cr>
set tabstop=2 shiftwidth=2 expandtab
set laststatus=2
set wrap!
set number
set confirm
set hidden

set background=dark
colorscheme solarized

set wildmenu
set wildmode=longest:list,full

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
vnoremap <C-c> "+y

set autoread

" My mappings
" Folding
nnoremap <Space>o zR<CR>
nnoremap <Space>c zM<CR>
nnoremap <Space>c zM<CR>
" Buffer commands
nnoremap gl :buffers<CR>:buffer<Space>
nnoremap <Up> :ter ++curwin<CR>
tnoremap <Up> <C-w>:ter ++curwin<CR>
nnoremap <Down> :bd<CR>
tnoremap <Down> <C-w>:bd!<CR>
nnoremap <Right> :bnext<CR>
nnoremap <Left> :bprevious<CR>
tnoremap <Right> <C-w>:bnext<CR>
tnoremap <Left> <C-w>:bprevious<CR>

set signcolumn=yes

set foldenable
filetype indent on
filetype plugin on

set noswapfile 
set hlsearch 
set ignorecase 
set incsearch 
let g:miniBufExplBRSplit = 0 


hi link MBEVisible Error
set noeb vb t_vb=

nnoremap <leader>f :Autoformat<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
map <SPACE> <leader>
