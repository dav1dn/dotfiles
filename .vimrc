
set mouse=a
set hidden


" Syntax highlighting
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
syntax on

" Plugin specific options
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

let g:indentLine_char = '¦'
let g:indentLine_enabled = 1
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
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
set rnu


