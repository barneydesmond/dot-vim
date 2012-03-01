set background=dark
set hlsearch
set modeline
syntax on
set scrolloff=2

let g:syntastic_enable_signs=1

" http://lglinux.blogspot.com/2008/01/rewrapping-paragraphs-in-vim.html
map <F12> {gq}

" http://stevelosh.com/blog/2010/09/coming-home-to-vim/#using-the-leader
" fold an html tag
nnoremap <leader>ft Vatzf
