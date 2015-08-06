"Set mapleader
let mapleader = ","
let g:mapleader = ","


" This means that you can have unwritten changes to a file and open a new file using :e,
" without being forced to write or undo your changes first.
" Also, undo buffers and marks are preserved while the buffer is open.
" This is an absolute must-have
set hidden
nnoremap gm m


" Also, I like Vim to have a large undo buffer, a large history of commands,
" ignore some file extensions when completing names by pressing Tab,
" and be silent about invalid cursor moves and other errors.
set history=1000 " remember more commands and search history
set wildignore=*.swp,*.bak,*.pyc,*.class
set title " change the terminal's title
set visualbell " don't beep
set noerrorbells " don't beep
set noswapfile "pas de fichier swap de sauvegarde des modifs

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" It clears the search buffer when you press ,/
" (Tired of clearing highlighted searches by searching for “ldsfhjkhgakjks")
nmap <silent> <leader>/ :nohlsearch<CR>
nmap <silent> <leader>> :%s#\s*\r\?$##<CR>:nohlsearch<CR>

" This lets you use w!! to do that after you opened the file that requires root privileges
cmap w!! w !sudo tee % >/dev/null

set whichwrap=b,s,<,>,[,]
syntax enable
set nu
set hls
filetype plugin on
set smartindent
set autoindent
set expandtab
set list
set cursorline
set hidden
set listchars=tab:>-,trail:.,nbsp:+
se et ts=8 sw=4 softtabstop=4 smarttab
au BufEnter *.py set sw=4 sts=4 ts=4 et sta ai

" to avoid doing ctrl+c or ESC to exit insert mode
inoremap jj <ESC>

set bs=2 "pour le backspace

"set clipboard=unnamed " pour copier/coller dans le clipboard général
