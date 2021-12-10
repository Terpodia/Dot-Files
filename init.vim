
" (_)_ __ (_) |___   _(_)_ __ ___  
" | | '_ \| | __\ \ / / | '_ ` _ \ 
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
 
" ==================== VIM PLUG ==================

call plug#begin('~/.vim/plugged')

" fugitive - git support
Plug 'tpope/vim-fugitive'

Plug 'dense-analysis/ale'

" nerd tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" nerd commenter
Plug 'scrooloose/nerdcommenter'

Plug 'itchyny/lightline.vim'

" enhanced highlight
Plug 'octol/vim-cpp-enhanced-highlight'

" glsl color
Plug 'tikhomirov/vim-glsl'
Plug 'drewtempelmeyer/palenight.vim'

"Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'OmniSharp/omnisharp-vim'

call plug#end()			

" ================ Suggestions ======================
 
" show wild menu (menu of suggestions) when typing commands in command mode
set path+=**
set wildmenu
set showcmd

" ================ File management ==================
 
" Turn off swap files
set noswapfile
set nobackup
set nowb
 
" reload files changed outside vim
set autoread
"filetype on
" ================ Srolling =========================

" Start scrolling when we're 8 lines away from margins
set scrolloff=8

" ================ Keyboard bindings ================
 
" noremap - no recursive mapping

" set the leader key to comma
let mapleader = ','

" clipboard
set clipboard=unnamedplus

" copy
noremap <C-c> "+y
" paste
noremap <C-v> "+p
" cut
noremap <C-x> "+d
" paste in insert mode
inoremap <C-v> <Esc>"+pa

" fast scrolling
nnoremap K 10j
nnoremap L 10k
vnoremap K 10j
vnoremap L 10k

" Mapping U to Redo.
noremap U <c-r>
noremap <c-r> <NOP>

" ================ Visualization ====================
 
if has('termguicolors')
    set termguicolors
    endif

" enable true colors
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

syntax on
set background=dark

colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }
let g:airline_theme = "palenight"
 
" turn on italics
let g:palenight_terminal_italics=1

" ================ Indentation ======================

set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab

" ================ Number column ====================
 
set number " see the line number column
set relativenumber

" ================ Searching ========================

" Ignorecase when searching
set ignorecase

" incremental search - Vim starts searching when we start typing
set incsearch

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" toggle search highlighting
nnoremap <F3> :set hlsearch!<CR>

" ================ Performance ======================

" fix slow scrolling that occurs when using mouse and relative numbers
set lazyredraw

" ================ Misc =============================

" highlight matching braces
set showmatch

" disable wrapping of long lines into multiple lines
set nowrap

" history
set history=1000

" on some systems the backspace does not work as expected.
" this fixes the problem
set backspace=indent,eol,start

" ================ Plugins ==========================
 
" ################ Lightline ########################
 
 let g:lightline = {
  \   'colorscheme': 'palenight',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
	\   'component': {
	\     'lineinfo': '%3l:%-2v',
	\   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }

" ################ NERDTree #########################
 
" shift+i (show hidden files)
 
" ctrl+n open/closes nerd tree
noremap <C-n> :NERDTreeToggle<CR>

" quit nerd tree on file open
let g:NERDTreeQuitOnOpen = 1

" show nerd tree always on the right instead on the left
let g:NERDTreeWinPos = "right"

" ################ Ale ##############################
 
let g:ale_linters = {
    \ 'cs': ['OmniSharp'],
    \ 'javascript': ['flow-language-server'],
    \ 'cpp': ['clang']
\}

" autocompletion
let g:ale_completion_enabled = 1

"###################### Octol ######################

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1

