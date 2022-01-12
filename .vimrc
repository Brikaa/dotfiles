" Syntax highlighting
filetype plugin on
syntax on
" Tabs and indentation
set ts=4 sw=4
set autoindent
" Escape to jk
inoremap jk <Esc>
" Ruler at 120 characters
set colorcolumn=120
" Ruler color
highlight colorcolumn ctermbg=lightgrey guibg=lightgrey
" Remove trailing whitespaces on saving
autocmd BufWritePre * :%s/\s\+$//e
" Relative line numbers
set rnu
