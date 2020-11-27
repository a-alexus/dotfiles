" Plugins will be downloaded under the specified directory
call plug#begin('~/.local/share/nvim/site/plugged')

" Declare the list of plugins
Plug 'dylanaraps/wal.vim'

call plug#end()

" set colorscheme to one created with pywal
colorscheme wal

" show line numbers
set number
set clipboard=unnamedplus
set shiftwidth=8
set tabstop=8
set nowrap
set noswapfile
set incsearch

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype text setlocal ts=4 sts=4 sw=4 expandtab
