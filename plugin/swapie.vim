function! Swap(a, b)
  " execute a:b . ' | delete | '.a:a.' | put | '.a:a.' | delete | '.a:b-1.' | put' 
  execute a:a.'m'.a:b
endfunction

function! Transpose(a,b)
  call Swap(a:a,a:b)
  call Swap(a:b-1,a:a-1)
endfunction

command -nargs=* Swap :call Transpose(<f-args>)

" These lines are for testing
" i
" love
" you
" so
" much
" mom
