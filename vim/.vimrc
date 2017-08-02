"Plugins
call plug#begin('~/.vim/plugged')
Plug 'Geospace/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'raimondi/delimitmate'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-grepper'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf'
call plug#end()

"Bye Vi
set nocompatible
set backspace=2

"Splits
set splitright
set splitbelow

"Search
set incsearch
set hlsearch
set ignorecase
nnoremap qq :nohl<CR>

"Remap escape
:imap jj <Esc>

"Avoid useless redraw
set lazyredraw

"See all the autocompletion
set wildmenu

"Syntax processing
syntax on

"Invisibles
set listchars=tab:..,trail:~
set list

"Line numbers
set number
set relativenumber

"Buffers integration
:set hidden
nnoremap <C-H> :bprev<CR>
nnoremap <C-L> :bnext<CR>
nnoremap <C-J> :bdelete<CR>
nnoremap <C-K> :ls<CR>

"Cursorline
set cursorline

"Colorscheme
set t_Co=256
set background=dark
colo gruvbox

"Smooth scrolling
set scrolloff=2

"Identation
filetype plugin indent on
syntax enable
set nosmartindent
set cindent
set softtabstop=2
set shiftwidth=2
set expandtab

"But still insert tab
inoremap hh <C-V><Tab>

"Snippets
let g:UltiSnipsSnippetsDir = "~/.vim/my_snippets"
let g:UltiSnipsSnippetDirectories=["my_snippets", "UltiSnips"]
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-tab>"

"Show matching chars
set showmatch
hi MatchParen ctermfg=5 ctermbg=none

"More than 80 chars is bad
set colorcolumn=80
set tw=79

"FZF
map ff :FZF <CR>
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'down': '~30%' }

"Nerdtree
nnoremap rr :NERDTreeTabsToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore=['\.o$', '\~$']

"Splits
cabbrev s split
cabbrev v vsplit

"Ale signs
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '!'
let g:ale_c_gcc_options = '-Wall -Wextra -O -Iinclude -Iincludes -Iinc'
let g:ale_c_clang_options = '-Wall -Wextra -O -Iinclude -Iincludes -Iinc'
let g:ale_cpp_gcc_options =
      \'-Wall -Wextra -O -Iinclude -Iincludes -Iinc --std=c++14'
let g:ale_cpp_clang_options =
      \'-Wall -Wextra -O -Iinclude -Iincludes -Iinc --std=c++14'

"ALE colors
highlight clear SignColumn
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight ALEErrorSign ctermfg=red
highlight ALEWarningSign ctermfg=yellow

"Status line
set laststatus=2
set noshowmode
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#buffer_min_count = 3
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#default#layout = [
      \ [ 'a', 'error', 'warning', 'b', 'c' ],
      \ [ 'x', 'z' ]
      \ ]
let g:airline#extensions#hunks#enabled = 0
let g:airline_section_z = airline#section#create(['%3p%%'])
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#ale#error_symbol = '✘ '
let g:airline#extensions#ale#warning_symbol = '! '

"Grep
nnoremap <C-g> :Grepper<CR>

"Use terminal emulator background
hi Normal ctermbg=none
hi NonText ctermbg=none

"Quickfix colors
hi QuickFixLine cterm=None ctermbg=None ctermfg=None
hi Search cterm=none ctermbg=240 ctermfg=3

"Clear background buffer
"set t_ut=
