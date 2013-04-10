set nu
set fileencodings=ucs-bom,utf-8,chinese,big5,cp932,default,latin1
colorscheme koehler
set hlsearch
set incsearch
set gfn=Monaco:h13
set autoindent
set ruler
set shiftwidth=4
set tabstop=4
set expandtab
set history=200
set backup
set guioptions-=T

map \r :tabnew +normal\ `" $HOME/.vimrc<CR>
map <silent> \e :exe getline(".")<CR>
map \l :source $HOME/.vimrc<CR>

noremap \1 :execute 'help ' . expand('<cword>')<CR>
map <silent> \2 :nohlsearch<CR>
map <silent> \3 :NERDTreeFind<CR>
noremap <silent> \o :execute 'let x=system("open -R ' . expand('%:p') . '")'<CR>

noremap <silent> <D-j> mt:move .+1<CR>`t
noremap <silent> <D-k> mt:move .-2<CR>`t
inoremap <silent> <D-j> <C-O>mt<C-O>:move .+1<CR><C-O>`t
inoremap <silent> <D-k> <C-O>mt<C-O>:move .-2<CR><C-O>`t
vnoremap <silent> <D-j> :move '>+1<CR>gv
vnoremap <silent> <D-k> :move '<-2<CR>gv

inoremap <C-CR> <C-O>o
inoremap <D-CR> <C-O>O
inoremap <C-A> <C-O>^
inoremap <C-E> <C-O>$
inoremap <C-N> <C-O>j
inoremap <C-P> <C-O>k
inoremap <C-B> <Left>

inoremap <C-F> <C-O>D
inoremap <C-U> <C-O>u

vnoremap * y/<C-\>eescape(@", '\/')<CR><C-B>\V<CR>

map <C-W>t :tabnew<CR>

" 窗口操作相关"
" 关闭当前窗口
noremap <C-X>0 <C-W>c
inoremap <C-X>0 <C-O><C-W>c 
" 关闭所有其他窗口"
noremap <C-X>1 :only<CR>
vnoremap <C-X>1 :<C-U>only<CR>gv
inoremap <C-X>1 <C-O>:only<CR>
" 水平分割当前窗口
noremap <C-X>2 <C-W>s
vnoremap <C-X>2 <C-W>sgv
inoremap <C-X>2 <C-O><C-W>s
" 垂直分割当前窗口"
noremap <C-X>3 <C-W>v
vnoremap <C-X>3 <C-W>vgv
inoremap <C-X>3 <C-O><C-W>v

noremap <C-X><C-C> <Esc>:q<CR>
noremap <C-X><C-F> :tabe .\

" buffer相关操作
" 下一个buffer
noremap <C-N> :bn<CR>
" 上一个buffer
noremap <C-P> :bp<CR>
" 切换alternate buffer    <C-6>


""""""""""""""""""""""""""""""""""""

" NERDTree
let NERDTreeShowLineNumbers=1

" Tlist
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Use_Right_Window = 1
noremap <silent> \4 :TlistToggle<CR>

" Tagbar
noremap \5 :TagbarToggle<CR>
let g:tagbar_right = 1
let g:tagbar_width = 35

" MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Command-T
:set wildignore+=*.o,*.obj,.git,.DS_Store,*~
let g:CommandTMaxFiles=20000
let g:CommandTMaxDepth=20

" pythoncomplete
filetype plugin on
set ofu=syntaxcomplete#Complete
autocmd FileType python　set
autocmd FileType python runtime! autoload/pythoncomplete.vim

" python-mode
let g:pymode_rope_guess_project = 0
let g:pymode_run_key = '<leader>p'

" Pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

