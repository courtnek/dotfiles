"---------------------------------------------------------------
" file:     ~/.vimrc                         
"---------------------------------------------------------------

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set textwidth=79
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set number
set hlsearch
set tabstop=4     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=4  " indenting is 4 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
set cindent       " stricter rules for C programs

syntax on
filetype plugin on

colorscheme miromiro
