" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"LSP
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'unblevable/quick-scope'
Plug 'isRuslan/vim-es6'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'ThePrimeagen/harpoon'
Plug 'github/copilot.vim'
Plug 'rust-lang/rust-analyzer'
Plug 'samodostal/image.nvim'
Plug 'nvim-lua/plenary.nvim'
call plug#end()

lua << EOF
require('image').setup {
  min_padding = 5,
  show_label = true,
  render_using_dither = true,
}
EOF

colorscheme gruvbox
set background=dark
set grepprg=rg\ --vimgrep\ --smart-case\ --hidden\ --follow

syntax on
let mapleader=" "

nmap <Leader>f :call CocAction('format')<CR>
nmap <Leader>b :NERDTreeToggle<CR>
nmap <Leader>z :NERDTreeFocus<CR>
nmap <Leader>r :NERDTreeFind<CR>
nmap <Leader>ff :GFiles<CR>
nmap <Leader>s :Rg<CR>

nmap <Leader>d :lua require("harpoon.mark").add_file()<CR>
nmap <Leader>q :lua require("harpoon.ui").toggle_quick_menu()<CR>

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
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

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
 
set list
set clipboard=unnamedplus
set encoding=UTF-8
set nu
set rnu
set nowrap
set nohlsearch
let g:coc_global_extensions = ['coc-snippets', 'coc-eslint', 'coc-tsserver', 'coc-pairs', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-omnisharp', 'coc-rls']
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:UltiSnipsExpandTrigger="<tab>"
let NERDTreeShowLineNumbers=1
let g:NERDTreeWinSize=60
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
hi Normal ctermbg=none

