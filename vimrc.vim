
:set fenc=utf-8
:set fencs=iso-2022-jp,euc-jp,cp932,utf-8
:set enc=utf-8

" https://qiita.com/mfujimori/items/9fd41bcd8d1ce9170301

set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd


set number
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk


set expandtab
set tabstop=2
set shiftwidth=2

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" For syntastic
execute pathogen#infect()

"---------------------------
" Start Neobundle Settings.
"---------------------------
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" nodejs
" https://qiita.com/hisayuki/items/b0d60168975d7cc8cbce
NeoBundle 'moll/vim-node'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=0 
let g:syntastic_check_on_save=1 
let g:syntastic_check_on_wq = 0 
let g:syntastic_auto_loc_list=1 
let g:syntastic_loc_list_height=6 
set statusline+=%#warningmsg# 
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint'] 
let g:syntastic_mode_map = {
      \ 'mode': 'active',
      \ 'active_filetypes': ['javascript'],
      \ 'passive_filetypes': []
      \ }""""""
" Excute node.js using '\r'
NeoBundle 'thinca/vim-quickrun'

" For Python
" https://qiita.com/tekkoc/items/921d7a7cf124e63adab5
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'kevinw/pyflakes-vim'
let g:syntastic_mode_map = {
            \ 'mode': 'active',
            \ 'active_filetypes': ['sh', 'vim'],
            \ 'passive_filetypes': ['html', 'python']
            \}
NeoBundle 'nvie/vim-flake8'
NeoBundle 'nathanaelkane/vim-indent-guides'

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------
