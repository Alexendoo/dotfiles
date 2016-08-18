" syntax highlighting
syntax on

" insert spaces when tab is pressed
set expandtab

" ident number
set shiftwidth=4
set softtabstop=4

" copy indent of previous line
set autoindent

" automatic indentation
filetype plugin indent on

" show line numbers
set number

" enable mouse usage
set mouse=a

" show partial commands
set showcmd

" start searching whilst typing
set incsearch

" highlight all search results
set hlsearch

" alt + u to clear search
map <Esc>u :nohlsearch<Cr>

" show options available on tab
set wildmenu
set wildmode=longest:full:full

" enable modelines (config at the bottom of files)
set modeline
set modelines=5

" disable swap and backup files
set noswapfile
set nobackup

" bracketed paste support - http://stackoverflow.com/a/7053522
if &term =~ "xterm.*"
    let &t_ti = &t_ti . "\e[?2004h"
    let &t_te = "\e[?2004l" . &t_te
    function XTermPasteBegin(ret)
        set pastetoggle=<Esc>[201~
        set paste
        return a:ret
    endfunction
    map <expr> <Esc>[200~ XTermPasteBegin("i")
    imap <expr> <Esc>[200~ XTermPasteBegin("")
    vmap <expr> <Esc>[200~ XTermPasteBegin("c")
    cmap <Esc>[200~ <nop>
    cmap <Esc>[201~ <nop>
endif

