---
layout: post
title: cleanup docker images
---

When using docker for instance on a CI server, where you create docker images, it can often times be a good idea to clean up the images every once in a while.  
So I decied to clean up the images that are weeks old and start with sales.  
Maybe one could do some automatic clean up of images older than a certain number of versions. But this was just a quick cleanup.

{% highlight bash %}
docker images | grep 'sales.* weeks ago' | awk {'printf ("%s:%s\n", $1, $2)'} |  xargs --no-run-if-empty docker rmi
{% endhightlight %}
