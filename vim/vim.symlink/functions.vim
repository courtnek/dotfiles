function! Session_yank()
    new
    call setline(1,getregtype())
    put
    silent exec 'wq! ' . g:session_yank_file
    exec 'bdelete ' . g:session_yank_file
endfunction

function! Session_paste(command)
    silent exec 'sview ' . g:session_yank_file
    let l:opt=getline(1)
    silent 2,$yank
    if (l:opt == 'v')
        call setreg('"', strpart(@",0,strlen(@")-1), l:opt) " strip trailing endline ?
    else
        call setreg('"', @", l:opt)
    endif
    exec 'bdelete ' . g:session_yank_file
    exec 'normal ' . a:command
endfunction

function! s:insert_header_guard()
    let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
    execute "normal! i#ifndef " . gatename
    execute "normal! o#define " . gatename
    execute "normal! Go#endif"
    normal! kk
endfunction

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

function! <SID>CleanFile()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %!git stripspace
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Ignore CamelCase words when spell checking
function! IgnoreCamelCaseSpell()
    syn match CamelCase /\<[A-Z][a-z]\+[A-Z].\{-}\>/ contains=@NoSpell transparent
    syn cluster Spell add=CamelCase
endfun
autocmd BufRead,BufNewFile * :call IgnoreCamelCaseSpell()
