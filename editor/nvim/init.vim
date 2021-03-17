" ==============================================================================
" plugin
" ==============================================================================

call plug#begin("~/.config/nvim/plugged")
  Plug 'ulwlu/elly.vim'
  Plug 'dracula/vim'
  Plug 'joshdick/onedark.vim'
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-commentary'
  Plug 'bfredl/nvim-miniyank'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'ConradIrwin/vim-bracketed-paste'
  Plug 'ap/vim-css-color' | Plug 'sheerun/vim-polyglot'
  Plug 'cohama/lexima.vim' | Plug 'machakann/vim-sandwich'
  Plug 'tpope/vim-fugitive' | Plug 'rhysd/conflict-marker.vim'
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  Plug 'junegunn/fzf.vim' | Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'preservim/nerdtree'
call plug#end()

" ==============================================================================
" basic settings
" ==============================================================================

set nobomb
set lazyredraw
set laststatus=0
set termguicolors
set signcolumn=yes
let $LANG='en_US.UTF-8'
let mapleader="\<Space>"

" ==============================================================================
" coc-settings
" ==============================================================================

let g:coc_global_extensions = [
			\'coc-git',
			\'coc-deno',
			\'coc-go',
			\'coc-json',
			\'coc-prettier',
			\'coc-eslint',
			\'coc-rust-analyzer',
			\'coc-tsserver',
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

nnoremap <Leader>tt :NERDTreeToggle<CR>

" ==============================================================================
" I/O
" ==============================================================================

set encoding=utf-8
autocmd FileType vim setlocal tabstop=2 shiftwidth=2

if has('nvim')
  set clipboard+=unnamedplus
else
  set clipboard=unnamed,autoselect
endif

if !has('nvim')
  if has('mouse')
    set mouse=a
    if has('mouse_sgr')
      set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
      set ttymouse=sgr
    else
      set ttymouse=xterm2
    endif
  endif
endif

set mouse=a

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
" search
" ==============================================================================

set hlsearch
set incsearch
set ignorecase
set smartcase

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

set showtabline=2

set splitright
set splitbelow

set smarttab
set expandtab
set tabstop=4
set shiftwidth=4

" 検索ハイライトカラー
if has('nvim')
  hi IncSearch guifg=#f43753 ctermfg=235 guibg=NONE ctermbg=15 gui=NONE cterm=NONE
  hi Search guifg=#ffffff ctermfg=15 guibg=#f43753 ctermbg=NONE gui=underline,bold cterm=underline,bold
endif

" ==============================================================================
" others
" ==============================================================================

set noswapfile

