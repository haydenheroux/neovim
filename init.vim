syntax on
set noexpandtab
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:>-
set backspace=indent,eol,start
set relativenumber
set smartcase
set ruler
" autocmd FileType python map <F5> :!python % <enter>
" autocmd FileType groff map <F5> :!groff -Tpdf -ms % \| zathura - <enter>
" autocmd FileType cpp map <F5> :!make <enter>:!sh -c ./
autocmd FileType haskell set expandtab
noremap j gj
noremap k gk

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

call plug#end()
