syntax on 
set nocompatible
set exrc
set noswapfile
set nobackup
set encoding=utf-8
set incsearch
set clipboard=unnamedplus
filetype off 
inoremap ii  <Esc>
set number
set undodir=~/.vim/undodir
set undofile
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-utils/vim-man'
Plugin 'https://github.com/ycm-core/YouCompleteMe.git'
Plugin 'morhetz/gruvbox'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'https://github.com/rking/ag.vim.git'
Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/moll/vim-node.git'
Plugin 'fatih/vim-go'
Plugin 'hotoo/jsgf.vim'
Plugin 'https://github.com/ackyshake/VimCompletesMe.git'             " required
Plugin 'lyuts/vim-rtags'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

    
colorscheme gruvbox
set noerrorbells
set vb t_vb=
set background=dark
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set colorcolumn=80
set autochdir
autocmd BufWritePre * %s/\s\+$//e
set nowrap
set smartcase
set smartindent
set hidden
let NERDTreeMinimalUI = 1
let g:go_fmt_command = "goimports"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_max_diagnostics_to_display=0

"DEBUG STUFF
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_warning_symbol = '.'
let g:ycm_error_symbol = '..'
let g:ycm_server_use_vim_stdout = 1

" Let definitions
let mapleader = " "
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ag_working_path_mode="r"

if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor\ --column
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
	let g:ctrlp_use_caching = 0
endif

map - <C-W>-
map + <C-W>+

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
nmap <leader>pf :CtrlP<CR>
nnoremap <Leader>gd :GoDef<Enter>
nnoremap <Leader>pt :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>pv :NERDTreeFind<CR>
nnoremap <silent> <Leader>vr :vertical resize 30<CR>
nnoremap <silent> <Leader>r+ :vertical resize +5<CR>
nnoremap <silent> <Leader>r- :vertical resize -5<CR>
nnoremap <silent> <Leader>;; iif err !=nil { <esc>0} <esc>:w<CR>
nmap <leader><leader> V
vmap <Leader> y "+y
vmap <Leader>= <C-W><C-=>

nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap \ :Ag<SPACE>
nnoremap <Leader>ps :Ag<SPACE>

