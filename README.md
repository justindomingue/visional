# Visional VIM Plugin

> Vision is the art of seeing what is invisible to others. _Jonathan Swift_

Visional highlights all occurences of a word inside a buffer. The plugin allows to easily spot variable definitions, function calls and more, preventing typos and improving code readability by giving a quick visual feedback.

## Installation

Using pathogen,

    git clone https://github.com/justindomingue/visional.git ~/.vim/bundle/

## Custom highlight

Simply define your highlight in `g:visionalhl` in your `vimrc`. For example, the default settings are

    let g:visionalhl = "ctermbg=black ctermfg=red guifg=#ff0000 guibg=#000000 ctermfg=LightRed gui=bold"

## Disable Visional

If you don't want the occurences of the word under the cursor to be highlighted, set the global variable `g:visionalnoauto` to 1

    let g:visionalnoauto = 1
