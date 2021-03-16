" ==============================================================================
" plugin
" ==============================================================================

call plug#begin("~/.vim/plugged")
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'joshdick/onedark.vim'
call plug#end()

let g:coc_global_extensions = [
			\'coc-git',
			\'coc-go',
			\'coc-json',
			\'coc-prettier',
			\'coc-rust-analyzer',
			\'coc-tsserver',
			\]

set encoding=utf-8
autocmd FileType vim setlocal tabstop=2 shiftwidth=2

" ==============================================================================
" I/O
" ==============================================================================

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

inoremap <silent> fd <esc>
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
set signcolumn=yes

" ヴィジュアル選択範囲カラー
if has('nvim')
  hi Visual guifg=NONE ctermfg=NONE guibg=#335261 ctermbg=0 gui=NONE cterm=NONE
  hi VisualNOS guifg=NONE ctermfg=NONE guibg=#335261 ctermbg=0 gui=NONE cterm=NONE
endif

" 検索ハイライトカラー
if has('nvim')
  hi IncSearch guifg=#f43753 ctermfg=235 guibg=NONE ctermbg=15 gui=NONE cterm=NONE
  hi Search guifg=#ffffff ctermfg=15 guibg=#f43753 ctermbg=NONE gui=underline,bold cterm=underline,bold
endif

" ==============================================================================
" others
" ==============================================================================

set noswapfile

