if exists('g:loaded_textobj_objnew')
  finish
endif

call textobj#user#plugin('objnew', {
\   '-': {
\     'select-a': 'ao',  'select-a-function': 'textobj#objnew#select_a',
\     'select-i': 'io',  'select-i-function': 'textobj#objnew#select_i'
\   },
\ })

let g:loaded_textobj_objnew = 1
