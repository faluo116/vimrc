set shiftwidth=4
colors desert 
syntax on
set tabstop=4
set cindent shiftwidth=4
set autoindent shiftwidth=4
set hlsearch
set nu
set encoding=utf-8
set fileencodings=utf-8,gbk,euc-jp
set backupskip=/tmp/*,/private/tmp/*
set laststatus=2
set nowrap

let mapleader="-"

nnoremap <leader>d dd
nnoremap <leader>ev :tab new $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>t :NERDTree<cr>
nnoremap <leader>p :NERDTree /Library/WebServer/Documents<cr>

augroup ft_php
	autocmd!
	autocmd FileType php nnoremap <buffer> <leader>= I//<esc>
	autocmd FileType php :iabbrev <buffer> iff if(){<cr>}<left><esc>
	autocmd FileType php :iabbrev <buffer> forr for($i = 0 ; $i <  ; ++$i){<cr>}<left><esc>
augroup end

augroup ft_py
	autocmd!
	autocmd FileType python nnoremap <buffer> <leader>= I#<esc>
 	autocmd FileType python :iabbrev <buffer> pyhead #!/usr/bin/env python<cr># -*- coding: utf-8 -*-<cr><cr>
augroup end

set statusline=%=%F\ \%l/%L\ \%P\ -\ 

"call pathogen#infect()
