---
layout: post
title: numbers in egrep
---

I had to search for an action that took more than 999ms in some log file.   
Naturally I use grep for this, however I was in for a surprise:   
In grep you can not use `\d` to search for a digit, so My search `grep -nir -E "took.*\d{4}.*ms" . ` did not match anything.   
However this worked `grep -nir -E "took.*[1-9]{4}.*ms" . `   
Pleae note that I have some special setup for my grep, so I don't use egrep, but rather `grep -E`
