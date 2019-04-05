call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-endwise'
Plug 'janko-m/vim-test'
Plug 'benmills/vimux'
Plug 'tpope/vim-rails'
Plug 'jgdavey/tslime.vim'
Plug 'slim-template/vim-slim'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'elixir-editors/vim-elixir'
Plug 'mattn/emmet-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'shougo/neocomplete.vim'
Plug 'majutsushi/tagbar'

call plug#end()

" Theme
set background=dark
" colorscheme Tomorrow-Night-Eighties
" colorscheme Benokai
colorscheme Hemisu
" test runner in tmux
let test#strategy = "vimux"

"ale
let g:ale_linters = {'ruby': ['rubocop'], 'elixir': ['credo'], 'javascript': ['eslint'] }
let g:ale_fixers = {'ruby': ['rubocop'], 'elixir': ['mix_format'], 'javascript': ['prettier', 'eslint']}

" Enable completion where available.
let g:ale_completion_enabled = 1

let g:ale_sign_column_always = 0
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Set error warning
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

let g:ale_open_list = 1
let g:ale_keep_list_window_open = 0

" Prettier from NPM
autocmd FileType javascript set formatprg=prettier\ --stdin

" Deoplete
let g:deoplete#enable_at_startup = 1

" NERDTree
let NERDTreeShowHidden=1
