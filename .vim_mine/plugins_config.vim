 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif
 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
 NeoBundle      'scrooloose/nerdtree'
 NeoBundle      'tpope/vim-rails'
 NeoBundle      'altercation/vim-colors-solarized'
 NeoBundle      'vim-ruby/vim-ruby'
 NeoBundle      'ervandew/supertab'
 NeoBundle      'kchmck/vim-coffee-script'
 NeoBundle      'danro/rename.vim'
 NeoBundle      'tpope/vim-fugitive'
 NeoBundle      'dkprice/vim-easygrep'
 NeoBundle      'junegunn/vim-easy-align'
 NeoBundle      'tpope/vim-vinegar'
 NeoBundle      'slim-template/vim-slim'
 NeoBundle      'terryma/vim-multiple-cursors'
 NeoBundle      'kien/ctrlp.vim'
 NeoBundle      'shougo/deoplete.nvim'
 NeoBundle      'fatih/vim-go'
 NeoBundle      'tpope/vim-surround'
 NeoBundle      'marcweber/vim-addon-mw-utils'
 NeoBundle      'garbas/vim-snipmate'
 NeoBundle      'scrooloose/syntastic'
 NeoBundle      'bling/vim-airline'
 NeoBundle      'vim-airline/vim-airline-themes'
 NeoBundle      'tomtom/tlib_vim'
 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()


"""""""""""""""""""""""""""""
" => CTRL-P
"""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-p>'
map <leader>j :CtrlP<cr>
map <c-l> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|'

"""""""""""""""""""""""""""""
" => EasyAlign
"""""""""""""""""""""""""""""
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['go']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="badwolf"
let g:airline#extensions#tabline#enabled = 1
