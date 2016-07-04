---
layout: post
title: nopassword for sudo
---

I use I3 for my everyday work, to shutdown I do a pm-shutdown, and I have created a shortcut key for this in my i3 config file.
I have just re-installed my machine.
No I don't want to enter sudo everytime I have to shutdown the machine. So in the /etc/sudoers I entered the following `khebbie ALL = NOPASSWD: /usr/sbin/pm-suspend`
