" Language:   Lualit
" Maintainer: Gordon Brander <hello@gordonbrander.com>
" URL:        https://github.com/gordonbrander/lualit
" License:    MIT

autocmd BufNewFile,BufRead *.lualit set filetype=lualit

function! s:DetectLualit()
    if getline(1) =~ '^#!.*\<lualit\>'
        set filetype=lualit
    endif
endfunction

autocmd BufNewFile,BufRead * call s:DetectLualit()
