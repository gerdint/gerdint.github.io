all:	build

build:
	raco frog -vb

build-dev:
	racket ../frog/frog/frog.rkt -Vbw

clean:
	raco frog -vc

clean-dev:
	racket ../frog/frog/frog.rkt -Vc

serve:
	raco frog -vws

install:
	raco pkg install frog
	raco pkg install --link ~/Vita\ tummar/_src/utils

deploy:
	#git tag -a 'deploj'
	git push
