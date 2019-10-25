function! myspacevim#before() abort
    nnoremap fd <Esc>
endfunction

function! myspacevim#after() abort
    set signcolumn=yes

    inoremap fd <Esc>
    inoremap <C-b> <Left>
    inoremap <C-f> <Right>

    let g:rustfmt_autosave = 1
endfunction

