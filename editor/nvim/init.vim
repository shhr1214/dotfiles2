set encoding=utf-8

" python
let g:python_host_prog=$PYENV_ROOT.'/versions/2.7.15/bin/python'
let g:python3_host_prog=$PYENV_ROOT.'/versions/3.6.5/bin/python'

" dein
if &compatible
  set nocompatible
endif

set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim
let s:dein_dir=$HOME . '/.cache/dein'
let s:dein_toml_dir=$HOME . '/.dotfiles/editor/dein'

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#add(s:dein_dir . '/repos/github.com/Shougo/dein.vim')

  call dein#load_toml(s:dein_toml_dir . '/plugins.toml', {'lazy': 0})
  call dein#load_toml(s:dein_toml_dir . '/lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" vim
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

set t_Co=256

if (has("termguicolors"))
  set termguicolors
endif

set showtabline=2

set splitright
set splitbelow

set smarttab
set expandtab
set tabstop=4
set shiftwidth=4

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
