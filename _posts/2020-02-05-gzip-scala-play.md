---
layout: post
title: scala-play-gzip
---

Yesterday I was surprised by what it takes to make play gzip content:

According to the documentation, all you have to do is enable the gzip filter in your conf file:
https://www.playframework.com/documentation/2.7.x/GzipEncoding

like so :    
```
play.filters.enabled += "play.filters.gzip.GzipFilter"
```

However gzip was clearly not enabled on my site. So after a lot of googling and some head scratching I was lost.     
After a lot more thinking I added it to the Filters.scala file like so:
```
import javax.inject.Inject
import play.api.http.HttpFilters
import org.pac4j.play.filters.SecurityFilter
import play.filters.gzip.GzipFilter

class Filters @Inject()(securityFilter: SecurityFilter, gzipFilter: GzipFilter) extends HttpFilters {

  def filters = Seq(securityFilter, gzipFilter)

}
```
And voila - it worked.
