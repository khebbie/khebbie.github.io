---
layout: post
title: docker for local elk analytics
---

I had a need to do a quick analytics and search on some log files from aws.

So what I did was load a docker compose setup from github.
I then netcat'ed the log files into elk and I had a full elk setup.

The github repo I used was: https://github.com/deviantony/docker-elk

All I had to do was run `docker compose up -d` and I had a working elk stack.

I then grabbed the files from aws and netcat'ed them to the elk inside the docker container `nc localhost 5000 < a5637c92bfc6-stdouterr.log`

I made a small script to netcat all log files in a directory 

{% highlight bash %}
#!/bin/bash
for f in *.log
do
 echo "Processing $f"
 # do something on $f
 nc localhost 5000 < $f
done

{% endhighlight %}



I BTW add a small configuration change to the 'logstash/config/logstash.conf' file.
In the 'input' group I add `codec => "json"` since I import json.


