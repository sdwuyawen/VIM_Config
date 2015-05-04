"========================================================
" Highlight All Function
"========================================================
let colors_name = "test"
syn match cFunction /\<\w\+\%(\s*(\)\@=/
hi default link cFunction cType

"========================================================
" Highlight All Math Operator
"========================================================
" C math operators
syn match cMathOperator display "[-+/*/%=]"
" C pointer operators
syn match cPointerOperator display "->/|/."
" C logical operators - boolean results
syn match cLogicalOperator display "[!<>]=/="
syn match cLogicalOperator display "=="
" C bit operators
syn match cBinaryOperator display"/(&/||/|/^/|<</|>>/)=/="
"syn match cBinaryOperator display "/~"
"syn match cBinaryOperatorError display "/~="
" More C logical operators - highlight in preference to binary
syn match cLogicalOperator display "&&/|||"
syn match cLogicalOperatorError display "/(&&/|||/)="

" Math Operator
hi cMathOperator guifg=#3EFFE2
hi cPointerOperator guifg=#3EFFE2
hi cLogicalOperator guifg=#3EFFE2
hi cBinaryOperator guifg=#3EFFE2
hi cBinaryOperatorError guifg=#3EFFE2
hi cLogicalOperator guifg=#3EFFE2
hi cLogicalOperatorError guifg=#3EFFE2
