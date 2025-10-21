" Vim syntax file
" Language:	SystemVerilog
" Maintainer:	Bravy Wang <bravywang@gmail.com>
" Last Change:	October 21 2025

syn keyword svConditional   case casex casez default else endcase if ifnone randcase
syn keyword svConditional   dist first_match iff inside intersect matches throughout with within

syn keyword svFunction      assume binsof disable expect new wait wait_order
syn keyword svFunction      break continue return constraint_mode rand_mode randomize pre_randomize post_randomize solve

syn keyword svIdentifier    assert bind cover cross export extends import incdir include pulldown pullup type typedef
syn keyword svIdentifier    alias assign deassign force release
syn keyword svIdentifier    and nand nor not or xnor xor

syn keyword svLabel         before begin end fork forkjoin join join_any join_none

syn keyword svPreProc       null super this

syn keyword svRepeat        always always_comb always_ff always_latch do for foreach forever repeat while

syn keyword svStructure     enum struct union

syn keyword svSpecial       bins cell constraint coverpoint defparam design final ignore_bins illegal_bins initial
syn keyword svSpecial       liblist library modport priority timeprecision timeunit unique use

syn keyword svStorageClass  class clocking config covergroup endclass endclocking endfunction endconfig endgenerate endgroup
syn keyword svStorageClass  endinterface endmodule endpackage endprimitive endprogram endproperty endsequence endspecify
syn keyword svStorageClass  endtable endtask function generate group interface macromodule module package primitive program property
syn keyword svStorageClass  randsequence sequence specify std table task

syn keyword svStatement     automatic const context edge extern input inout local negedge noshowcacelled output
syn keyword svStatement     packed posedge protected pure rand randc ref static void unsigned
syn keyword svStatement     highz0 highz1 large medium pull0 pull1 small strong0 strong1 supply0 supply1 virtual weak0 weak1

syn keyword svType          bit buf buffif0 bufif1 byte chandle coms event genvar int integer logic longint mailbox process semaphore
syn keyword svType          nmos  motif0 notif1 parameter localparam specparam pmos rmos real realtime reg rmos
syn keyword svType          shortint shotreal string time tran tranif0 tranif1 tri tri0 tri1 triand trior trireg
syn keyword svType          wire wand wor

syn keyword svTodo          contained TODO, TBD

syn match   svConstant      "\<[A-Z][A-Z0-9_]\+\>"

syn match   svNumber        "\<[0-9_]\+step\>"
syn match   svNumber        "\<[0-9_]\+\([munpf]\|\)s\>"
syn match   svNumber        "\(\<\d\+\|\)'[bB]\s*[0-1_xXzZ?]\+\>"
syn match   svNumber        "\(\<\d\+\|\)'[oO]\s*[0-7_xXzZ?]\+\>"
syn match   svNumber        "\(\<\d\+\|\)'[dD]\s*[0-9_xXzZ?]\+\>"
syn match   svNumber        "\(\<\d\+\|\)'[hH]\s*[0-9a-fA-F_xXzZ?]\+\>"
syn match   svNumber        "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\(e[0-9_]*\|\)\>"

syn match   svOperator      "[&|~><!)(*#%@+/=?:;}{,.\^\-\[\]]"

syn match   svDefine        "`[a-zA-Z0-9_]\+\>"
syn match   svPreProc       "$[a-zA-Z0-9_]\+\>"

syn region  svString        start=+"+ skip=+\\"+ end=+"+ contains=svSpecial
syn match   svSpecial       +\\[nt"\\]+ contained
syn match   svSpecial       "\\\o\o\=\o\=" contained

syn match   svComment       "//.*" contains=Todo
syn region  svComment       start="/\*" end="\*/" contains=Todo


"Modify the following as needed.  The trade-off is performance versus
"functionality.
syn sync lines=80

hi link svComment         Comment         
hi link svConditional     Conditional     
hi link svConstant        Constant        
hi link svDefine          Define          
hi link svFunction        Function        
hi link svIdentifier      Identifier      
hi link svLabel           Label           
hi link svNumber          Number          
hi link svOperator        Operator        
hi link svPreProc         PreProc         
hi link svRepeat          Repeat          
hi link svStructure       Structure       
hi link svSpecial         Special         
hi link svStorageClass    StorageClass    
hi link svStatement       Statement       
hi link svString          String          
hi link svTodo            Todo            
hi link svType            Type            

let b:current_syntax="systemverilogx"

if exists('loaded_matchit')
    let b:match_ignorecase=0
    let b:match_words= 
        \ '\<begin\>:\<end\>,' .
        \ '\<case\>\|\<casex\>\|\<casez\>:\<endcase\>,' .
        \ '\<class\>:\<endclass\>,' .
        \ '\<clocking\>:\<endclocking\>,' .
        \ '\<covergroup\>:\<endgroup\>,' .
        \ '\<fork\>:\<join\>\|\<join_any\>\|\<join_none\>,' .
        \ '\<function\>:\<endfunction\>,' .
        \ '\<generate\>:\<endgenerate\>,' .
        \ '\<if\>:\<else\>,' .
        \ '\<interface\>:\<endinterface\>,' .
        \ '\<module\>:\<endmodule\>,' .
        \ '\<package\>:\<endpackage\>,' .
        \ '\<program\>:\<endprogram\>,' .
        \ '\<property\>:\<endproperty\>,' .
        \ '\<primitive\>:\<endprimitive\>,' .
        \ '\<sequence\>:\<endsequence\>,' .
        \ '\<specify\>:\<endspecify\>,' .
        \ '\<task\>:\<endtask\>,' .
        \ '\<do\>:\<while\>,' .
        \ '`ifdef\|`ifndef\|`else:`endif,' 
endif
