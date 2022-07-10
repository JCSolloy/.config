set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
syntax on
set showcmd
set ruler
set encoding=utf-8
set showmatch     
set sw=2
set relativenumber
set laststatus=2
set cursorline
set noswapfile 
set autoindent
set ts=4
set expandtab

"Plugins 
call plug#begin('~/.vim/plugged')
"IDE
Plug 'easymotion/vim-easymotion'     " Search
Plug 'scrooloose/nerdtree'           " Files
Plug 'itchyny/lightline.vim'         " minmal status bar
Plug 'KKPMW/vim-sendtowindow'        " send commands to REPL
Plug 'yggdroot/indentline'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdcommenter'      " Comment
Plug 'fladson/vim-kitty'
Plug 'shaunsingh/nord.nvim'
Plug 'mattn/emmet-vim'               " HTML 
"Python
Plug 'davidhalter/jedi-vim'
"Autocomplete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

"Formater

"UI related

call plug#end()

filetype plugin indent on 


"Theme nord
let g:nord_contrast = v:true
let g:nord_borders = v:true
let g:nord_disable_background = v:true
let g:nord_italic = v:false
colorscheme nord



" Atajos teclado
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>qf :q!<CR>
nmap <Leader>wq :wq<CR>

"Terminal 
map <Leader>ti :new term://zsh<CR> iipython<CR>
map <Leader>tp :new term://zsh<CR> ipython<CR>
map <Leader>tn :new term://zsh<CR> inode<CR>
map <Leader>tt :new term://zsh<CR>


" lightline
let g:lightline ={
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ }
      \}

" Window Splits
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Remap
:imap ii <Esc>
" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>tv <C-w>t<C-w>H
map <Leader>th <C-w>t<C-w>K
" nerdtree settings
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=0
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=30
let NERDTreeIgnore = ['\.pyc$']  " ignore pyc files


"Emmet
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
