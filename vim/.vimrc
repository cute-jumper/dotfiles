" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
call plug#end()

" insert mode
inoremap jj <ESC>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$
inoremap <C-d> <Del>
inoremap <C-h> <BS>
inoremap <C-k> <C-o>D
" <C-/> doesn't work
inoremap <C-_> <C-o>u

" command line mode
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" normal mode
nnoremap H ^
nnoremap L $
nnoremap <C-a> ^
nnoremap <C-e> $

" leader
let mapleader=" "
nnoremap <leader>xs :w<CR>
nnoremap <leader>v <C-d>
