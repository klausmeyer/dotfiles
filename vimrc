set autoindent
set bs=2
set cursorline
set expandtab
set hlsearch
set ignorecase smartcase
set laststatus=2
set list
set listchars=tab:»\ ,trail:· ",eol:¬
set mouse=a
set nocompatible
set number
set shiftwidth=2
set showmatch
set smartindent
set softtabstop=2
set tabstop=2

syntax on

autocmd BufWritePre * :%s/\s\+$//e

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'

Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'

Bundle 'joshdick/onedark.vim'

colorscheme onedark

hi Normal guibg=NONE ctermbg=NONE

filetype on
filetype indent on
filetype plugin on

nmap <silent> <F9> :NERDTreeToggle<CR>

set pastetoggle=<F2>

if executable("ag")
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
