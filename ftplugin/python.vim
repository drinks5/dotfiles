let b:delimitMate_nesting_quotes = ['"']

let python_highlight_all = 1
autocmd FileType python noremap <F7> <Esc>:w<CR>:call OperateBreakpoint(line('.'), 'import ipdb; ipdb.set_trace(context=30)')<CR>

function! OperateBreakpoint(lnum, cmd) "{{{
    let l:line = getline(a:lnum)
    if strridx(l:line, a:cmd) != -1
        normal dd
    else
        let l:plnum = prevnonblank(a:lnum)
        call append(line('.')-1, repeat(' ', indent(l:plnum)).a:cmd)
        normal k
    endif
endfunction "}}}
