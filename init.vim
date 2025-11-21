" Use UTF-8 as standard encoding
set encoding=utf-8

" Enable line numbers
set number

" Enable clang-format
:packadd vim-clang-format
:ClangFormatAutoEnable

" Use the Visual Studio Code colourscheme
colorscheme codedark

" Allow indentation
filetype plugin indent on

" Automatically format shell scripts on save
autocmd BufWritePre *.sh :normal gg=G:

" NERDTree
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

" Automatically set GOPATH for Golang
let $GOPATH = $PWD

" Contains gopls, etc
let $PATH .= ':~/go/bin'

" Black only breaks up lines that are longer than 88 characters
" - we want to avoid tons of false positives.
let g:ale_python_flake8_options = '--max-line-length=88'

let g:go_fmt_command='goimports'

" Automatically remove whitespaces in Python
autocmd BufWritePre *.py :%s/\s\+$//e

" vim-autoformat
autocmd BufWritePre *.go Autoformat
autocmd BufWritePre *.py Autoformat
