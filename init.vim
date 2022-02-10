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
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
call plug#end()

" coc: Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" coc: Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" coc: Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" nerdtree: Set NERDTree keybinds.
nnoremap <C-n> :NERDTreeToggle<CR>

" nerdtree: Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" nerdtree-git-plugin: NERDTree + Git configuration.
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusConcealBrackets = 1
