" Set up a custom leader
let mapleader=" "
nnoremap <leader>i :set list!<CR>
nnoremap <leader>m :silent make\|redraw!\|cw<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>h :HardTimeToggle<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>l :call ToggleNumber()<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>s :mksession<CR>
nnoremap <leader>a :Ag 
nnoremap <leader>c :SyntasticCheck<CR>:Errors<CR>
nnoremap <leader>1 :set number!<CR>
nnoremap <leader>d :Make! 
inoremap jk <esc>

" Shared yank defs
let g:session_yank_file="~/.vim_yank"
map <silent> <Leader>y :call Session_yank()<CR>
vmap <silent> <Leader>y y:call Session_yank()<CR>
vmap <silent> <Leader>Y Y:call Session_yank()<CR>
nmap <silent> <Leader>p :call Session_paste("p")<CR>
nmap <silent> <Leader>P :call Session_paste("P")<CR>
