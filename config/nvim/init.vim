" --------------------------------------------------------------
" Heavily borrowered from YADR: https://github.com/skwp/dotfiles


" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ General Config ====================

set number                      "line numbers
set relativenumber              "Show relative distance
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set splitbelow                  "Open splits below current
set splitright                  "Open splits to the right of current
set showmatch                   "Show matching braces
set matchtime=2                 "Speed up showmatch time
set clipboard=unnamedplus       "Use system clipboard

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" set leader char
let mapleader = ","

" =============== Plug Initialization ===============
" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
call plug#begin('~/.vim/plugged')
  " Themes
  Plug 'lifepillar/vim-solarized8'
  Plug 'itchyny/lightline.vim'
  Plug 'morhetz/gruvbox'

  " Files
  Plug 'preservim/nerdtree'

  " Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  " Editor
  Plug 'editorconfig/editorconfig-vim'
  Plug 'tpope/vim-surround'
  Plug 'numToStr/Comment.nvim'

  " Git
  Plug 'tpope/vim-fugitive'

  " Ruby
  Plug 'tpope/vim-rails'
  Plug 'thoughtbot/vim-rspec'
call plug#end()

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8          "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
set ttyfast lazyredraw   "make scrolling and painting fast (not needed for nvim/mvim)

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Git Messages ===========================

" add spell checking and automatic wrapping at the recommended 72 columns to you
" commit messages
" http://robots.thoughtbot.com/post/48933156625/5-useful-tips-for-a-better-commit-message
"
autocmd Filetype gitcommit setlocal spell textwidth=72

" ================ Misc ===========================

" http://stackoverflow.com/questions/2490227/how-does-vims-autoread-work#20418591
au FocusGained,BufEnter * :silent! !

" ================ Custom Settings ========================
source ~/.dotfiles/config/nvim/settings.vim
