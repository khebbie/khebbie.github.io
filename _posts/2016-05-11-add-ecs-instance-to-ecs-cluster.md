---
layout: post
title: add ecs instance to ecs cluster
---

If you need to add an ec instance to a ECS cluster, you can run the following command

{% highlight bash %}
#!/bin/bash
yum install -y aws-cli
aws s3 cp s3://your_bucket_name/ecs.config /etc/ecs/ecs.config

{% endhighlight%}

I got this info from:
http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html
