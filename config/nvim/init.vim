call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'metakirby5/codi.vim'
Plug 'habamax/vim-sendtoterm'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-ultisnips'
Plug 'roxma/nvim-yarp'
call plug#end()

colorscheme nord
set number 
set mouse=a

" Enable Spellchecking in Tex Documents
autocmd FileType tex setlocal spell spelllang=de_de

set tabstop=4

let g:neovide_cursor_length=0.05
let g:neovide_trail_length=0.0
set clipboard=unnamedplus

" Custom keymaps

imap <C-BS> <Esc>ldb

autocmd FileType python nnoremap <C-r> :!python %<CR>
autocmd FileType tex nnoremap <C-r> :!pdflatex %<CR>

" vimtex config

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

" -- ncm2 config

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" -- ultisnips config

let g:UltiSnipsExpandTrigger="<s-CR>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
