syntax enable
au BufWinenter,BufRead,BufNewFile *.log set filetype=log

set equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

map <F7> :tabp
map <F8> :tabn
