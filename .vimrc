execute pathogen#infect()

filetype plugin indent on
syntax on

set background=dark
set guifont=Monaco:h14
set t_Co=256
colorscheme base16-eighties

set nocompatible
set textwidth=80
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number
set colorcolumn=79
set laststatus=2
set cmdheight=2
set ruler
set cursorline
set hlsearch
set nobackup
set ttyfast
set whichwrap=b,s,h,l,<,>,[,]
set spell
set visualbell
set backspace=start,indent,eol
set wildmenu
set wildmode=longest,list
set wildignore=*node_modules/**,*bower_components/**

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

autocmd BufRead,BufNewFile *.py set ts=4
autocmd BufRead,BufNewFile *.py set shiftwidth=4

nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<CR>
noremap <C-n> :NERDTreeToggle<CR>
noremap <C-o> :NERDTreeFind<CR>

let g:vim_markdown_folding_disabled = 1
let g:jsx_ext_required=0
let g:syntastic_javascript_checkers = ['eslint']
