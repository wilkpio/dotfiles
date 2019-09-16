
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on    " required


" remove unnecessary whitespaces:
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"*****************************************************************************"
"   CMake Stuff
"*****************************************************************************"
autocmd FileType cmake set omnifunc=cmakecomplete#Complete
"*****************************************************************************"
"   Python Stuff
"*****************************************************************************"
autocmd FileType cmake set omnifunc=cmakecomplete#Complete
"*****************************************************************************"
"   Backup - nice to have it
"*****************************************************************************"
set backup
set backupdir=~/.vim_backups
fun! NewInitBex()
    let &bex = '-' . strftime("%Y%m%d-%H%M")
endfun
autocmd BufWritePre * call NewInitBex()



set softtabstop=4
set shiftwidth=4
set tabstop=4
"set autoindent

" Use spaces instead of tabs
set expandtab
colorscheme delek
"colorscheme blue
"colorscheme native
"colorscheme evening
"set number

" Turns off visual bell
set vb t_vb=


" Enable automatic indentation as you type.
filetype plugin indent on

set ofu=syntaxcomplete#Complete

set wmh=0

autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
"nmap <buffer> <F5> :w<Esc>mwG:r!python %<CR>`.

"disable autoformating for text files
setlocal textwidth=99999999999
set tw=99999

set incsearch
set paste
set ruler
colorscheme desert
"colorscheme delek
" Source ~/.vimdiffrc.vim config file while running in diff mode
if &diff
    so ~/.vimdiffrc.vim
endif

"make sure that crt-arrow works from screen:
map [D <Left>
map [C <Right>
map OD <C-Left>
map OC <C-Right>

syntax enable
set background=dark
"colorscheme solarized


"groovy syntax highligting
if did_filetype()
    finish
endif
if getline(1) =~ '^#!.*[/\\]groovy\>'
    setf groovy
endif

autocmd BufNewFile,BufRead *.jenkinsfile,*.Jenkinsfile,Jenkinsfile set syntax=groovy


" Pathogen load
filetype off

"disable folding
set nofoldenable

filetype plugin indent on
syntax on
" ignore E501 - line too long
let g:pymode_lint_ignore = "E501"
