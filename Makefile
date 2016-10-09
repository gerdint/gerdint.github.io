all:	build

build:
	raco frog -vb

build-dev:
	racket ../frog/frog/frog.rkt -vb

clean:
	raco frog -vc

clean-dev:
	racket ../frog/frog/frog.rkt -vc

serve:
	raco frog -vws

install:
	raco pkg install frog
	raco pkg install --link ~/vitatummar/_src/utils

deploy:
	#git tag -a 'deploj'
	git push
