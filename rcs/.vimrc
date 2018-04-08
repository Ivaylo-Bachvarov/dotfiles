" Some magic required by vundle start
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on
" Some magic required by vudnel ends
"
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
