" vim:set ts=8 sts=2 sw=2 tw=0 et nowrap:
"
" minimap_loader.vim - Loader of minimap plugin for Vim.
"
" License: THE VIM LICENSE
"
" Copyright:
"   - (C) 2012 MURAOKA Taro (koron.kaoriya@gmail.com)

scriptencoding utf-8

if v:servername =~? 'minimap'
  augroup minimap
    autocmd!
    autocmd VimEnter * call minimap#_on_open()
  augroup END
else
  call minimap#init()
endif
