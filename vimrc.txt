"   Vundle setup
" :PluginUpdate or :PluginInstall!  - from inside VIM
"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Install L9 and avoid a Naming conflict if you've already installed a
"" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}
set nocompatible  
filetype off   " vundle
syntax enable   " vundle 
set rtp+=~/.vim/bundle/Vundle.vim   " vundle
call vundle#begin()   " vundle#begin(path/to/install/directory)
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on
"set number
set ts=3
set autoindent
set expandtab
set shiftwidth=3
set cursorline
set showmatch
set tabstop=3
set showcmd
set wildmenu
set showmatch
set lazyredraw
set incsearch
set hlsearch
nnoremap <leader>c :nohlsearch<CR>
inoremap jk <esc>
inoremap JK F!!!!CAPS!!!!f<esc>FF
inoremap <C-o> <Esc>o
inoremap <C-O> <Esc>O
set ruler
nnoremap zm zbM
colorscheme elflord
set laststatus=2
set statusline=
set statusline+=%<%f\ %h%m%r%=%10(%l,%c%V%)\ %5p%%
command Clean :%s/jpw/test/g | %s/trx.../example/g | wq
command Paste :b2 | i | <C-r>a
command Comment 1G


