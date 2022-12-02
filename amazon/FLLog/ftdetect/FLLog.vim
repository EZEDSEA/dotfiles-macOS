" see: https://w.amazon.com/?VimFLLogSyntax
function! s:FT_FLLog()
    if ! (exists('g:disableFLLogSyntax') && g:disableFLLogSyntax)
        if (getline(1) =~ "^\\w\\{3\\} \\w\\{3\\} \\d\\{2\\} \\d\\{2\\}:\\d\\{2\\}:\\d\\{2\\} \\d\\{4\\}")
            setfiletype FLLog
        endif
    endif
endfunction

autocmd BufReadPost * call s:FT_FLLog()
