# Swapie 
## I can't believe this doesn't already exist

**Swapie** is a terrible vim plugin I made because *nothing. like it. exists.*

I literally can't believe that, but whatever

## Installing

I use dein, and if it's later than 2014 you should too.

first add `call dein#add('ianfabs/swapie.vim')` to your `.vimrc` or whathaveyou.

then call `:call dein#update()` from inside vim

exit vim

reopen vim

that should be it

## Using

Here is an example txt file:

```txt
1~ I
2~ love
3~ you
4~ so
5~ much
6~ mom
```

from vim, hit <Shift-:>

in there, type the following

`:Swap 2 6`

Boom, you should get:

```txt
1~ I
6~ mom
3~ you
4~ so
5~ much
2~ love
```

Or, you can use the range-transpose syntax

`:2,6T`

I actually used the plugin to do that btw

Good luck
