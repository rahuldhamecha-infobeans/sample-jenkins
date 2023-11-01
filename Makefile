setup:
	@make build
	@make up 
	@make composer-update
build:
	docker-compose build --no-cache --force-rm
stop:
	docker-compose stop
up:
	docker-compose up -d
composer-update:
	docker exec laravel-docker1 bash -c "composer update"
data:
	docker exec laravel-docker1 bash -c "php artisan migrate"
	docker exec laravel-docker1 bash -c "php artisan db:seed"
monitor:
	docker exec laravel-docker1 bash -c "codecarbon init"
	docker exec laravel-docker1 bash -c "codecarbon monitor"

