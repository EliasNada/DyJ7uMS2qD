ifeq ($(OS),Windows_NT)
    current_directory := $(shell echo %cd%)
else
    current_directory := $(shell pwd)
endif

.PHONY .SILENT:
image:
	docker build -t php8.2 .

.PHONY .SILENT:
run:
	docker run -d -p 8080:80 --name php php8.2

.PHONY .SILENT:
run-dev:
	docker run -d -p 8080:80 --name php -v $(current_directory):/var/www/app php8.2

.PHONY .SILENT:
run-docker:
	docker compose up --build -d db_local
	docker compose up --build -d app
	docker compose run --rm app php artisan passport:install --uuids --no-interaction --force
