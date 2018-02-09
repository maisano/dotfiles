call plug#begin('~/.vim/plugged')

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py --tern-completer
  endif
endfunction

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'chriskempson/base16-vim'
Plug 'ervandew/supertab'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'mhartington/oceanic-next'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0ng/vim-hybrid'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install -g tern' }
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

call plug#end()

filetype plugin indent on
syntax on

set termguicolors
set background=dark
set t_Co=256
colorscheme hybrid_material
"colorscheme OceanicNext
set guifont=Operator\ Mono:h16
hi Comment cterm=italic
hi htmlArg cterm=italic

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
set scrolloff=3
set ruler
set cursorline
set hlsearch
set nobackup
set ttyfast
set whichwrap=b,s,h,l,<,>,[,]
"set spell
set nowrap
set backupcopy=yes
set visualbell
set backspace=start,indent,eol
set wildmenu
set wildmode=longest,list
set wildignore=*node_modules/**,*bower_components/**

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<CR>
noremap <C-n> :NERDTreeToggle<CR>
noremap <C-o> :NERDTreeFind<CR>

noremap <leader>t :FZF<cr>
noremap <leader>n :cnext<cr>
noremap <leader>p :cprev<cr>

autocmd BufRead,BufNewFile *.py set ts=4
autocmd BufRead,BufNewFile *.py set shiftwidth=4

let g:vim_markdown_folding_disabled = 1
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

"let g:airline_powerline_fonts = 1
let g:airline_theme = 'oceanicnext'

let local_eslint = findfile('node_modules/.bin/eslint', '.;')
if executable(local_eslint)
  let g:syntastic_javascript_eslint_exec = local_eslint
endif
