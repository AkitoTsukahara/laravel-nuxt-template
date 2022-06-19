up:
	docker-compose up -d
build:
	docker-compose build
stop:
	docker-compose stop
restart:
	docker-compose down
	docker-compose up -d
down:
	docker-compose down
destroy:
	docker-compose down --rmi all --volumes
ps:
	docker-compose ps
backend:
	docker-compose exec app ash
fresh:
	docker-compose exec app php artisan migrate:fresh --seed
seed:
	docker-compose exec app php artisan db:seed
tinker:
	docker-compose exec app php artisan tinker
dump:
	docker-compose exec app php artisan dump-server
test:
	docker-compose exec app php ./vendor/bin/phpunit
cache:
	docker-compose exec app composer dump-autoload -o
	docker-compose exec app php artisan optimize:clear
	docker-compose exec app php artisan optimize
cache-clear:
	docker-compose exec app php artisan optimize:clear
cs:
	docker-compose exec app ./vendor/bin/phpcs
cbf:
	docker-compose exec app ./vendor/bin/phpcbf
db:
	docker-compose exec db_master bash
sql:
	docker-compose exec db_master bash -c 'mysql -u $$MYSQL_USER -p$$MYSQL_PASSWORD $$MYSQL_DATABASE'
frontend:
	docker-compose exec front_app ash
npm:
	docker-compose exec front_app npm install
	docker-compose exec front_app npm run dev
