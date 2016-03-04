"---------------------------------------------------------------------------------------------------
"File: $HOME/.vimrc
"Author: Alistair Johnson

"---------------------------------------------------------------------------------------------------
" Standard Stuff
"---------------------------------------------------------------------------------------------------

execute pathogen#infect()
syntax on
"filetype plugin indent on
set background=dark
colorscheme solarized 

set nocompatible " Disable vi compatibility.
filetype off "required for vundle
set ruler 	 " Show the line and column numbers of the cursor. 
set ignorecase   " Case insensitive matching.
set tabstop=4 	 " set tabs to four spaces
"syntax on 	 " turn syntax highlighting on by default
set cindent      " c-style indenting (many other options available)      
set nu 		 " show line numbers 
set incsearch
set smartindent
set showmatch
set shiftwidth=4
"filetype on "try to detect filetypes
filetype plugin indent on " enable loading indent file for filetype
" set the runtime path to include Vundle and initialise
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'

" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required

"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

set dictionary+=/usr/share/dict/words " enable the dictionar in vim (Ctrl-x Ctrl-K to display matching dictionary words)

"set background=dark
"colorscheme desert 

let &t_Co=256 " sets iterm to 256 colors

" Map jj to <ESC> as an alternative to exit insert mode

inoremap jj <Esc> 

" Make vim more browser-like
:map <Space> <PageDown>

" start scrolling when cursor is 10 lines from the top/bottom edge
set scrolloff=10

"Underline the current line with dashes in normal mode
nnoremap <F6> yyp<c-v>$r-
" Underline the current line with dashes in insert mode
inoremap <F6> <Esc>yyp<c-v>$r-A

"case insensitive search
set ignorecase

"Alternative tab navigation to mimic browser keyboard shorcuts
:map <C-p> :tabprevious<CR>
:map <C-n> :tabnext<CR>
:map <C-t> :tabnew<CR>

" Automatic text wrapping
set wrapmargin=10 "10 characters from the right margin?

" Place vim in/out of paste mode with a single key press
set pastetoggle=<F8>

" Fix clipboard support
set clipboard=unnamed

" Added from sontek.net/blog/detail/turning-vim-into-a-modern-python-ide

" Added so that pathogen will be loaded properly. Filetype detection must be off when you run the commands so its best to execute them first:
"filetype off
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

" Enable code-folding. type 'za' inside a method to open and close a fold
set foldmethod=indent
set foldlevel=99

"Bind Shift+<movement> keys to move around windows
map <S-j> <c-w>j
map <S-k> <c-w>k
map <S-l> <c-w>l
map <S-h> <c-w>h

"Task Lists plugin - this may not work because the key mapping was commented out
map <leader>td <Plug>TaskList

" Gundo - revision history - allow you to view diff's of every save on a file you've made and allow you to quickly revert back and forth
map <leader>g :GundoToggle<CR>

" Telling pyflakes to not use the quickfix window
let g:pyflakes_use_quickfix = 0

"Key mapping for Pep8
let g:pep8_map='<leader>8'

"key mapping for Ack
nmap <leader>a <Esc>:Ack!

" Tab Completion and Documentation
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" Enable the menu and pydoc preview to get the most useful information out of
" the code completion
"set completeopt=menuone,longest,preview

" Set NERDTree to show hidden files
"let NERDTreeShowHidden=1

" Set keyboard shortcut for NERDTree
let mapleader = ","
nmap <leader>ne :NERDTree<cr>

"Set default window height
"set winheight=30

