---
layout: post
title: Predicate in scala for comprehension
---

Today I made a for comprehension that had a predicate in it.  
The problem with predicates in for comprehensions, is that if they fail they give a pretty bad exception : "java.util.NoSuchElementException: Future.filter predicate is not satisfied"  
Finding a message like this in a log is not very useful. So I searched stack overflow for a solution, and [found it](http://stackoverflow.com/a/22289056/4189)

Now I did change the name of the function to ifNot instead of predicate, as this is more readable to me, so the code I ended up with was something like this:

{% highlight scala %}

def ifNot(condition: Boolean)(fail: Exception): Future[Unit] =
    if (condition) Future( () ) else Future.failed(fail)

  def updateJob(id: Int, updateJob: JobRow): Future[Option[JobRow]] = {
    for {
      exists <- jobsDao.jobExists(id)
      _ <- ifNot( exists && updateJob.id == id )(new Exception(s"Job with id: $id does not exist"))
      result <- jobsDao.update(id, updateJob) recoverWith {
        case ex: SlickException => Future.failed(new Exception(s"Unable to update job with id: $id"))
      }
    } yield (result)
  }

{% endhighlight %}
