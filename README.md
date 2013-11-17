colemak.vim
===========

This set of remappings adjusts Vim to work with the Colemak keyboard layout.

It started out as a copy of [Shai Coleman's colemak.vim][1] but quickly
changed when I realized that while some of his ideas were interesting, others
I didn't like at all.

 [1]: http://colemak.com/pub/vim/colemak.vim

The **colemak.vim** file has changed over the years to suit me and my
needs/preferences; changes are still introduced from time to time.  
This means that it most likely isn't suitable for someone who's looking for
a "faithful translation of QWERTY Vim", since it's not an attempt to do that.

Main changes
------------

**unei** (**ijkl** on QWERTY) replaces **hjkl**. A lot of movement mappings are
centered around this formation of keys:

* **ly** for word back and forward.
* **^L^Y** for WORD back and forward.
* **LY** for ^ and $.
* **NI** for end of word back and forward.
* **jh** for page up and down.

There are other ones in that region of the keyboard, but those are the ones
I use the most.

Undo, copy and paste are placed on the **z**, **c** and **v**, resembling the
Ctrl+zxcv counterparts in other applications. This is a remnant of Shai's
colemak.vim. Back then I didn't feel like making up something which breaks less
bindings, these days I'm just too used to it.

There are other changes, but you can look those up in the actual mapping file.

Other stuff
-----------

Apart from the file with the mappings a file with *unmappings* was added.
Together, these two files provide you with the commands `:ColemakEnable` and
`:ColemakDisable`, of which the first one is run automatically when starting
Vim.
