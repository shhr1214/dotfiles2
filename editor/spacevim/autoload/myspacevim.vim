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
endfunction

