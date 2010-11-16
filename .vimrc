" Make <F2> a toggle of showing numbers
nnoremap  <F2> :set nonumber!

" don't try to be compatible w/ vi
set nocompatible

" perform auto indents
set autoindent

" show the `best match so far' as search strings are typed:
set incsearch

" yellow background color for search results
set hlsearch

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

" assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault

" show line numbers by default, turn it off with :set nonumber
set number

" shows line and column info in status line
set ruler

" Highlight matching parens
set showmatch

"The h and l keystrokes can be made to wrap over lines 
set whichwrap=h,l,~,[,]

" make space pagedown
noremap <Space> <PageDown>

" make vim store more history
set history=1000

" make tab completion more useful
set wildmode=list:longest

" have vim set the title
set title

" store temp files in a central place
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" make ^e/^y scroll three at a time
nnoremap <C-e> 3<C-e>

" Intuitive backspacing in insert mode
set backspace=indent,eol,start
 
" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
filetype indent on

" some from this site: http://items.sjbach.com/319/configuring-vim-right
