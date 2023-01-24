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
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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

" Jump to the last position when reopening a file
if has("autocmd")
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
endif

" Except when it's a git commit message, then we wanna start at the top
if has("autocmd") && expand("%:t") == "COMMIT_EDITMSG"
  autocmd BufReadPost * execute "normal! gg"
endif

autocmd BufNewFile,BufRead *.py setlocal expandtab sts=4

au FileType mkd set tw=80
autocmd FileType yaml setlocal ai ts=2 sw=2 et

"set mouse=a

let g:syntastic_enable_signs=1



" If you don't have a nice font (like Pragmata Pro), then set this to 0 and
" Airline will fallback to less fancy symbols instead.
let g:airline_powerline_fonts = 1

" Fixes for new workstation, distro defaults to Python3
" https://blog.victormendonca.com/2017/09/20/additional-status-for-vim-with-powerline/
let g:powerline_pycmd = 'py3'
let g:airline_pycmd = 'py3'

" All Airline, All The Time - why wouldn't you want a status line?
set laststatus=2

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Theme selection from https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='deus'
" Tweaks the appearance if you set your theme to solarized
"let g:airline_solarized_bg='dark'



" http://lglinux.blogspot.com/2008/01/rewrapping-paragraphs-in-vim.html
map <F11> {gq}
map <F12> Vgq

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
