all:
	raco frog -vb

setup:
	raco pkg install --link ~/vitatummar/_src/utils

deploy:
	#git tag -a 'deploj'
	git push
