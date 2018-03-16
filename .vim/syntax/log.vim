"au BufRead, BufNewFile *.log set filetype=log

"syn region ComCoreLinePINP start=+pinp+ end=+\|+
"highlight ComCoreLinePINP ctermbg=Brown ctermfg=Yellow

"syn region ComCoreLinePOUT start=+pout+ end=+\|+
"highlight ComCoreLinePOUT ctermbg=Brown ctermfg=Yellow

syntax keyword ComCoreKey pinp pout
highlight ComCoreKey ctermbg=White ctermfg=Black

syntax keyword ComCoreValueOK ok
highlight ComCoreValueOK ctermbg=Green ctermfg=DarkGray

syntax keyword ComCoreValueNOK na
highlight ComCoreValueNOK ctermbg=Red ctermfg=White

syntax match ComCoreValuePressure "\v/\d+/\d+/\d+"
highlight ComCoreValuePressure ctermbg=Yellow ctermfg=Black
