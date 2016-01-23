"Created by Jenny Lian"
"Turn off old vim"
"These are the standard ones"

set nocompatible
set number
set showcmd
set showmatch
set hlsearch
set incsearch

"From nate"
set esckeys
set showmatch
set hlsearch
set noignorecase
set showmode
set mouse=a
set ttyscroll=999
"The following is for syntastic"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set ic



syntax enable
colorscheme badwolf 
"colorscheme molokai 

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Trying out pathogen finally"
execute pathogen#infect()

"Nerd Tree Related"
"How can I open a NERDTree automatically when vim starts up?"
autocmd vimenter * NERDTree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

"How can I open a NERDTree automatically when vim starts up if no files were
"specified?"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"The following is for ctrl+P I cloned it wrong btw, use kien/ctrp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"I hope this actually ignores some useless files for ctrl P"
"

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"USAGE"
"Switching btw windows is ctrl-ww"
"the leader is \ which I am fine with, to comment, just \cs"

"For indent"
set expandtab
set shiftwidth=2
