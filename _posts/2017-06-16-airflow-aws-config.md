---
layout: post
title: airflow aws config
---

When connecting airflow to s3 you cannot use esc task roles.   
But you can add the following configuration to your connection extras:
`{"region_name": "eu-west-1", "config_format":"aws" }`

This will tell airflow to use the aws configuration, you can then let it fx. use the ecs instance role.
