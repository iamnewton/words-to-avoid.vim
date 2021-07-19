# words-to-avoid.vim

Highlight words to avoid in tech writing:

- obviously
- basically
- simply
- of course
- clearly
- just
- everyone knows
- However
- So
- easy

## Install

With [Plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'iamnewton/words-to-avoid.vim'
```

With [Vundle](https://github.com/gmarik/Vundle.vim):

```vim
Plugin 'iamnewton/words-to-avoid.vim'
```

Without a package manager:

```bash
curl -sSL https://raw.githubusercontent.com/iamnewton/words-to-avoid.vim/master/plugin/words-to-avoid.vim > ~/.vim/plugin/words-to-avoid.vim
```
### Post Install

Add the following to your `.vimrc` file in order to highlight the words based on your colorscheme

```vim
highlight TechWordsToAvoid ctermbg=<red_bg> ctermfg=<white_fg> guibg=<red_bg> guifg=<white_fg>
```

## Credits

- http://wynnnetherland.com/linked/2014010902/words-to-avoid-in-tech-writing
- http://css-tricks.com/words-avoid-educational-writing/
- http://usevim.com/2014/01/17/words-to-avoid/
