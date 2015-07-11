"シンタックスハイライト
syntax enable

" 行番号
set number

" タブとインデント
set autoindent
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set smarttab

" ステータスライン
set laststatus=2

" NeoBundle
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

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

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'itchyny/lightline.vim'


call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" カラースキーマ
colorscheme hybrid


