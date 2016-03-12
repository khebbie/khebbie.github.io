---
layout: post
title:  "Awk parameter extraction"
date:   2016-03-10 10:06:21 +0100
categories: awk
---
Today I learned that if you want to extract the nth column with awk you simply run this command    

{% highlight bash %}
awk -v x=n "{print $x}"
{% endhighlight %}

**Update**
[Johan Jensen][johan] made me aware that you can do this even simpler

{% highlight bash %}
awk "{print $2}"
{% endhighlight %}


[johan]: https://twitter.com/johankj

