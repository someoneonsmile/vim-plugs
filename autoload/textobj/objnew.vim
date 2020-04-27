function! textobj#objnew#select_a() 
  " To easily back to the last position after a command.
  " For example: yae<C-o>
  " normal! m'
    
  if !search('new\s\+\w\+(', 'bcW')
    return 0
  endif
  let start_pos = getpos('.')

  normal! f(%
  let end_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction


function! textobj#objnew#select_i() 
  " To easily back to the last position after a command.
  " For example: yie<C-o>
  " normal! m'

  if !search('new\s\+\w\+(', 'bcW')
    return 0
  end if
  normal! f(l
  let start_pos = getpos('.')

  normal! h%h
  let end_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction
