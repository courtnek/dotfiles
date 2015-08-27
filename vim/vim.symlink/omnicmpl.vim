" Setup Omni Complete Plugin and Other Language Tools
" Setup for Omni Completion to facilitate auto-completion support and to further configure language-specific helper tools.

" Configure the auto-complete pop-up menu to automatically open and close.
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" Configure pop-up menu to auto-select based on order of options.
set completeopt=menuone,menu,longest,preview

" Set the default tag file to equal the name of the file that is generated as a result of the UpdateTags() function. If a tag file not exist within the directory containing the file that is being edited by Vim then it is simply not used. No negative effects occur.
if has('win32')
    set tags+=./tags
elseif has('unix')
    set tags+=./tags
endif

" Use binary search to search a tags file for matching patterns. Assumes the tags file was sorted on ASCII byte value. If no match is found during an initial search, Vim will switch to a linear search and re-scan the tags file. OPTIMIZATION: Requires tags files to be sorted by Ctags using the 'foldcase' option and requires Vim to have 'ignorecase' option set. Optimization will insure all matching tags are found, while still supporting binary search. See ":help tagbsearch".
set tagbsearch

" Enable a Vim option to remember which tags were jumped to, and from where. The tagstack list shows the tags that were jumped to and the cursor position right before the jump.
set tagstack

" GENERIC LANGUAGE SUPPORT

" Enable default auto complete support in Vim. Will force Vim to select the appropriate auto complete tool based on filetype.
set omnifunc=syntaxcomplete#Complete

" C SUPPORT.

" Enable C Omni Complete on C source and header files.
if version >= 700
    autocmd FileType c set omnifunc=ccomplete#Complete " Default Omni Complete line for enabling Omni Complete for C files.
endif

" C++ SUPPORT.

" Enable C++ Omni Complete on C++ source and header files.
if version >= 700
    autocmd FileType cpp set omnifunc=omni#cpp#complete#Main " Override built-in C Omni Complete with C++ OmniCppComplete plugin.
    " autocmd BufNewFile,BufRead,BufEnter *.cpp,*.hpp " A possible improvement is to use the proceeding line in which the file extensions are specified. It may be required to get Vim to recognize files that have usual extensions.
    let OmniCpp_GlobalScopeSearch = 1 " Search for functions starting from the global scope and narrowing down from there.
    let OmniCpp_NamespaceSearch = 1 " Search for functions within the current file and all included files.
    let OmniCpp_ShowAccess = 1 " Show access modifier (private(-), public(#), or protected(#)).
    let OmniCpp_DisplayMode = 1 " Show all members: static, public, protected, and private.
    let OmniCpp_ShowScopeInAbbr = 1 " Show namespace, such as the class, that defines the function.
    let OmniCpp_ShowPrototypeInAbbr = 1 " Show prototype (argument types).
    let OmniCpp_MayCompleteDot = 1 " Autocomplete after .
    let OmniCpp_MayCompleteArrow = 1 " Autocomplete after ->
    let OmniCpp_MayCompleteScope = 1 " Autocomplete after ::
    let OmniCpp_SelectFirstItem = 2 " Select first item within the pop-up menu. (1 = Insert option into text, 2 = Select but don't insert into text)
    let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"] " Omni Complete will include the following namespaces by default, without first requiring the namespaces to be specified.
    set completeopt=menuone,menu,longest
endif

" List OmniCppComplete tag database files.
if has('unix')
    set tags+=~/.vim/tags/stl " STL C++ tag database file.
    set tags+=~/.vim/tags/online-devel " What mysterious magic could tags appear here I wonder...
endif
