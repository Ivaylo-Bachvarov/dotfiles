" Some magic required by vundle start
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on
" Some magic required by vudnel ends

" Add a little colors
syntax enable
colorscheme monokai

" Remove all useless toolbars from gvim
set guioptions -=m
set guioptions -=T
set guioptions -=r

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Show relative line number only on focused  buffer
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Make the copy/paste works great
set clipboard=unnamedplus

" ******** NERDTree settings start *********
" Start NERDTree only if direcotry is opened
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Ignore files and dirs in nerdtree
let NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules', 'bower_components']
" ******** NERDTree settings ends *********
