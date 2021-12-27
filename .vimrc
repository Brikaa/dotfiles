filetype plugin on
syntax on
set ts=4 sw=4
set autoindent
inoremap jk <Esc>
set colorcolumn=120
highlight colorcolumn ctermbg=lightgrey guibg=lightgrey
autocmd BufWritePre * :%s/\s\+$//e
