" Vim indent file
" Language:     Ion
" Maintainer:   Olivier Teuliere (teuliere@)
" Last Change:  2013 Mar 04

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
   finish
endif
let b:did_indent = 1

setlocal indentexpr=GetIonIndent()

" The new indent (NI) is calculated as follows:
"   NI = PI + sw*(-PC + PO - CCS)
" where:
" - PI is the indent of the previous (non blank, non starting inside a
"   multiline string) line
" - sw is the shiftwidth (see :h 'sw')
" - PC is the number of closing signs on the previous line
"       (not counting the ones matched on the same line, nor the ones
"       inside strings or identifiers)
" - PO is the number of closing signs on the previous line
"       (not counting the ones matched on the same line, nor the ones
"       inside strings or identifiers)
" - CCS is 1 if the current line (v:lnum) starts with a closing sign,
"       0 otherwise
"
" Here, opening signs are {[(, and closing signs are }]).
" There is a special handling for {{ }} blocks and for multiline strings.
function! GetIonIndent()
    " Do not change the indent in a '''long string'''
    if LineStartsInString(v:lnum)
        return indent(v:lnum)
    endif

    " Find the previous line with text
    let pnum = prevnonblank(v:lnum - 1)
    if pnum == 0
        return 0
    endif

    let sw = &sw
    let prevLine = getline(pnum)
    let currLine = getline(v:lnum)
    let ind = indent(pnum)

    " Don't take the indent of a line starting inside a long string
    if LineStartsInString(pnum)
        " Find the first line of the long string (in a loop, for the
        " unfortunate case where the long string starts on a line where
        " another one ended)
        let startLnum = pnum
        while (LineStartsInString(startLnum))
            call cursor(startLnum, 0)
            let startLnum = search("'''", 'bW')
        endwhile
        if startLnum > 0
            let ind = indent(startLnum)
        endif
    endif

    " Closing signs in the previous line reduce the indent.
    " Be careful not to count '}}' twice.
    let closed =
                \   CountClosed(pnum, '\[', ']')
                \ + CountClosed(pnum, '(', ')')
                \ + CountClosed(pnum, '{', '}')
                \ - CountClosed(pnum, '{{', '}}')
    " Ignore the first closing sign, if it is only preceded with
    " white space, because it was already taken into account when
    " computing the indent of that line
    if StartsWithClosingSign(prevLine)
        let closed -= 1
    endif
    let ind -= closed * sw

    " Opening signs in the previous line increase the indent.
    " Be careful not to count '{{' twice.
    let opened =
                \   CountOpened(pnum, '\[', ']')
                \ + CountOpened(pnum, '(', ')')
                \ + CountOpened(pnum, '{', '}')
                \ - CountOpened(pnum, '{{', '}}')
    let ind += opened * sw

    " If the current line starts with a a closing sign, reduce the indent
    if StartsWithClosingSign(currLine)
        let ind -= sw
    endif

    return ind
endfunction

" Return 1 if the given string starts (after optional white space)
" with one of '}', ')', ']'. Return 0 otherwise.
function! StartsWithClosingSign(lineStr)
    return match(a:lineStr, '^\s*[})\]]') != -1
endfunction

" Return 1 if the given line starts in a string, i.e. if the beginning of the
" line is part of a long string
function! LineStartsInString(lineNum)
    return IsInString(a:lineNum, 1)
endfunction

" Return 1 if the given position is inside a Ion string or any other 'quoted'
" type, where we should ignore the special symbols: [{()}].
" Return 0 otherwise
function! IsInString(lineNum, colNum)
    if a:lineNum < 1
        return 0
    endif
    let synElem = synIDattr(synID(a:lineNum, a:colNum, 1), "name")
    return synElem == 'ionString' || synElem == 'ionAnnotation'
endfunction

" Count on the given line the number of 'start' symbols, which are not
" inside a String and which are not matched on the line itself
function! CountOpened(lineNum, start, end)
    let cnt = 0
    let currLine = getline(a:lineNum)

    " Search symbols from left to right in a loop
    let startIdx = match(currLine, a:start, 0)
    while (startIdx != -1)
        if !IsInString(a:lineNum, startIdx + 1)
            call cursor(a:lineNum, startIdx + 1)
            let lnum = searchpair(a:start, '', a:end, 'Wn')
            if lnum < 1 || lnum > a:lineNum
                let cnt += 1
            endif
        endif
        let startIdx = match(currLine, a:start, startIdx + 1)
    endwhile

    return cnt
endfunction

" Count on the given line the number of 'end' symbols, which are not
" inside a String and which are matched strictly before the line itself.
" E.g.: the function returns 2 for the line '  ],[foo:bar],"]"]'
"       (with start='\[' and end=']')
function! CountClosed(lineNum, start, end)
    let cnt = 0
    let currLine = getline(a:lineNum)

    " Search symbols from left to right in a loop
    let startIdx = match(currLine, a:end, 0)
    while (startIdx != -1)
        if !IsInString(a:lineNum, startIdx + 1)
            call cursor(a:lineNum, startIdx + 1)
            let lnum = searchpair(a:start, '', a:end, 'bWn')
            if lnum > 0 && lnum < a:lineNum
                let cnt += 1
            endif
        endif
        let startIdx = match(currLine, a:end, startIdx + 1)
    endwhile

    return cnt
endfunction

