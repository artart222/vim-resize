"Is<direction>Most Boolean Functions
function! IsRightMost()
    let oldw = winnr()
    silent! exec "normal! \<c-w>l"
    let neww = winnr()
    silent! exec oldw.'wincmd w'
    return oldw == neww
endfunction

function! IsBottomMost()
    let oldw = winnr()
    silent! exec "normal! \<c-w>j"
    let neww = winnr()
    silent! exec oldw.'wincmd w'
    return oldw == neww
endfunction

function! IsTopMost()
    let oldw = winnr()
    silent! exec "normal! \<c-w>k"
    let neww = winnr()
    silent! exec oldw.'wincmd w'
    return oldw == neww
endfunction

function! IsLeftMost()
    let oldw = winnr()
    silent! exec "normal! \<c-w>h"
    let neww = winnr()
    silent! exec oldw.'wincmd w'
    return oldw == neww
endfunction

function ResizeUp(n)
    let g:resize_count = a:n
    if IsBottomMost()
        if IsTopMost()
            silent! exec "normal! " . g:resize_count . "\<c-w>-"
        else
            silent! exec "normal! " . g:resize_count . "\<c-w>+"
        endif
    else
        silent! exec "normal! " . g:resize_count . "\<c-w>-"
    endif
    echo ""
endfunction

function ResizeDown(n)
    let g:resize_count = a:n
    if IsBottomMost()
        if IsTopMost()
            silent! exec "normal! " . g:resize_count . "\<c-w>+"
        else
            silent! exec "normal! " . g:resize_count . "\<c-w>-"
        endif
    else
        silent! exec "normal! " . g:resize_count . "\<c-w>+"
    endif
    echo ""
endfunction

function ResizeLeft(n)
    let g:resize_count = a:n
    if IsRightMost()
        if !IsLeftMost()
            silent! exec "normal! " . g:resize_count . "\<c-w>>"
        endif
    else
        silent! exec "normal! " . g:resize_count . "\<c-w><"
    endif
    echo ""
endfunction

function ResizeRight(n)
    let g:resize_count = a:n
    if IsRightMost()
        if !IsLeftMost()
            silent! exec "normal! " . g:resize_count . "\<c-w><"
        endif
    else
        silent! exec "normal! " . g:resize_count . "\<c-w>>"
    endif
    echo ""
endfunction
