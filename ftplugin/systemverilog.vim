" Vim filetype plugin file
" Language:	SystemVerilog
" Maintainer:	Bravy Wang <bravywang@gmail.com>
" Last Change:	Augest 1 2018
" Version: 1.0

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Behaves just like Verilog
runtime! ftplugin/verilog.vim
