" ==============================================================================
" plugin
" ==============================================================================

call plug#begin("~/.config/nvim/plugged")
  Plug 'ulwlu/elly.vim'
  Plug 'dracula/vim'
  Plug 'joshdick/onedark.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

" ==============================================================================
" basic settings
" ==============================================================================

let $LANG='en_US.UTF-8'
let mapleader="\<Space>"
set clipboard=unnamedplus
set encoding=utf-8
set expandtab
set hlsearch incsearch
set ignorecase wildignorecase smartcase
set laststatus=0
set lazyredraw
set mouse=a
set nobomb
set noswapfile
set shiftwidth=4
set showtabline=2
set signcolumn=yes
set smarttab
set splitright splitbelow
set tabstop=4
set termguicolors

" ==============================================================================
" coc-settings
" ==============================================================================

let g:coc_global_extensions = [
      \'coc-deno',
      \'coc-diagnostic',
      \'coc-eslint',
      \'coc-explorer',
      \'coc-fzf-preview',
      \'coc-git',
      \'coc-go',
      \'coc-json',
      \'coc-lists',
      \'coc-prettier',
      \'coc-rust-analyzer',
      \'coc-sh',
      \'coc-snippets',
      \'coc-sql',
      \'coc-tsserver',
      \'coc-vimlsp',
      \'coc-yaml',
      \'coc-yank',
      \]

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" ==============================================================================
" airline
" ==============================================================================

let g:airline_theme = "deus"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" ==============================================================================
" nerdtree
" ==============================================================================

nnoremap <Leader>tt :CocCommand explorer<CR>

" ==============================================================================
" I/O
" ==============================================================================

autocmd FileType vim setlocal tabstop=2 shiftwidth=2

" ==============================================================================
" keybindings
" ==============================================================================

inoremap <silent> fd <Esc>
nnoremap <silent> fd <Esc>
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>

" ==============================================================================
" view
" ==============================================================================

" for onedark theme
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark

