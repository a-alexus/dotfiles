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
