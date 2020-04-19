call plug#begin('~/vimfiles/plugged')
Plug 'preservim/nerdtree'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-surround'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'sdothum/vim-colors-duochrome'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
call plug#end()

set hid bs=2 ar
set nobk nowb noswf
set wmnu wim=longest:full,full vb ru ls=2 spr sb
set ai si is  ic scs
set cb+=unnamed,unnamedplus
set enc=utf-8
set sw=4 ts=4 noet sta sts=4
set nowrap nu nohls tw=80 so=7
let &showbreak = '+++ '
set list listchars=tab:»\ ,trail:•,extends:→,precedes:←

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guifont=Consolas:h12
au GUIEnter * sim ~x

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:pandoc#syntax#conceal#use=0
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:vimtex_indent_enabled=0
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : 'latexbuild',
    \}
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
colo duochrome
set bg=light
let g:goyo_width=100

ino jf <esc>
nmap <space><space> gqiP
nno <space>/ :nohls<cr>
nno <space>c :close<CR>
nno <space>d :Bclose<CR>
nno <space>j o<esc>
nno <space>k O<esc>
nno <space>m :e $MYVIMRC<cr>
nno <space>o :only<CR>
nno <space>q :q<cr>
nno <space>s :sp<cr>
map <space>t :NERDTreeToggle<CR>
nno <space>u :UltiSnipsEdit<cr>
nno <space>U :w<cr>:call UltiSnips#RefreshSnippets()<cr><c-w><c-w>
nno <space>v :vs<cr>
nno <space>w :w<cr>
nno <space>= <c-w>=
nno <F2> :bn<cr>
nno <F3> :bp<cr>
nno <F5> :w\|so\ %<cr>
nno <F6> :plug
nno <F11> :Goyo<cr>
nno <F12> :Limelight!!<cr>

nno <c-h> <c-w>h
nno <c-j> <c-w>j
nno <c-k> <c-w>k
nno <c-l> <c-w>l
nno <c-w> <c-w><c-w>

ino <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

so ~/.vimrc_more
