function! myspacevim#before() abort
  nnoremap fd <Esc>
endfunction

function! myspacevim#after() abort
  set signcolumn=yes

  inoremap fd <Esc>
  inoremap <C-b> <Left>
  inoremap <C-f> <Right>

  let g:coc_config_home = "${XDG_CONFIG_HOME}/SpaceVim/"

  let g:rustfmt_autosave = 1
  let g:neomake_open_list = 0
  let g:clang_library_path = '/usr/local/opt/llvm/lib'

  let g:neoformat_enabled_csharp = ['clang-format']
  let g:neoformat_enabled_markdown = ['prettier']
  let g:neoformat_enabled_javascript = ['prettier']
  let g:neoformat_enabled_yaml = ['prettier']
  let g:neoformat_enabled_sql = []
endfunction

