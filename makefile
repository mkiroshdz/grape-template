.PHONY: all - # Builds images and start the containers
all: build start

.PHONY: list - # Displays the list of available commands
list:
	@grep '^.PHONY: .* #' Makefile | sed 's/\.PHONY: \(.*\) # \(.*\)/\1 \2/' | expand -t20

.PHONY: build - # Builds the images
build:
	docker-compose build app

.PHONY: up - # Runs the containers in foreground
up:
	docker-compose run --service-ports app

.PHONY: start - # Runs the containers in background
start:
	docker-compose run -d --service-ports app

.PHONY: stop - # Stops the containers
stop:
	docker-compose stop app

.PHONY: clear - # Removes all the entities related to the build
clear:
	docker-compose down app