" Vim indent file
" Language:     brazil-config
" Maintainer:   Olivier Teulière (teuliere@)

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
    finish
endif
let b:did_indent = 1

" The # comment symbol shouldn't go to the first column
setlocal indentkeys-=0#
" Improve handling of comments
setlocal cino+=#1

" Set the function to do the work.
setlocal indentexpr=GetBrazilConfigIndent()

function! GetBrazilConfigIndent()
    " This is similar to C; use the built-in C indenting.
    " Note that Vim takes lines starting with # as preprocessor lines,
    " which causes various issues.
    " For example:
    "       # Some comment (with opening parentheses
    "       # closed only at the next line) (or not at all
    return cindent(v:lnum)
endfunction
