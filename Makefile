all:
	raco frog -vb

deploy:
	git commit -m 'deploj'
	git push
