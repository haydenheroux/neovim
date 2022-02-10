augroup filetypedetect
	au! BufNewFile,BufRead *.groff,*.ms setf groff
	au! BufNewFile,BufRead *.cpp,*.cxx setf cpp
	au! BufNewFile,BufRead *.c,*.h setf c
	au! BufNewFile,BufRead *.vim setf vim
augroup END
