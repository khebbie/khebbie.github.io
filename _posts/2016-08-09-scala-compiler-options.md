---
layout: post
title: scala compiler options
---

The scala compiler has some useful flags, that can do some linting on unused variables, imports etc.
{% highlight scala%}
scalacOptions := Seq("-unchecked", "-deprecation", "-encoding", "UTF-8", "-Xfatal-warnings", "-Xlint:missing-interpolator", "-Ywarn-unused", "-Ywarn-dead-code", "-Ywarn-numeric-widen")
{% endhighlight %}

I found these flags on this very usefull blog post:
http://pedrorijo.com/blog/scala-compiler-review-code-warnings/
