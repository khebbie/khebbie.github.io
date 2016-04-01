---
layout: post
title: find out who is listening on a port on linu
---
On a linux system it is often needed to find out which program is listening on a port.   
Or maybe you need to check if anyone is listening on a port.  
The following script can do this.  

{% highlight bash %}
netstat -tulpn
{% endhighlight %}
