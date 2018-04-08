" Some magic required by vundle start
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'prettier/vim-prettier'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'scrooloose/syntastic'
  Plugin 'davidhalter/jedi-vim'
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

" Set the correct tabs and spaces for the right file types
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype scss setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype vimrc setlocal ts=2 sts=2 sw=2 expandtab

" ******** prettier settings start ********
" Run prettier on file save
let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat = 0
" Run prettier on all of this file formats
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql Prettier
" ******** prettier settings ends ********

" ********  ctrlp settings start ********
let g:ctrlp_working_path_mode = 'ra'
" Search in Files, Buffers and MRU files at the same time.
" Cusotm ctrlp ignore.
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|bower_components|__pycache__)$',
  \ 'file': '\v\.(celerybeat-schedule|jpeg|png)$'
\ }
" ********  ctrlp settings ends ********

" ******** abbreviations start *********
ab ipdb import ipdb; ipdb.set_trace()
" ******** abbreviations end *********
