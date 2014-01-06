"
" editor options
"
syntax on                    " enable symatx highlighting
set nocompatible             " stops vim from behaving in a strongly vi -compatible way
set expandtab                " use spaces instead of real-tabs
set tabstop=2                " define how many columns a tab counts for
set bs=2                     " define how many columns a backspace counts for
set shiftwidth=2             " control how many columns text is indented with the reindent operations
set softtabstop=2            " control how many columns vim uses when one hit tab in insert mode
set autoindent               " copy the indentation from the previous line, when starting a new line
set smartindent              " automatically inserts one extra level of indentation in some cases
set laststatus=2             " display the status line always
set showmatch                " highlight matching parenthesis
set ignorecase smartcase     " case insensitive search
set cursorline               " highlight the current line
set number                   " show line numbers
set hlsearch                 " highlight matches on search
set invlist                  " show hidden chars (spaces, tabs, ...)
set listchars=tab:→→,trail:· " set replacements for hidden chars

"
" turn filetype detection on
"
filetype on
filetype indent on
filetype plugin on

"
" load color scheme
"
colorscheme Tomorrow-Night

"
" install vundle plugins
"
let install_bundles=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')

if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let install_bundles=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

if install_bundles == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :BundleInstall
endif

"
" key bindings
"

" open NerdTree on F9 key
nmap <silent> <F9> :NERDTreeTabsToggle<CR>

" toggle insert mode (autoindent) using F2 key
set pastetoggle=<F2>

"
" macros
"

" remove trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e
