all:	build

build:
	raco frog -vb

serve:
	raco frog -vs

install:
	raco pkg install frog
	raco pkg install --link ~/vitatummar/_src/utils

deploy:
	#git tag -a 'deploj'
	git push
