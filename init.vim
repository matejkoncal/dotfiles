" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"LSP
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'unblevable/quick-scope'
Plug 'isRuslan/vim-es6'
call plug#end()
colorscheme gruvbox
set background=dark
set grepprg=rg\ --vimgrep\ --smart-case\ --hidden\ --follow

syntax on
let mapleader=" "

nmap <Leader>f :call CocAction('format')<CR>
nmap <Leader>b :NERDTreeToggle<CR>
nmap <Leader>z :NERDTreeFocus<CR>
nmap <Leader>ff :Files<CR>
nmap <Leader>s :Rg<CR>

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>aa :CocAction<CR> 
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
 
set list
set nu
set rnu
set nowrap
set nohlsearch

let g:UltiSnipsExpandTrigger="<tab>"
let g:coc_global_extensions = ['coc-snippets', 'coc-eslint', 'coc-tsserver', 'coc-pairs', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-omnisharp', 'coc-rls']
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let NERDTreeShowLineNumbers=1
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
