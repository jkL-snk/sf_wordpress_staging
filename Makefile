start:
	docker-compose up -d
up: start

stop: down

down:
	docker-compose down

export:
	docker-compose run --rm wordpress-cli wp db export latest-backup.sql

backup: export
	cat webdav-backup.sh | docker-compose exec -T webdav-client sh
