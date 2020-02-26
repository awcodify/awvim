
" insert blank lines without going into insert mode
nmap go o<esc>
nmap gO O<esc

" select the lines which were just pasted
nnoremap vv `[V`]>

" mapping the jumping between splits. Hold control while using vim nav.
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" select the lines which were just pasted
nnoremap vv `[V`]

" clean up trailing whitespace
map <Leader>c :StripTrailingWhitespaces<cr>

" compress excess whitespace on current line
map <Leader>e :s/\v(\S+)\s+/\1 /<cr>:nohl<cr>

" delete all buffers
map <Leader>d :bufdo bd<cr>

" map spacebar to clear search highlight
nnoremap <Leader><space> :noh<cr>

" buffer resizing mappings (shift + arrow key)
nnoremap <S-Up> <c-w>+
nnoremap <S-Left> <c-w><<c-w><<c-w><
nnoremap <S-Right> <c-w>><c-w>><c-w>

" Multiple cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" NERDTree for project drawer
let NERDTreeHijackNetrw = 0
nmap <leader>g :NERDTreeToggle<CR>
nmap <leader>r :NERDTreeFind<CR>

" ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" FZF

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" map for file search
nmap <c-p> :Files<CR>

" Map test runner
nnoremap <Leader>s :TestNearest<CR>
nnoremap <Leader>f :TestFile<CR>
nnoremap <Leader>n :TestSuite<CR>
nnoremap <Leader>l :TestLast<CR>
nnoremap <Leader>g :TestVisit<CR>

"Avoid using arrows
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Rigth> <Nop>

"copy to clipboard
vmap <leader>d :!pbcopy<CR>
vmap <leader>y :w !pbcopy<CR><CR>

"functions
map <Leader>cd :call SearchForDeclarationCursor()<CR>

" Command to generate group_vars variable
map <Leader>gvc :%s/\(^\\|\(.*{{.*}}.*\)\@<=\).\{-}\($\\|.*{{.*}}.*\)\@=//g<CR>:%s/^\n//g<CR>
map <Leader>cn :%s/^\n//g
map <Leader>gv :let @a=""<CR>:%s/{ \zs.\{-}\ze\ /\=setreg('A', submatch(0), 'l')/g<CR>:%d _<CR>:pu a<CR>:0d _<CR>i:

" Map vim-go
nnoremap <Leader>fs :GoFillStruct<CR>


"Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Search inside the file
nmap <C-s>f :BLines<CR>
