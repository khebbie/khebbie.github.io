---
layout: post
title: develop inside a container
---

Sometimes it is usefull to do your development inside of a container. I find it useful to have a app container linked to a database container. And to have the current directory mapped inside the container.  
To give an example, here is a scala container.   

{% highlight bash%}
#!/bin/bash
docker run -p 9001:9000 --name scala-dev --link datbase-container -v $(pwd):/tmp/src -it khebbie/scala-sbt /bin/bash

{% endhightlight %}
