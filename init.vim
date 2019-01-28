set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" settings
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" plugins
call plug#begin('~/.config/nvim/plugins')
Plug 'Raimondi/delimitmate'
"Plug 'morhetz/gruvbox'
"Plug 'chriskempson/base16-vim'
Plug 'mhartington/oceanic-next'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'hail2u/vim-css3-syntax'
Plug 'easymotion/vim-easymotion'
Plug 'styled-components/vim-styled-components'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" Deoplete
let g:deoplete#enable_at_startup = 1
set completeopt=longest,menuone,preview

" appearance
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:airline_theme='oceanicnext'
colorscheme OceanicNext


" closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.js'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

set mouse=a
set hidden


" Syntax highlighting
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" Plugin specific options
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

"let g:indentLine_char = '·'
let g:indentLine_char = ' '
let g:indentLine_enabled = 1
let g:indentLine_setColors = 0 
let g:indentLine_color_term = 120
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
set laststatus=2
set synmaxcol=300

" nerdtree
 let NERDTreeMinimalUI = 1
 let NERDTreeDirArrows = 1

 " jsx
" allow jsx with .js extension
let g:jsx_ext_required = 0 

" Force saving files that require root permission 
cmap w!! w !sudo tee > /dev/null %

" easymotion
nmap s <Plug>(easymotion-s2)
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
nnoremap <Leader>f :NERDTreeToggle<Enter>


" relative line numbers in view
set number

