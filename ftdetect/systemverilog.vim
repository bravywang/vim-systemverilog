" Vim filetype plugin file
" Language:	SystemVerilog
" Maintainer:	Bravy Wang <bravywang@gmail.com>
" Last Change:	October 21 2025
" Version: 1.1

au BufNewFile,BufRead *.v,*.vh,*.vp,*.sv,*.svi,*.svh,*.svp	set filetype=systemverilog
au BufNewFile,BufRead *.f	set filetype=text

au BufNewFile,BufRead *.v.erb,*.vh.erb,*.vp.erb,*.sv.erb,*.svi.erb,*.svh.erb,*.svp.erb	set filetype=eruby.systemverilog
au BufNewFile,BufRead *.f.erb	set filetype=eruby.text
