---
layout: post
title: vim registers
---

I have been a vim user for a long time (actually I am using spacemacs with vim keybindings, but nevermind).
But I have never really used the registers, which is really bad, since it made my workflow less fluent.

So I found this stackoverflow question, which explained it very well:
http://stackoverflow.com/questions/1497958/how-do-i-use-vim-registers

What I basically grabbed from the post was this:
To yank, prefix a yank with `"k` where 'k' is the register name.
To paste preface the paste with `"k` where, once again, 'k' is the register name.

So to copy the following line into register a i would type `"ayy` and to paste it again I would type `"ap`

