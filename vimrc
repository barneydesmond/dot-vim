" Yo! .vimrc is a symlink to .vim/vimrc, so it can be git-managed.

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" Your bundles go here:
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular.git'
"Bundle 'rodjek/vim-puppet'
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'

" filetype plugin indent on
filetype plugin on


" My turn now!
syntax on
set background=dark
set hlsearch
set modeline
set scrolloff=3
set linebreak

let g:syntastic_enable_signs=1

let g:airline_powerline_fonts = 1
" All Airline, All The Time
set laststatus=2

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = 'line'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" http://lglinux.blogspot.com/2008/01/rewrapping-paragraphs-in-vim.html
map <F12> {gq}

map <F10> :set foldenable!<Return>
map <F5> :set spell! spelllang=en_au<CR>
map <F4> zg

" http://stevelosh.com/blog/2010/09/coming-home-to-vim/#using-the-leader
" fold an html tag
nnoremap <leader>ft Vatzf
