" Language:   Lualit
" Maintainer: Gordon Brander <hello@gordonbrander.com>
" URL:        https://github.com/gordonbrander/lualit
" License:    MIT

if exists('b:did_indent')
  finish
endif

runtime! indent/lualit.vim

let b:did_indent = 1

setlocal indentexpr=GetLualitIndent()

if exists('*GetLualitIndent')
  finish
endif

function GetLualitIndent()
  if searchpair('^    \|\t', '', '$', 'bWnm') > 0
    return GetLuaIndent(v:lnum)
  else
    return -1
  endif
endfunc

