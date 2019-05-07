function! s:Swap(a, b)
  " execute a:b . ' | delete | '.a:a.' | put | '.a:a.' | delete | '.a:b-1.' | put' 
  execute a:a.'m'.a:b
endfunction

function! Transpose(...)
  " call s:Swap(a:a,a:b)
  " call s:Swap(a:b-1,a:a-1)
  if a:0 == 2
    echo "2 args"
    call s:Swap(a:1, a:2)
    call s:Swap(a:2-1, a:1-1)
  elseif a:0 == 4
    echo "4 args"
    call s:Swap(a:1.",".a:2, a:3-1)
    call s:Swap(a:3.",".a:4, a:1-1)
  else
    echo "need 2 or 4 args"
  endif
endfunction

command! -nargs=* Swap :call Transpose(<f-args>)
command! -range T :call Transpose(<line1>, <line2>)
" This one accepts TWO ranges
command! -nargs=+ R :call Transpose(<f-args>)
" command! -range R -range :call Transpose(<f-args>)
" command! -range Tp -range :call Transpose(<line1>, <line2>)

" These lines are for testing
" 10
" 9
" 8
" 7
" 6
" 5
" 4
" 3
" 2
" 1
