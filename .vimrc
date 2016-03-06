" set the Leader
let mapleader = ","

" An easy page up/down
map L 10j
map H 10k

set backspace=indent,eol,start

" indent 0 characters after an open parenthesis
set cinoptions=(0

" sweet enter functionality (goes with above)
inoremap <C-J> o
inoremap <C-L> la

" Tab will generate 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
" Backspace will delete 4 spaces
set softtabstop=4
set autoindent

" Limit line to a maximum of 79 characters
set textwidth=79

" Constant ruler in bottom screen
set ruler
set number
set incsearch
set ignorecase
set wrap
set linebreak
set hlsearch

" lines of context when scrolling
set scrolloff=5

set cursorline

colorscheme default
set background=dark
hi CursorLine cterm=none

" shortcut to repidly toggle `set list`
nmap <leader>l :set list!<CR>

map <leader>w :set invwrap<CR>

" copying
noremap <S-insert> <MiddleMouse>
inoremap <S-insert> <MiddleMouse>
cnoremap <S-insert> <MiddleMouse>

syntax on
" search $VIMRUNTIME/filetype.vim
filetype on

" REQUIRED: This makes vim invoke the Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a single file.  This will confuse Latex-Suite.  Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" Enable automatic indentation as you type.
filetype indent on

" move easily between ^ and $
noremap <C-h> ^
noremap <C-l> $

" Edit a file in the same hierarchy as the active file
map <Leader>e :edit =expand("%:p:h") . "/"
map <Leader>s :split =expand("%:p:h") . "/"
map <Leader>v :vsplit =expand("%:p:h") . "/"

" bash
set shell=bash

map stat :!stat %

au BufNewFile,BufRead *.tcl,*.*tcl,*.tk,*.itcl,*.itk,*.jacl	setf tcl
" JavaScript, ECMAScript
au BufNewFile,BufRead *.js,*.javascript,*.es,*.JS	setf javascript

" Map to build c++14 on clang and execute.
":map ,g :w<CR>:!clang++ % --std=c++14 && ./a.out<CR>

