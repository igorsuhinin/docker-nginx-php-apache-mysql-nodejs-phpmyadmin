#!make
include .env
export

DOCKER_COMPOSE=docker-compose -p $(APP_NAME) -f "etc/docker-compose/docker-compose.run.yaml"

.DEFAULT_GOAL := help

help:			## Shows this help messages
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:			## Builds Docker images for the project
	@docker-compose -f "etc/docker-compose/docker-compose.build.yaml" build

up:				## Starts all containers
	@${DOCKER_COMPOSE} up

down: 			## Stops all containers
	@${DOCKER_COMPOSE} down
