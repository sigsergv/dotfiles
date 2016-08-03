" vimrc file
"
" Maintainer: Sergei Stolyarov <sergei@regolit.com>
" Last change: Tue, 04 Mar 2009 11:52:56 +0600

" This configuration file is intended for using for UNIX console VIm version,
" windows is not supported by design.

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set linebreak
set nolist  " list disables linebreak
set formatoptions+=l
set textwidth=0
set wrapmargin=0

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" keep 300 lines of command line history
set history=300

" always show cursor position
set ruler

" always display incomplete commands
set showcmd

" perform incremental search
set incsearch

" turn on syntax highlighting
syntax on

" turn on highlighting of all matches
set hlsearch

" turn on autoindent
set autoindent

" set some useful shortcuts

" disable F1 as 'help' shortcut
imap <F1> <C-o>:echo<CR>
nmap <F1> :echo<CR>

" use F2 to save files
imap <F2> <C-o>:w<CR>
nmap <F2> :w<CR>

" use F4 for turning off search results highlighting
imap <F4> <C-o>:noh<CR>
nmap <F4> :noh<CR>

" use F7 to toggle paste mode
set pastetoggle=<F7>
"nmap <F7> <nop>

" use F10 to toggle line numbers
imap <F10> <C-o>:set number!<CR>
nmap <F10> :set number!<CR>

" use F8 to run make
imap <F8> <C-o>:make!<CR>
nmap <F8> :make!<CR>

" add encodings menu
set wildmenu
set wcm=<Tab>
menu Encoding.windows-1251 :e ++enc=cp1251 ++ff=dos<CR>
menu Encoding.koi8-r :e ++enc=koi8-r ++ff=unix<CR>
map <F9> :emenu Encoding.<TAB>

menu Indentation.tabs :set noexpandtab<CR>
menu Indentation.spaces :set expandtab<CR>
map <F5> :emenu Indentation.<TAB>

" always show status line
set laststatus=2

" status line formatting options
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" turn on 'visualbell'
set visualbell

" enable mouse support
"set mouse=vnc
set mouse=a
set timeoutlen=10

" ignore case in search patterns
set ignorecase

" tabulation and indenting options
set tabstop=4       " tabstop value
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent
set expandtab       " use spaces instead of tab, use <C-v><Tab> to insert a tabulation symbol
set smarttab        " smart Backspace behaviour

" don't display VIm greating message
set shm+=I

" turn off brackets matching vimscript (for VIm > 7)
let loaded_matchparen = 0

" set bash-like file names completion
set wildmode=longest,list

" Automatically save before commands like :next and :make
set autowrite


" vim tip #38 Cursor one line at a time when :set wrap
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <expr> <Down> pumvisible() ? "\<Down>" : "\<C-o>gj"
inoremap <expr> <Up> pumvisible() ? "\<Up>" : "\<C-o>gk"

nmap <T-F5> :q<cr> 

" do not copy text deleted by <Del> into default register
nnoremap <Del> "_x
vnoremap <Del> "_d
nnoremap dd "_dd
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>


" make CTRL-W to delete word correctly
imap <C-w> <C-o>db

" some options that depends on 'autocmd' feature
if has("autocmd")
    " Restore cursor to file position in previous editing session
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

    " set 'textwidth' to 78 characters for all text files
    "autocmd FileType text setlocal textwidth=100

    " for 'php' files do not use 'expandtab' and 'smarttab' options
    autocmd FileType php set noexpandtab
    "autocmd FileType php set nosmarttab
    autocmd FileType make setlocal noexpandtab
endif " if has("autocmd")

" load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  "filetype plugin indent on
  autocmd FileType php setlocal comments-=:// comments+=f://
  autocmd FileType cpp setlocal comments-=:// comments+=f://
  autocmd FileType ruby setlocal comments-=:# comments+=f:#
endif

set noswapfile

filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP

nmap Ж :
" yank
nmap Н Y
nmap з p
nmap ф a
nmap щ o
nmap г u
nmap З P

"noremap  y "5y
"noremap  Y "5Y
"noremap  p "5p
"noremap  P "5P
"vnoremap y "5y
"vnoremap Y "5Y
"vnoremap p "5p
"vnoremap P "5P

"These are to cancel the default behavior of d, D, c, C
"  to put the text they delete in the default register.
"  Note that this means e.g. "ad won't copy the text into
"  register a anymore.  You have to explicitly yank it.
nnoremap в "_d
vnoremap в "_d
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C
