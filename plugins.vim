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
Plug 'sebdah/vim-delve'
Plug 'rizzatti/dash.vim'
Plug 'yggdroot/indentline'
Plug 'tomtom/tcomment_vim'
Plug 'posva/vim-vue'
Plug 'rakr/vim-one'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()

" Theme
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set background=dark
" colorscheme Tomorrow-Night-Eighties
" colorscheme Benokai
" colorscheme Hemisu
let g:one_allow_italics = 1 " I love italic for comments
colorscheme one
" test runner in tmux
let test#strategy = "vimux"

"ale
let g:ale_linters = {'ruby': ['rubocop'], 'elixir': ['credo'], 'javascript': ['prettier', 'eslint'] }
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

let g:airline_theme='one'

set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum


let g:loaded_clipboard_provider=1
