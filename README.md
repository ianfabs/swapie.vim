# Swapie 
### Swapie adds `:T` for swapping lines in the spirit of `:m` and `:t` 

## Installing

Install **Swapie** the [tpope](http://github.com/tpope) way:
```
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/surround.git
vim -u NONE -c "helptags surround/doc" -c q
```

Or install **Swapie** with your favorite package manager and `'ianfabs/swapie.vim'`

## Using

```txt
1~ I
2~ love
3~ you
4~ so
5~ much
6~ mom
```

`:2,6T`

Boom, you should get:

```txt
1~ I
6~ mom
3~ you
4~ so
5~ much
2~ love
```

(I actually used the plugin to do that btw)

## Related
This section, and a lot of the README, is thanks to the generous support of **kiryph** and **zemja**
.

 - [vim-exchange](http://github.com/tommcdo/vim-exchange)
 - [vim-LineLuggler](http://github.com/inkarkat/vim-LineJuggler)
 - [vim-LineLugglerCommands](http://github.com/inkarkat/vim-LineJugglerCommands)
