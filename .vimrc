" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
filetype on

set nocompatible

"文字コードの設定
set encoding=utf-8
scriptencoding utf-8
set noswapfile

set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8
set fileformats=unix,dos,mac
set ambiwidth=double

"tab,インデントの設定
set expandtab
set tabstop=4
set softtabstop=4
set noautoindent
set smartindent
set shiftwidth=4
augroup vimrc
    autocmd!
    autocmd FileType c,cpp,java setl cindent
    autocmd FileType c,cpp,java setl shiftround
augroup END

"検索の設定
set incsearch
set ignorecase
set smartcase
set hlsearch

nnoremap <slient><Esc><Esc> :<C-u>set nohlsearch!<CR>

set whichwrap=b,s,h,l,<,>,[,],~
set numberwidth=5
set number
set cursorline

set showmatch
set wildmenu
set history=5000

set laststatus=2
set showmode
set showcmd
set ruler
set virtualedit=block

"キーマッピング
noremap <Space>l $
noremap <Space>h ^
noremap <Space>w :w<CR>

inoremap jk <ESC>

inoremap <C-j> <down>
inoremap <C-h> <left>
inoremap <C-k> <up>
inoremap <C-l> <right>

" Set Dein base path (required)
let s:dein_base = '$HOME/.cache'

" Set Dein source path (required)
let s:dein_src = '$HOME/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

"call dein#add('jacoborus/tender.vim')
call dein#add('joshdick/onedark.vim')
set t_Co=256
colorscheme onedark

call dein#add('itchyny/lightline.vim')
" Finish Dein initialization (required)

call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif
