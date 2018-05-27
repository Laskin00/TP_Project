all:
	git pull
	git add .
	git commit
	git push origin master

database:
	rails db:drop
	rails db:migrate
	rails db:seed

heroku:
	git pull
	git add .
	git commit
	git push heroku master
