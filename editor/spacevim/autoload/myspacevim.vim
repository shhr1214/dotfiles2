function! myspacevim#before() abort
  nnoremap fd <Esc>
endfunction

function! myspacevim#after() abort
  set signcolumn=yes

  inoremap fd <Esc>
  inoremap <C-b> <Left>
  inoremap <C-f> <Right>

  let g:rustfmt_autosave = 1
  let g:neomake_open_list = 0
  let g:clang_library_path = '/usr/local/opt/llvm/lib'

  let g:neoformat_enabled_csharp = ['clang-format']
  let g:neoformat_enabled_markdown = ['prettier']
  let g:neoformat_enabled_javascript = ['prettier']
  let g:neoformat_enabled_yaml = ['prettier']

  augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
  augroup END

  augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
  augroup END
endfunction

