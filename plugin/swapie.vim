function! Swap(a, b)
  execute a:a.'m'.a:b
endfunction

function! Transpose(...)
  if a:0 == 2
    echo "2 args"
    call Swap(a:1, a:2)
    call Swap(a:2-1, a:1-1)
  elseif a:0 == 3
    let s:range = split(a:3, ',')
    if len(s:range) == 2
      call Swap(a:1.",".a:2, s:range[0]-1)
      call Swap(s:range[0].",".s:range[1], a:1-1)
    elseif len(s:range) == 1
      call Swap(a:1.",".a:2, s:range[0]-1)
      call Swap(s:range[0], a:1-1)
    else
      echoerr "Invalid number of right-hand params"
    endif
  elseif a:0 == 4
    echo "4 args"
    call Swap(a:1.",".a:2, a:3-1)
    call Swap(a:3.",".a:4, a:1-1)
  else
    echo "need 2 or 4 args"
  endif
endfunction

command! -range S :call Swap(<line1>, <line2>)
command! -range T :call Transpose(<line1>, <line2>)
" This one accepts TWO ranges
command! -range -nargs=+ R :silent! call Transpose(<line1>, <line2>, <q-args>)

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
