set nocompatible " Use Vim settings, rather then Vi settings


" Vundle

filetype off                       " Required by Vundle
set rtp+=~/.vim/bundle/Vundle.vim  " Required by Vundle
call vundle#begin()                " Required by Vundle

" Required by Vundle
Plugin 'gmarik/Vundle.vim'

" Vundle Plugins
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'powerline/powerline'
Plugin 'ashisha/image.vim'

call vundle#end()            " required by Vundle
filetype plugin indent on    " required by Vundle


" General
set history=1000  " Size of command/search history
set hidden        " Allow changing buffers without saving
set spell         " Enables spell check


" Backup
set nobackup " Get rid of filename.txt~
set directory=~/.vim_backup " Where to store swap files


" Text Formatting
set encoding=utf-8 " UTF8 encoding by default
set smarttab       " Smart handling of the tab key
set expandtab      " Use spaces for tabs
set shiftround     " Round indent to multiple of shiftwidth
set shiftwidth=2   " Number of spaces for each indent
set softtabstop=2  " Number of spaces for tab key
set tabstop=2      " Indention size of tabs
set number         " Line numbers on
set colorcolumn=+1 " Shows vertical line at textwidth + 1
set nowrap         " Do not wrap lines
set ruler          " Show column
set iskeyword-=_   " Treat underscores as word boundaries


" Uncomment to use autoformatting
" set autoindent    " Use indent from previous line
set textwidth=100   " Column width

" Uncomment to not use autoformatting
set noautoindent
" set textwidth=0   " Column width
set wrapmargin=0    " Column width


set formatoptions-=t  " Don't auto-wrap text
set formatoptions+=corqn
"                  |||||
"                  ||||+-- Recognize numbered lists
"                  |||+--- Allow formatting of comments with 'gq'
"                  ||+---- Insert comment leader after <Enter>
"                  |+----- Insert comment leader after o/O
"                  +------ Auto-wrap comments

set listchars=tab:▸\ ,eol:¬,trail:·,extends:›,precedes:‹ " Display whitespace
let &sbr = nr2char(8618).' '  " Show ↪ at the beginning of wrapped lines
set list

let timestamp_format = '%a %Y-%m-%d %H:%M:%S (%z)' " Date formatting

" Force 256 colors
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif


" File type specific formatting

" Arduino
au BufNewFile,BufRead *.pde setf arduino

" Python
let python_highlight_all=1
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" JavaScript
au BufNewFile,BufRead *.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" HTML
au BufNewFile,BufRead *.html
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Searching
set incsearch    " Show search matches as you type
set ignorecase   " Ignore case when searching
set smartcase    " Override 'ignorecase' when needed
set hlsearch     " Highlight search results
set showmatch    " Show matching bracket
set matchtime=2  " (for only .2 seconds)


" Windows
set mouse=a           " Enable the mouse for all modes
set mousehide         " Hide mouse while typing
set mousemodel=popup  " Use popup menu for right mouse button

set splitright  " When splitting vertically, split to the right
set splitbelow  " When splitting horizontally, split below


" Display
set numberwidth=1     " Make line number column as narrow as possible
set lazyredraw        " Don't redraw while executing macros
set ttyfast           " Indicates a fast terminal connection
set noerrorbells      " Error bells are annoying
set visualbell        " Error bells are annoying in IdeaVIM
set title             " Set descriptive window/terminal title
set report=0          " Always report the number of lines changed
set display=lastline  " Show as much of the last line as possible


" Plugin Settings

" NERD Tree
let NERDSpaceDelims = 1
let NERDShutUp = 1
let NERDTreeShowHidden=1 "Show hidden files

" NERDTreeTabs
let nerdtree_tabs_open_on_gui_startup = 1     " Open up NERDTree in GUI mode
let nerdtree_tabs_open_on_console_startup = 1 " Open up NERDTree in CLI
let NERDTreeIgnore = ['__pycache__']

" Syntastic
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--max-line-length=100 --ignore=E128,E302'
" Allow :lnext and :lprev for navigating between Syntastic errors
let g:syntastic_always_populate_loc_list=1

" Colors
syntax on           " Enable syntax highlighting
colorscheme zenburn " The one true color scheme

" tmux coloring
set term=screen-256color

