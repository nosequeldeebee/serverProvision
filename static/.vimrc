syntax on
set number
filetype plugin indent on

" Maintain undo history between sessions
set undofile
set undodir=~/.vim/undodir

" start pathogen plugin manager
execute pathogen#infect()

" start vim-plug plugin manager
call plug#begin('~/.vim/plugged')
Plug 'elmcast/elm-vim'
call plug#end()

" use syntastic to check for syntax on open and writes
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Open go doc in vertical window
au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>

" run format on each save
let g:go_fmt_command = "goimports"
let g:elm_format_autosave = 1

" Go syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
