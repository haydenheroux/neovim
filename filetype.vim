if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
	au! BufNewFile,BufRead *.groff,*.ms setf groff
	au! BufNewFile,BufRead *.cpp,*.cxx setf cpp
	au! BufNewFile,BufRead *.c,*.h setf c
	au! BufNewFile,BufRead *.vim setf vim
	au BufNewFile,BufRead * if &ft == '' | set ft=markdown | endif
augroup END
