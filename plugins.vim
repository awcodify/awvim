call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'flazz/vim-colorschemes'
Plug 'skreek/skeletor.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rails'
Plug 'jgdavey/tslime.vim'
Plug 'slim-template/vim-slim'
Plug 'mileszs/ack.vim'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe'
call plug#end()

" Theme
set background=dark
colorscheme Tomorrow-Night-Eighties

" rspec custom command
let g:rspec_command = "call Send_to_Tmux('bundle exec rspec -f d {spec}\n')"
let g:rspec_runner = "os_x_iterm2"
" ale linting
let b:ale_fixers = {'ruby': ['rubocop']}

" ctrl+p
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"ale
" let g:ale_linters = {'ruby': ['ruby', 'rubocop'] }
let g:ale_linters = {'ruby': ['rubocop'] }
let g:ale_fixers = {'ruby': ['rubocop'], 'javascript': ['prettier', 'eslint']}

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
