"""""""""
" Plugins
"""""""""

" Vundle

" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""""""""""""""""""""""
" Plugin specification
""""""""""""""""""""""

" General

" Asynchronous lint
Plugin 'w0rp/ale'
" File Browsing
Plugin 'scrooloose/nerdtree'
" Powerline status bar, and fonts
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Buffer navigation
Plugin 'ap/vim-buftabline'
" Color scheme
Plugin 'morhetz/gruvbox'
" Code commenting
Plugin 'scrooloose/nerdcommenter'
" Markdown syntax
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Rename files
Plugin 'danro/rename.vim'
" Surrouning
Plugin 'tpope/vim-surround'
" Autocomplete
Plugin 'Valloric/YouCompleteMe'


" Python

" Doctring generator
Plugin 'heavenshell/vim-pydocstring'
" PEP8 indentation
Plugin 'vim-scripts/indentpython.vim'


" HTML, CSS, JavaScript

" Autoclosing tags
Plugin 'alvan/vim-closetag'
" Highlight enclosing tags
Plugin 'Valloric/MatchTagAlways'
" JavaScript highlight (works for inline js!)
Plugin 'pangloss/vim-javascript'
" Vue highlighting
Plugin 'posva/vim-vue'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""
" Plugins configuration
"""""""""""""""""""""""

" ALE
let g:ale_linters = {
\    'python': ['pylint', 'flake8'],
\    'javascript': ['eslint', 'jshint'],
\    'php': ['phpcs'],
\    'html': ['eslint', 'htmlhint'],
\    'json': ['jsonlint'],
\    'vue': ['eslint'],
\    'css': ['csslint'],
\    'markdown': ['mdl'],
\}

let g:ale_php_phpcs_standard = 'psr2'

let g:ale_fixers = {
\    'python': ['autopep8', 'remove_trailing_lines', 'trim_whitespace'],
\    'javascript': ['eslint', 'prettier', 'remove_trailing_lines', 'trim_whitespace'],
\    'php': ['phpcbf', 'php_cs_fixer', 'remove_trailing_lines', 'trim_whitespace'],
\    'html': ['remove_trailing_lines', 'trim_whitespace'],
\    'json': ['fixjson', 'prettier', 'remove_trailing_lines', 'trim_whitespace'],
\    'vue': ['eslint', 'remove_trailing_lines', 'trim_whitespace'],
\    'vim': ['remove_trailing_lines', 'trim_whitespace'],
\    'css': ['prettier', 'remove_trailing_lines', 'trim_whitespace'],
\    'markdown': ['prettier', 'remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

" scrooloose/nerdtree
augroup nerdtree
    autocmd!
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
    autocmd BufEnter * if (winnr("$") == 1 && bufname(0) == 'NERD_tree_1') | q | endif
augroup END

let g:NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Lokaltog/powerline
let g:Powerline_symbols = 'fancy'

" alvan/vim-closetag
let g:closetag_filenames = '*.html, *.twig, *.vue, *.xml'

" morhetz/gruvbox
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox

set encoding=utf-8
filetype off

"""""""""
" Spacing
"""""""""

set tabstop=4     " visual spaces for TAB character
set softtabstop=4 " number of spaces in tab for editing
set expandtab     " insert spaces instead of TAB character
set shiftwidth=4  " number of spaces to introduce on return for control structures, functions, etc

"""""""""""""""""
" Language syntax
"""""""""""""""""

syntax enable

""""
" UI
""""

highlight ExtraWhitespace ctermbg=red
set number
set cursorline
set showcmd
set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&encoding},                " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=0x%-8B\                      " current char
set statusline+=%-10.(%l,%c%V%)\ %<%P        " offset
hi StatusLine ctermbg=3 ctermfg=10
highlight CursorLine ctermbg=darkgrey
highlight LineNr ctermbg=darkgrey ctermfg=white


set splitbelow
set splitright

set guifont=Neep\ 18


syntax on

""""""""
" Python
""""""""

""""""""""""""""""
" PEP8 indentation
""""""""""""""""""
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

let g:python_highlight_all=1


""""""""""
" HTML, JS
""""""""""
au BufNewFile,BufRead *.html,*.twig,*.vue,*.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set autoindent |
    \ set fileformat=unix


"""""""""""""""""
" Functionalities
"""""""""""""""""
set foldmethod=indent
set foldlevel=99

"""""""""""""""""
" Mappings
"""""""""""""""""

let g:mapleader = "\<Space>"

" Return from insert mode to normal mode
inoremap jk <Esc>

" Buffer navigation
set hidden
nnoremap <C-N> :bnext<cr>
nnoremap <C-P> :bprev<cr>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Up> :resize +2<cr>
nnoremap <Down> :resize -2<cr>
nnoremap <Left> :vertical resize +2<cr>
nnoremap <Right> :vertical resize -2<cr>

" Fast save and exit
nnoremap <Leader>w :w<cr>
nnoremap <Leader>W :wa<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>Q :qa<cr>
nnoremap <Leader>! :qa!<cr>
nnoremap <Leader>r :e!kcr>
nnoremap <Leader>d :bprev\|bd #<cr>

" Copy-pasting
inoremap <C-D> <Esc>ddi
inoremap <C-V> <Esc>pA
inoremap <C-X> <Esc>yyli

" Insert new line below, usefull for if, for, etc. statements
inoremap <C-Space> <Esc>o

" Source vimrc
nnoremap <Leader>sv :source $MYVIMRC<cr>

" Disable old keys to force myself to use mappings
"nnoremap :w <Nop>
"nnoremap :wa <Nop>
"nnoremap :q <Nop>
"nnoremap :qa <Nop>
"nnoremap :bd <Nop>
"inoremap <Esc> <Nop>
"inoremap <Up> <Nop>
"inoremap <Down> <Nop>
"inoremap <Left> <Nop>
"inoremap <Right> <Nop>


""""""""""""""
" Autocommands
""""""""""""""
augroup set_filetypes
    autocmd!
    autocmd BufRead *.wsgi set syntax=python filetype=python
    autocmd BufRead *.twig set syntax=html filetype=html
augroup END

augroup python_abbreviations
    autocmd!
    autocmd FileType python :inoreabbrev <buffer> i if:<Left>
    autocmd FileType python :inoreabbrev <buffer> f for:<Left>
    autocmd FileType python :inoreabbrev <buffer> w while:<Left>
    autocmd FileType python :inoreabbrev <buffer> d def():<Esc>bi
augroup END

augroup php_abbreviations
    autocmd!
    autocmd FileType php :inoreabbrev <buffer> i if () {<cr>}<Esc>k2ei
    autocmd FileType php :inoreabbrev <buffer> f for () {<cr>}<Esc>k2ei
    autocmd FileType php :inoreabbrev <buffer> w while () {<cr>}<Esc>k2ei
    autocmd FileType php :inoreabbrev <buffer> fu function()<cr>{<cr>}<Esc>2kwi
augroup END

augroup javascript_abbreviations
    autocmd!
    autocmd FileType javascript :inoreabbrev <buffer> i if () {<cr>}<Esc>k2ei
    autocmd FileType javascript :inoreabbrev <buffer> f for () {<cr>}<Esc>k2ei
    autocmd FileType javascript :inoreabbrev <buffer> w while () {<cr>}<Esc>k2ei
    autocmd FileType javascript :inoreabbrev <buffer> fu function() {<cr>}<Esc>kwi
augroup END


"""""""""""
" Searching
"""""""""""

set incsearch " search as characters are entered.
set hlsearch  " highlight matches
set ignorecase

""""""""
" Styles
""""""""

" Show trailing whitespaces.
highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/
