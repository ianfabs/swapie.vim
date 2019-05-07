function! s:Swap(a, b)
  execute a:a.'m'.a:b
endfunction

function! Transpose(...)
  if a:0 == 2
    echo "2 args"
    call s:Swap(a:1, a:2)
    call s:Swap(a:2-1, a:1-1)
  elseif a:0 == 3
    if a:3 =~ '/[0-9]/'
      " Do shit here
      let s:range = split(a:3, ',')
      echo s:range[0]
    else
      echo "3 args"
      echo a:3
      " call s:Swap(a:1.",".a:2, a:3)
      " call s:Swap(a:3, a:1-1)
    endif
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
command! -range -nargs=? R :call Transpose(<line1>, <line2>, <q-args>)

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
