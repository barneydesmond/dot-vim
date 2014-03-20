" Yo! .vimrc is a symlink to .vim/vimrc, so it can be git-managed.

syntax on
set background=dark
set hlsearch
set modeline
set scrolloff=3
set linebreak

let g:syntastic_enable_signs=1

" http://lglinux.blogspot.com/2008/01/rewrapping-paragraphs-in-vim.html
map <F12> {gq}

map <F10> :set nofoldenable<Return>

" http://stevelosh.com/blog/2010/09/coming-home-to-vim/#using-the-leader
" fold an html tag
nnoremap <leader>ft Vatzf
filetype plugin indent on
