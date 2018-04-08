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
