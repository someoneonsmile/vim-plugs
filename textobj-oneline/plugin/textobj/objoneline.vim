if exists('g:loaded_textobj_oneline')
  finish
endif

call textobj#user#plugin('oneline', {
\   '-': {
\     'select-a': 'ao',  'select-a-function': 'textobj#oneline#select_a',
\     'select-i': 'io',  'select-i-function': 'textobj#oneline#select_i'
\   },
\ })

let g:loaded_textobj_oneline = 1
