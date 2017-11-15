jekyl:
	docker run -it -v $$PWD:/srv/jekyll -p 4000:4000 jekyll/jekyll /bin/bash
