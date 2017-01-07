" Language:   Lualit
" Maintainer: Gordon Brander <hello@gordonbrander.com>
" URL:        https://github.com/gordonbrander/lualit
" License:    MIT

if exists('b:current_syntax') && b:current_syntax == 'lualit'
  finish
endif

runtime! syntax/markdown.vim
unlet b:current_syntax

syn clear markdownCode

syn include @LUA syntax/lua.vim

syn region inlineLua start='^    \|\t' end='$' contains=@LUA

let b:current_syntax = "lualit"