filetype plugin indent on
syntax enable
set hid bs=2 ar
set nobk nowb noswf
set wmnu wim=longest:full,full vb ru ls=2 spr sb
set ai si is  ic scs
set cb+=unnamed,unnamedplus
set enc=utf-8
set sw=4 ts=4 noet sta sts=4
set wrap nu rnu nohls tw=80 so=5
set mouse=a
set spelllang=en_us
"let &showbreak = '+++ '
set list listchars=tab:»\ ,extends:?,precedes:?

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guifont=Consolas:h12
au GUIEnter * sim ~x
"set bg=light
highlight LineNr guifg=lightgrey
colo slate

ino jf <esc>
ino fj <esc>

nno <space>j o<esc>
nno <space>k O<esc>

nno <space>m :e $MYVIMRC<cr>
nno <space>M :w\|so\ %<cr>

nno <space>s :sp<cr>
nno <space>v :vs<cr>
nno <space>= <c-w>=

nno <space>o :only<CR>
nno <space>q :q<cr>
nno <space>w :w<cr>

nno <space>d :bd<CR>
nno <space>p :bp<cr>
nno <space>n :bn<cr>
nno <space><space> <c-w>w

nnoremap j gj
nnoremap k gk

nnoremap U <C-r>

" more useful
noremap a A
noremap x V
