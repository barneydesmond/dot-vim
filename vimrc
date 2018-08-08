" Yo! .vimrc is a symlink to .vim/vimrc, so it can be git-managed.

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Your bundles go here:
if v:version > 700 || (v:version == 700 && has('patch175'))
    Plugin 'scrooloose/syntastic'
endif
Plugin 'godlygeek/tabular.git'
"Plugin 'rodjek/vim-puppet'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'eagletmt/ghcmod-vim'
if v:version >= 702
    Plugin 'Shougo/vimproc'
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
filetype plugin on


" My turn now!
syntax on
set background=dark
set hlsearch
set modeline
set scrolloff=3
set linebreak

autocmd BufNewFile,BufRead *.py setlocal expandtab sts=4

au FileType mkd set tw=80

"set mouse=a

let g:syntastic_enable_signs=1

" If you don't have a nice font (like Pragmata Pro), then set this to 0 and
" Airline will fallback to less fancy symbols instead.
let g:airline_powerline_fonts = 1

" All Airline, All The Time - why wouldn't you want a status line?
set laststatus=2

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" http://lglinux.blogspot.com/2008/01/rewrapping-paragraphs-in-vim.html
map <F12> {gq}

map <F10> :set foldenable!<Return>
map <F5> :set spell! spelllang=en_au<CR>
map <F4> zg

map <F6> :make<Return><Return>

inoremap <F2> <Esc>:s/^\([ \t]*\)\([^ \t]\)/\1#\2/<Return>:noh<Return>
nnoremap <F2> :s/^\([ \t]*\)\([^ \t]\)/\1#\2/<Return>:noh<Return>
xnoremap <F2> :s/^\([ \t]*\)\([^ \t]\)/\1#\2/<Return>:noh<Return>
inoremap <F3> <Esc>:s/^\([ \t]*\)#\([^ \t]\)/\1\2/<Return>
nnoremap <F3> :s/^\([ \t]*\)#\([^ \t]\)/\1\2/<Return>
xnoremap <F3> :s/^\([ \t]*\)#\([^ \t]\)/\1\2/<Return>

" http://stevelosh.com/blog/2010/09/coming-home-to-vim/#using-the-leader
" fold an html tag
nnoremap <leader>ft Vatzf
