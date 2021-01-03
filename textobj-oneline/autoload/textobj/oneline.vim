function! textobj#oneline#select_a() 
  " To easily back to the last position after a command.
  " For example: yae<C-o>
  " normal! m'
    
  normal! 0
  let start_pos = getpos('.')

  normal! $
  let end_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction


function! textobj#oneline#select_i() 
  " To easily back to the last position after a command.
  " For example: yie<C-o>
  " normal! m'

  normal! ^
  let start_pos = getpos('.')

  normal! $
  let end_pos = getpos('.')

  return ['v', start_pos, end_pos]
endfunction
