syntax on

set nocompatible

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" bin ctrl+p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" show relative line number
set relativenumber

" add ruby compiler
autocmd FileType ruby compiler ruby

" Enable copying to clipboard using `CTRL + c`
map <C-c> y:e ~/clipsongzboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set cursorcolumn

" scroll the window when we get near the edge
set scrolloff=4 sidescrolloff=10

" use 2 spaces for tabs
set expandtab tabstop=2 softtabstop=2 shiftwidth=2

" enable line numbers, and don't make them any wider than necessary
set number numberwidth=2

" highlight cursor line
set cursorline

" searching is case insensitive when all lowercase
set ignorecase smartcase

" don't abandon buffers when unloading
set hidden

" don't blink the cursor
set guicursor=a:blinkon0

" show current line info (current/total)
set ruler rulerformat=%=%l/%L

" don't beep for errors
set visualbell

" highlight trailing whitespace
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list

" have the mouse enabled all the time
set mouse=a

" remember last position in file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" show commands as we type them
set showcmd

" highlight matching brackets
set showmatch

" tell vim to keep a backup file
set backup

" tell vim where to put its backup files
set backupdir=/private/tmp

" tell vim where to put swap files
set dir=/private/tmp

" folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

let g:python3_host_prog = '/usr/local/bin/python3'
