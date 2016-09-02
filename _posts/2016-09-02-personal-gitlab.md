---
layout: post
title: Personal gitlab
---
To run a personal gitlab, this command is great:  
`sudo docker run --detach    --hostname gitlab.example.com    --publish 443:443 --publish 82:80 --publish 22:22    --name gitlab    --restart always    --volume /srv/gitlab/config:/etc/gitlab:Z    --volume /srv/gitlab/logs:/var/log/gitlab:Z    --volume /srv/gitlab/data:/var/opt/gitlab:Z    gitlab/gitlab-ce:latest`

This uses the hostname "gitlab.example.com" change it to your own needs and remember to update your hosts file.  
