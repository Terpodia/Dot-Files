call plug#begin()

"Colorschemes
Plug 'morhetz/gruvbox'
Plug 'wojciechkepka/vim-github-dark'
Plug 'thedenisnikulin/vim-cyberpunk'

" enhanced highlight for cpp files
Plug 'octol/vim-cpp-enhanced-highlight'

" nerd tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" nerd commenter
Plug 'scrooloose/nerdcommenter'

" vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" lightline
Plug 'itchyny/lightline.vim'
call plug#end()

set nocompatible

syntax on

"Show line numbers.
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to
" go down.
set relativenumber

" Setup colorscheme
set termguicolors
colorscheme ghdark
"let g:airline_theme='cyberpunk'

" Set tab length
set tabstop=2
set shiftwidth=2
set expandtab

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We
" find hidden buffers helpful enough to disable this protection. 
" See `:help hidden` for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the
" string being searched are lowercase. However, the search becomes case-sensitive
" if it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" clipboard
set clipboard=unnamedplus

" copy
noremap <C-c> "+y
" paste
noremap <C-v> "+p
" cut
noremap <C-x> "+d
" paste in insert mode
inoremap <C-v> <Esc> "+pa  

"Mapping U to redo
noremap U <c-r>
noremap <c-r> <NOP>

" "Setting up C++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1

"Nerd Tree config

" shift+i (show hidden files)
 
" ctrl+n open/closes nerd tree
noremap <C-n> :NERDTreeToggle<CR>

" quit nerd tree on file open
let g:NERDTreeQuitOnOpen = 1

" show nerd tree always on the right instead on the left
let g:NERDTreeWinPos = "right"

