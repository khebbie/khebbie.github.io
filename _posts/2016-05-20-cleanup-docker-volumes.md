---
layout: post
title: cleanup docker volumes
---

I find that docker volumes take up more and more space on my computer, and I wish to cleanup unused space every once in a while.

I found this fine guide:  
https://github.com/chadoe/docker-cleanup-volumes

To clean up unused volumes, simply run this command:  
{% highlight bash %}
docker volume rm $(docker volume ls -qf dangling=true)
{% endhighlight %}
