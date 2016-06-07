---
layout: post
title: exit on error in bash
---

I have often cluttered my bash scripts with :
{% highlight  bash%}
if ! some_command ; then
    printf '%s\n' 'failed'
    exit 1
fi
{% endhighlight%}


However the other day on hackernews I found this excellent article:  

 [Shell script mistakes](http://www.pixelbeat.org/programming/shell_script_mistakes.html "Shell script mistakes")  
There are many good nuggets of knowledge in it, but the one thing that I really liked was the simple fact that you do not have to check for errors after every command that could possible fail.  
All you have to do is `set -e` at the top of the script and if a command returns other than 0, the script will exit.
