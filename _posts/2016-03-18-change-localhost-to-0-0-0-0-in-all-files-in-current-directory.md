---
layout: post
title: change localhost to 0.0.0.0 in all files in current directory
---

{% highlight bash %}
sudo find . -type f -exec sed -i.bak "s/localhost/0.0.0.0/g" {} \;
{% endhighlight %}
