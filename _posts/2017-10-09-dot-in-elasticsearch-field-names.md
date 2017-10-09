---
layout: post
title: dot in elasticsearch field names
---

I worked with importing logs into elasticsearch, using logstash, and wanted to have a field named `Application.Name`.
I got no errors but the docs were not imported, furthermore I made logstash create an index, and it was created - but with not docs.
After talking to a colleague I found that you cannot have dots in field names.
