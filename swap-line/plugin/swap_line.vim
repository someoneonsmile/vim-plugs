if exists('loaded_swap_line')	
    finish	
endif	

let loaded_swap_line = 1

function! s:swap_lines(n1, n2)
 let line1 = getline(a:n1)
 let line2 = getline(a:n2)
 call setline(a:n1, line2)
 call setline(a:n2, line1)
endfunction
 
function! s:swap_up()
 let n = line('.')
 if n == 1
 return
 endif
 
 call s:swap_lines(n, n - 1)
 exec n - 1
endfunction
 
function! s:swap_down()
 let n = line('.')
 if n == line('$')
 return
 endif
 
 call s:swap_lines(n, n + 1)
 exec n + 1
endfunction

function! s:create_key_bind(modes, bindName, funcName)
    let prefix = 'SWAPLINE_'
    for mode in (a:modes ==# '') ? [''] : split(a:modes, '\zs')
        execute mode . 'noremap <plug>(' . prefix . a:bindName . ') :<C-u>call <SID>' . a:funcName . '()<CR>'
    endfor
endfunction
 
call s:create_key_bind('ni', 'swapUp', 'swap_up')
call s:create_key_bind('ni', 'swapDown', 'swap_down')
