---
layout: post
title:  "In golang it does not make sense to pass pointers to interfaces around"
date:   2016-03-10 10:06:21 +0100
categories: awk
---
In go if you have a method that takes an interface like so:
{% highlight go %}
func myFunction(reader io.Reader){
// your implementation here
}
{% endhighlight %}

You can not send a pointer to the interface from another function:
{% highlight go %}
func myOtherFunction(reader io.Reader){
myFunction(&reader) // <-- This is illegal.
}
{% endhighlight %}



For more info check out the [Things I wish][Things-i-wish]

[things-i-wish]: http://openmymind.net/Things-I-Wish-Someone-Had-Told-Me-About-Go/

