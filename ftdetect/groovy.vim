au BufNewFile,BufRead *.groovy setf groovy
au BufNewFile,BufRead *.gradle setf groovy
au BufNewFile,BufRead *.gson setf groovy

fun! s:SelectGroovy()
  if getline(1) =~# '^#!.*/groovy\>'
    set ft=groovy
  endif
endfun
au BufNewFile,BufRead * call s:SelectGroovy()
