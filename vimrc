set nocompatible
set encoding=utf-8
set term=xterm-256color
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
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.wsgi set syntax=python filetype=python
autocmd BufRead *.twig set syntax=html filetype=html

""""
" UI
""""

set number
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


set splitbelow
set splitright

set guifont=Neep\ 18


" buffer navigation
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>


" split navigations

" Ctrl-j: move to the split below
nnoremap <C-J> <C-W><C-J>
" Ctrl-k: move to the split above
nnoremap <C-K> <C-W><C-K>
" Ctrl-l: move to the split to the right
nnoremap <C-L> <C-W><C-L>
" Ctrl-h: move to the split to the left
nnoremap <C-H> <C-W><C-H>

"""""""""""""""""
" Functionalities
"""""""""""""""""
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

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

" Mark excesively long lines.
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%101v', 100)

"""""""""
" Plugins
"""""""""

" Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""""""""""""""""""""""
" Plugin specification
""""""""""""""""""""""

" General

" (amazing) autocompletion
Bundle 'Valloric/YouCompleteMe'
" syntax checking
Plugin 'scrooloose/syntastic'
" File Browsing
Plugin 'scrooloose/nerdtree'
" Powerline status bar, and fonts
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Buffer navigation
Plugin 'ap/vim-buftabline'
" Color scheme
Plugin 'reedes/Vim-colors-pencil'
" Code commenting
Plugin 'scrooloose/nerdcommenter'


" Python

" Python in Vim
Plugin 'python-mode/python-mode'


" HTML, CSS, JavaScript

" autoclosing tags
Plugin 'alvan/vim-closetag'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""
" Plugins configuration
"""""""""""""""""""""""

" Valloric/YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1 " close autocompletion window after completion
" goto definition: backslash + g
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" scrooloose/nerdtree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Lokaltog/powerline
let g:Powerline_symbols = 'fancy'

" alvan/vim-closetag
let g:closetag_filenames = "*.html, *.html, *.twig"

" redees/vim-colors-pencil
let colors_name = "pencil"
:set background=light

