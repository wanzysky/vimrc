" old
if !1 | finish | endif



set nocompatible      " We're running Vim, not Vi!

" 关联行号
set cursorcolumn
set number
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
autocmd WinEnter,FocusGained * :setlocal number relativenumber
autocmd WinLeave,FocusLost   * :setlocal number norelativenumber

if has('nvim')
  let g:deoplete#enable_at_startup = 1
endif

filetype plugin indent on


let g:ctrlp_map = '<c-l>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry
