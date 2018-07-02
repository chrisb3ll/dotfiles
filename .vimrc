set nocompatible			" break compatibility with vi - must be first
set backspace=indent,eol,start		" turn on backspace

" plug and plugins
source ~/.vim/plug.vim

" source vim files
for f in split(glob('~/.vim/plugin/settings/*.vim'), '\n')
	exe 'source' f
endfor

" config
filetype plugin indent on
syntax on

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
