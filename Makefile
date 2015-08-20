all:
	raco frog -vb

deploy:
	git add .
	git commit -m 'deploj'
	git push
