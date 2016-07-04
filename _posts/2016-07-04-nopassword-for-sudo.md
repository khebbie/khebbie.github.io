---
layout: post
title: no password for sudo
---

I use I3 for my everyday work, to suspend I do a pm-suspend, and I have created a shortcut key for this in my i3 config file.
I have just re-installed my machine.
Now I don't want to enter sudo everytime I have to shutdown the machine. So in the /etc/sudoers I entered the following `khebbie ALL = NOPASSWD: /usr/sbin/pm-suspend`
