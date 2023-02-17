# vim-insert
Bind this script to some button and you will be able to edit the PRIMARY selection with Vim, which means you can select text with mouse in any GUI app and edit it with Vim. Keyboard layout will be changed to US automatically. After :wq the edited text will be copied to CLIPBOARD and then pasted by emulating Ctrl-V with xdotool, which most likely will replace the previosly selected text. You can adapt it to your system by changing the terminal, the window class (i need that to prevent i3wm from tiling the vim window), changing the EDITOR. I'm actually just sharing an idea. Note that it works only on X11, if you don't want to completely rewrite the script (which is not that hard). I successfully use it to edit and paste text in LibreOffice. 

There is also a vim config that may be useful if you are going to use the script. It contains: 
* sentence splitter which splits English/Cyrillic sentences by regex which matches a sequence of ./!/?, whitespace and a capital character. This way you can edit the text more comfortable with vim, and before pasting just do ggVGJ (VAJ if you source viminsert.vim) to **J**oin them back.
* autocmd to soft-wrap text by words on plain text filetype
* layout switcher which will preserve your layout and switch to US when leaving Insert mode and restore the layout when you return to Insert mode.
* mapping to select all text with vA or VA

# deps
Make sure you have these installed:
* vipe from moreutils (allows to | pipe text into EDITOR and out)
* xkb-switch
* xdotool
* xsel

And these you would probably want to change as you prefer
* neovim
* kitty
