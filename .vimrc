call plug#begin('~/vimfiles/plugged')
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'vimwiki/vimwiki'
Plug 'jiangmiao/auto-pairs'
Plug 'sdothum/vim-colors-duochrome'
Plug 'preservim/nerdtree'
call plug#end()

set hid bs=2 ar
set nobk nowb noswf
set wmnu wim=longest:full,full vb ru ls=2 spr sb
set ai si is  ic scs
set cb+=unnamed,unnamedplus
set enc=utf-8
set sw=4 ts=4 noet sta sts=4
set nowrap nu nohls tw=80 so=5
set spelllang=en_us
let &showbreak = '+++ '
"trail:•,
set list listchars=tab:»\ ,extends:→,precedes:←

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guifont=Consolas:h12
au GUIEnter * sim ~x
set bg=light
colo duochrome
highlight LineNr guifg=lightgrey

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
"let g:vimtex_indent_enabled=0
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : 'latexbuild',
    \}

ino jf <esc>
nmap <space><space> gqiP
nno <space>c :close<CR>
nno <space>d :Bclose<CR>
nno <space>j o<esc>
nno <space>k O<esc>
nno <space>m :e $MYVIMRC<cr>
nno <space>o :only<CR>
nno <space>q :q<cr>
nno <space>s :sp<cr>
nno <space>t :NERDTreeToggle<cr>
nno <space>u :UltiSnipsEdit<cr>
nno <space>U :w<cr>:call UltiSnips#RefreshSnippets()<cr><c-w><c-w>
nno <space>v :vs<cr>
nno <space>w :w<cr>
nno <space>= <c-w>=
nno <F2> :bp<cr>
nno <F3> :bn<cr>
nno <F5> :w\|so\ %<cr>
nno <F6> :plug

nno <c-w> <c-w>w

ino <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
ino <c-j> <c-r>*

so ~/.vimrc_more
