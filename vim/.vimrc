" .vimrc

" this is probably redundant because it will be set as soon as the user .vimrc
" is found
" see this link:
" http://vimdoc.sourceforge.net/htmldoc/starting.html#compatible-default
set nocompatible

" pathogen package manager for vim plugins, see https://github.com/tpope/vim-pathogen/
" Any plugins will be extracted to a subdirectory under ~/.vim/bundle and they will be added to 'runtimepath'
call pathogen#infect()

" enable syntax highlighting
syntax on

" intelligent auto-indenting for each filetype and for plugins that are filetype specific
filetype plugin indent on

" prevent security exploits
set modelines=0

" default tabstop value of 8
set tabstop=8

" indentation settings for using 4 spaces instead of tabs
set softtabstop=4
set shiftwidth=4
set expandtab

" UTF-8 encoding
set encoding=utf-8

" start scrolling three lines before the border, keeping more context
set scrolloff=3

" when opening a new line and no filetype-specific indenting is enabled, keep the same indent as the
" line you're currently on
set autoindent

" indicates input or replace mode on the last line
set showmode

" show partial commands on the last line
set showcmd

" allows a switch you to switch from an unsaved buffer without saving it first. Also allows you to keep and
" undo history for multiple files. Vim will complain if you try to quit without saving and swap files will 
" keep you safe if the event of a crash
set hidden

" better than just first possible completion from <TAB>
set wildmenu

" complete only up to point of ambiguity
set wildmode=list:longest

" use visual bell instead of beeping when doing something wrong
set visualbell

" highlight the current line and update the highlight as the curser moves
set cursorline

" fast scolling
set ttyfast

" display the cursor position on the last line of the screen or in the status line of a window
set ruler

" allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" always display the status line, even if only one window is displayed
set laststatus=2

" set the terminal title
set title 

" command line history
set history=50

" change the default leader \
let mapleader=","

" fix vim's default regex by automatically inserting a \v before any string you
" search for. This turns off vim's default regex chanaracters and makes
" searches use normal regexes
nnoremap / /\v
vnoremap / /\v

" make /-style searches case sensitive only if there is a capital letter in the search expression
" *-style searches continue to be consistently case sensitive
set ignorecase
set smartcase

" apply substitutions globally on lines
set gdefault

" next 3 work together to highlight search results as you type
set incsearch
set showmatch
set hlsearch

" next 3 manage the line wrapping settings
set wrap
set textwidth=79
set formatoptions=qrn1

" make ; do the same thing as : as it's one less key to hit
nnoremap ; :

" press jj to exit from insert mode (needs to typed quite quickly) 
inoremap jj <ESC>

" shortcut for a vertical window split 
nnoremap <leader>w <c-w>v<c-w>l

" split screen navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

" colour
highlight Normal ctermbg=black
set background=dark
colorscheme vibrantink

" code folding
set foldmethod=indent
set foldlevel=2
set foldnestmax=4

" Gundo plugin to visualize udo tree
nnoremap <leader>g :GundoToggle<CR>

" PEP8 plugin to check code against this style convention
let g:pep8_map='<leader>8'

" Supertab plugin which allows you to use <Tab> for insert completion 
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" Tasklist plugin to search for a list of tokens and display a window with
" matches, default tokesn are FIXME TODO XXX
map <leader>td <Plug>TaskList

" pyflakes disable quickfix support
let g:pyflakes_use_quickfix = 0

" NERDtree plugin for browsing files in your project
nnoremap <leader>n :NERDTreeToggle<CR>

" Rope plugin is for refactoring library for Python
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

" Ack! plugin is a grep alternative
nnoremap <leader>a <Esc>:Ack!
