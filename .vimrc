set nocompatible

set t_Co=16
set autoindent
set expandtab
set textwidth=124
set backspace=indent,eol,start
set number
set fileformat=unix
set encoding=utf-8

call pathogen#infect()
"au BufNewFile,BufRead *.py:
"  \ set tabstop=4 
"  \ set softtabstop=4 
"  \ set shiftwidth=4


"python with virtualenv support
"python << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

"au BufNewFile,BufRead *.js, *.html, *.css:
"    \ set tabstop=2 
"    \ set softtabstop=2 
"    \ set shiftwidth=2


let g:ycm_autoclose_preview_window_after_completion=1
"map <space>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let python_highlight_all=1
syntax on


filetype plugin indent on
"set term=screen-256color
set background=dark
colorscheme solarized
"let g:solarized_termcolors=16

nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bN<CR>
