" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
call plug#end()

" insert mode
imap jj <ESC>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-a> <C-o>^
imap <C-e> <C-o>$
imap <C-d> <Del>
imap <C-h> <BS>
imap <C-k> <C-r>=<SID>kill_line()<CR>

" command line mode
cmap <C-p> <Up>
cmap <C-n> <Down>
cmap <C-b> <Left>
cmap <C-f> <Right>
cmap <C-a> <Home>
cmap <C-e> <End>

" normal mode
nnoremap H ^
nnoremap L $
nmap <C-a> ^
nmap <C-e> $

" leader
let mapleader=" "
nnoremap <leader>xs :w<CR>
nnoremap <leader>v <C-d>
