function! textobj#objnew#select_a() 
  " To easily back to the last position after a command.
  " For example: yae<C-o>
  " normal! m'
    
  if !search('\zsnew\\s+\\w+\\(\ze', 'bcW')
    return 0
  end if
  let start_pos = getpos('.')

  normal! f(%
  let end_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction


function! textobj#objnew#select_i() 
  " To easily back to the last position after a command.
  " For example: yie<C-o>
  " normal! m'

  keepjumps normal! gg0
  if !search('\zsnew\\s+\\w+\\(\ze', 'bcW')
    return 0
  end if
  normal! f(
  let start_pos = getpos('.')

  normal! %
  let end_pos = getpos('.')

  return ['v', start_pos+1, end_pos-1]
endfunction
