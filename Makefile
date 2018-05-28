all:

github:
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

githubandheroku:
	git pull
	git add .
	git commit
	git push origin master
	git push heroku master

heroku_database:
	heroku pg:reset --confirm warframe-loot-wiki
	heroku run rails db:migrate
	heroku run rails db:seed
