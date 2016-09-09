---
layout: post
title: build your app in docker
---

I found that building your app outside docker and then copying it into the container is an anti-pattern.   
A good alternative to this is to build your app in your dockerfile, so that it is build in `docker build`.   
This way you avoid having a docker container where all your dependencies are not present and depend on the outside.   
