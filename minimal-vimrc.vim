"
" Un no tan minimo vimrc
"

" Tu quieres Vim no Vi
" ¡Tenemos que decirselo!
set nocompatible

filetype plugin indent on  " Carga los plugins segun el tipo de archivo
syntax on                  " Activa el higlight para la syntaxis

set autoindent             " Identa segun la linea anterior
set expandtab              " Usa espaceos en vez de tabs
set softtabstop =4         " Tab key identa 4 espacios
set shiftwidth  =4         " >> Indeta 4 espacios
set shiftround             " >> Identa al siguiente multiple de 'shiftwidth'.

set backspace   =indent,eol,start  " Has tu backspace work como tu esperas
set hidden                 " Cambia entre buffs sin tener que guardar
set laststatus  =2         " Siempre muestra la statusbar
set display     =lastline  " Muestra lo mas posible de la ultima linea

set showmode               " Muestra el estado actual
set showcmd                " Muestra los comandos anteriores cuando son mas esperados

set incsearch              " Highlight mientra buscas con / o ?.
set hlsearch               " Mantiene los pares highlighted.

set ttyfast                " Mas rapido redrawing
set lazyredraw             " Solo recarga cuando es necesario

set splitbelow             " Abre las nuevas ventanas en la parte inferior de tu ventana actual
set splitright             " Abre las nuevas ventanas a la derecha de tu ventana actual

set cursorline             " Encuentra tu linea actual rapido
set wrapscan               " Busca wrap cerca del final del archivo.
set report      =0         " Siempre reporta las lineas cambiadas
set synmaxcol   =200       " Solo usa highligth para las 200 primeras columnas

set list                   " Muestra no-imprimibles caracteres

if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" El fish shell no es muy compatible y rompe cosas que usen 'shell'
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" Pon todos los archivos temporales en un mismo directorio
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo
