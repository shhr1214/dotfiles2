set hidden
set clipboard=unnamedplus
set encoding=utf-8
set expandtab
set hlsearch incsearch
set ignorecase wildignorecase smartcase
set laststatus=0
set lazyredraw
set mouse=a
set number
set nobomb
set noswapfile nobackup nowritebackup
set shiftwidth=4
set showtabline=2
set signcolumn=yes
set smarttab
set splitright splitbelow
set tabstop=4
set termguicolors

inoremap <silent><C-b> <Left>
inoremap <silent><C-f> <Right>
inoremap <silent> fd <Esc>
nnoremap <silent> fd <Esc>
nnoremap <silent><Leader>s :w<CR>

nnoremap <silent><Leader>' :split<CR> :term<CR>i
nnoremap <silent><Leader>ws :split<CR>
nnoremap <silent><Leader>wv :vsplit<CR>
nnoremap <silent><Leader>wd :quit<CR>
nnoremap <silent><Leader>wh <C-w>h
nnoremap <silent><Leader>wj <C-w>j
nnoremap <silent><Leader>wk <C-w>k
nnoremap <silent><Leader>wl <C-w>l
nnoremap <silent><Leader>tn :tabnew<CR>

nnoremap <silent><Leader>bd :bd<CR>

" coc

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <C-space> coc#refresh()
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

nnoremap <Leader>tt :CocCommand explorer<CR>

" fzf

nnoremap <silent><Leader>ff :Files<CR>
nnoremap <silent><Leader>gf :GFiles<CR>
nnoremap <silent><Leader>bf :Buffers<CR>
nnoremap <silent><Leader>wf :Windows<CR>
nnoremap <Leader>fr :Rg<Space>

let g:user_emmet_leader_key='<C-Z>'
