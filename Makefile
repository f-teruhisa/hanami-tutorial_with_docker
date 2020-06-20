default:up

init:
	docker-compose build

up:
	docker-compose up

preparedb:
	docker-compose run app bundle exec hanami db prepare

preparetestdb:
	docker-compose run app bundle exec hanami db prepare HANAMI_ENV=test

console:
	docker-compose run app bundle exec hanami console

rake:
	docker-compose run app bundle exec rake