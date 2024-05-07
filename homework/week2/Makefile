include .env

build:
	docker compose build

run:
	docker compose up -d

stop:
	docker compose down

restart:
	docker compose down
	docker compose up -d

logs:
	docker compose logs -f

help:
	@echo "build: Build the docker image"
	@echo "run: Run the docker container"
	@echo "stop: Stop the docker container"
	@echo "logs: Show the logs of the docker container"
	@echo "help: Show this help message"

.PHONY: build run stop restart logs help
