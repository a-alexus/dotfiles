" Plugins will be downloaded under the specified directory
call plug#begin('~/.local/share/nvim/site/plugged')

" Declare the list of plugins
Plug 'dylanaraps/wal.vim'
" Used to format tables
Plug 'godlygeek/tabular'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

call plug#end()

" set colorscheme to one created with pywal
colorscheme wal

" Do not use conceal feature
let g:vim_markdown_conceal = 0
" Disable header folding
let g:vim_markdown_folding_diabled = 1

" show line numbers
set number
set clipboard=unnamedplus
set shiftwidth=8
set tabstop=8
set linebreak
set noswapfile
set incsearch

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype text setlocal ts=4 sts=4 sw=4 expandtab
