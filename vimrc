" === Global options

syntax on

set autoindent
set bs=2
set cursorline
set expandtab
set hlsearch
set ignorecase smartcase
set laststatus=2
set list
set listchars=tab:»\ ,trail:·
set mouse=a
set nocompatible
set number
set pastetoggle=<F2>
set shiftwidth=2
set showmatch
set smartindent
set softtabstop=2
set tabstop=2
set updatetime=100

filetype on
filetype indent on
filetype plugin on

autocmd BufWritePre * :%s/\s\+$//e

" === Vundle Plugin Manager

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'

" === Appearance

Bundle 'joshdick/onedark.vim'

colorscheme onedark

hi Normal guibg=NONE ctermbg=NONE

" === Plugins

Plugin 'godlygeek/tabular'

Plugin 'vim-ruby/vim-ruby'

Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwisd'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'

" === NERDTree - File Manager

Plugin 'scrooloose/nerdtree'

nmap <silent> <F9> :NERDTreeToggle<CR>

" === Ctrlp - Open file with fuzzy finder

Plugin 'kien/ctrlp.vim'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" === CtrlSF - Search in files

" https://github.com/dyng/ctrlsf.vim

Plugin 'dyng/ctrlsf.vim'

let g:ctrlsf_context           = '-B 3 -A 3'
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_fold_result       = 1
let g:ctrlsf_winsize           = '30%'

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" === VIM-Gitgutter

Plugin 'airblade/vim-gitgutter'

if executable('ag')
  let g:gitgutter_grep = 'ag'
endif

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction

set statusline+=%{GitStatus()}

" === VIM-Textobject-Rubyblock

Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'

runtime macros/matchit.vim
