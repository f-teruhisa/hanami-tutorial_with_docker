default:up

init:
	docker-compose build

up:
	docker-compose up

initdb:
	docker-compose run app bundle exec hanami db prepare HANAMI_ENV=test

rake:
	docker-compose run app bundle exec rake