function! s:Swap(a, b)
  " execute a:b . ' | delete | '.a:a.' | put | '.a:a.' | delete | '.a:b-1.' | put' 
  execute a:a.'m'.a:b
endfunction

function! Transpose(a,b)
  call s:Swap(a:a,a:b)
  call s:Swap(a:b-1,a:a-1)
endfunction

command! -nargs=* Swap :call Transpose(<f-args>)
command! -range T :call Transpose(<line1>, <line2>)
" command! -range Tp -range :call Transpose(<line1>, <line2>)

" These lines are for testing
" i
" love
" you
" so
" much
" mom
