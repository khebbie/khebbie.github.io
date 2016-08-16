---
layout: post
title: allow access to x from docker
---

Using docker to host chrome requires that docker can talk to x. I found the solution [on stackoverflow](http://stackoverflow.com/questions/28392949/running-chromium-inside-docker-gtk-cannot-open-display-0)  

All I have to do is run `xhost +`
