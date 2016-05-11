---
layout: post
title: add ecs instance to ecs cluster
---

If you need to add an ec instance to a ECS cluster, you can run the following command

{% highlight bash %}
#!/bin/bash
echo ECS_CLUSTER=your_cluster_name >> /etc/ecs/ecs.config

{% endhighlight%}

I got this info from:
http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html
