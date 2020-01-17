SHELL := /usr/bin/env bash

.DEFAULT: help
.PHONY: help
ifndef VERBOSE
.SILENT:
endif

rebuild: prune build-clean up

clean:
	docker system prune -a
	docker volume rm $(docker volume ls -qf dangling=true)

down:
	docker-compose down

up:
	docker-compose up

prune: down
	docker volume prune -f

build-clean:
	docker-compose build --no-cache --parallel
