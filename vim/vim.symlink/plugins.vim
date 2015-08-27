filetype off " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" General Usability
Bundle 'Gundo'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-unimpaired'
Bundle 'mbbill/undotree'
Bundle 'matchit.zip'
Bundle 'godlygeek/tabular'
Bundle 'junegunn/vim-easy-align'
Bundle 'AutoComplPop'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdcommenter'
Bundle 'gregsexton/MatchTag'
Bundle 'takac/vim-hardtime'
Bundle 'terryma/vim-multiple-cursors'

" Organization
Bundle 'christoomey/vim-tmux-navigator'

" Notes
Bundle 'fmoralesc/vim-pad'

" Looks
Bundle 'nicwest/rainbow_parentheses.vim'

" Colors
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'ajh17/Spacegray.vim'
"Bundle 'jnurmine/Zenburn'
"Bundle 'tomasr/molokai'
Bundle 'chriskempson/base16-vim'

" C++ Usability
Bundle 'OmniCppComplete'

" Javascript
Bundle 'jelera/vim-javascript-syntax'
Bundle 'marijnh/tern_for_vim'

" VCS Management
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on
