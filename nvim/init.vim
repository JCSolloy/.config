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



let g:python3_host_prog="/Users/banis/opt/anaconda3/bin/python"

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
"
" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c

" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>

" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" wrap existing omnifunc
" Note that omnifunc does not run in background and may probably block the
" editor. If you don't want to be blocked by omnifunc too often, you could
" add 180ms delay before the omni wrapper:
"  'on_complete': ['ncm2#on_complete#delay', 180,
"               \ 'ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
au User Ncm2Plugin call ncm2#register_source({
        \ 'name' : 'css',
        \ 'priority': 9,
        \ 'subscope_enable': 1,
        \ 'scope': ['css','scss'],
        \ 'mark': 'css',
        \ 'word_pattern': '[\w\-]+',
        \ 'complete_pattern': ':\s*',
        \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
        \ })




