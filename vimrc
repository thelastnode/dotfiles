set nocompatible
set visualbell

" pathogen
call pathogen#runtime_append_all_bundles()

" colors
set t_Co=256
set background=dark
colorscheme twilight256

" coffeescript compile on save
let coffee_compile_on_save = 1

" syntax highlighting and filetype specific stuff
syntax on filetype on filetype plugin on
filetype indent on
filetype plugin on

set expandtab

" autocmds
autocmd FileType python set expandtab tabstop=4 shiftwidth=4
autocmd FileType lisp set lisp

set hidden " Allow hidden unsaved buffers
set laststatus=2 " Always show status line

" Menu Completion
set wildmenu
set wildmode=longest:list

set history=500 " Longer history

" Intelligent case searching
set ignorecase
set smartcase
set incsearch

" Invisible characters
set listchars=tab:>-,trail:-

" Intelligent indenting
set autoindent
set cindent

set tabstop=4
set softtabstop=4
set shiftwidth=4

set showmatch " Parenthesis matching

set title " Set title

" Faster scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

set ruler " Show ruler

" 80 character width plus highlighting boundary
set textwidth=80
set colorcolumn=+1
hi ColorColumn ctermbg=darkgray

set backspace=eol,start,indent " Backspace config

let loaded_minibufexplorer = 1 " Disable MiniBufExplorer

" Jump between if's, HTML/XML tags, etc. with %
runtime macros/matchit.vim

let mapleader = ";"

" Leader maps
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>s :set list! list?<CR>
nmap <Leader>n :set number! number?<CR>
nmap <Leader>h :set hlsearch! hlsearch?<CR>
nmap <Leader>k :bn<CR>
nmap <Leader>j :bp<CR>
nmap <Leader>o :b#<CR>
nmap <Leader>t :tabnew<Space>

" Leader maps for movement
nmap <Leader>u <C-u>
nmap <Leader>d <C-d>
nmap <Leader>f <C-f>
nmap <Leader>b <C-b>

" vim-latexsuite
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_DefaultTargetFormat = 'pdf'
