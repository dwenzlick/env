" This should be first.
set nocompatible                " choose no compatibility with legacy vi

" For plugins - since vim 8.0 there is native plugin management. See the article below for instructions on how to use
" submodules for managing plugins.
" https://shapeshed.com/vim-packages/

syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
set number                      " always show line numbers

" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (ruby pattern)
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode
set autoindent                  " auto-indenting is on
set copyindent                  " copy previous line's indentation

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" ,/ clears searcv (Does this work)
nmap <silent> ,/ :nohlsearch<CR>

colorscheme desert

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
" set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" Don't let vim write backup files
set nobackup
set noswapfile

" Quickly edit/reload the vimrc file (leader is '\')
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

filetype off " <<< this line
filetype plugin indent on       " load file type plugins + indentation
syntax on
autocmd filetype python set expandtab

"autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
"autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

"This line will make Vim set out tab characters, trailing whitespace and invisible spaces visually, 
"     and additionally use the # sign at the end of lines to mark lines that extend off-screen. 
"     For more info, see :h listchars.
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Disable all sorts of features (such as indenting) when pating large amonts
set pastetoggle=<F2>
" vim-togglemouse. It maps <F12> to toggle your mouse “focus” between Vim and the terminal.

" enable mouse for all modes (makes selection easier)
" set mouse+=a

set laststatus=2
set statusline=
set statusline+=\ %{fugitive#statusline()}
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]

" References
" * http://nvie.com/posts/how-i-boosted-my-vim/


