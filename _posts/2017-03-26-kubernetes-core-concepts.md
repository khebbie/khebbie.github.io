---
layout: post
title: kubernetes core concepts
---

This will cover the core concepts in kubernetes, mostly for my own use.  
Since I know AWS ECS pretty well I will compare som of the concepts with that.  
I see that we have two sides:  
The ops side and the devs side.  

# Dev

* a pod is like a task definition, in that it defines one or more containers, a pod can be restricted in its resource use.
* a replica set should mostly not be used directly but is used by deployments to scale the number of pods up and down.
* a deployment is a declarative way to tell kubernetes how you want the world to look like, the deployment controller will then make it happen
* a service is a way to expose the pods in a deployment to the world outside kubernetes. you can think of it a bit like a load balancer, that hides the excact location of the downstream websites
* an annotation is used to keep all the different elements organized and when you declare something about a kubernetes element you often select the corresponding element with an annotation
* an ingress is a way to give access to a service to the outside world, by exposing an ip address that is not internal to the cluster
* a job is a one time run of a pod
* a namespace is a way to divide a kubernetes cluster into multiple virtual clusters and hence seperate the services.
* a persistent volume is a way to give a pod access to disk


# OPS

* cluster a kubernetes cluster where one can deploy applications, this is basically what kubernetes is .
* node a computer in a kubernetes cluster
* a secret is a way to share for instance a database password
* a cron job is like a line in a crontab
* a network policy is like a firewall that can be used to define how pods are allowed to communicate
* a Pod Security Policy controls the actions a pod can perform
