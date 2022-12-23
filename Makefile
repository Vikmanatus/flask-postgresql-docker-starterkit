include .env.dev

.PHONY: help
.DEFAULT_GOAL := help

help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

##
##Build tools:
##

install: 	  ## 🛠  Setup the Flask and Postgresql Docker container, install the requirements...
	@docker-compose build

##
##🐳 Start the Docker container with the flask application
##

start:         ## 🌶  Flask and hot-reload
	@docker-compose up flask-server

stop:		   ## 🔪 To stop the container
	@docker-compose down flask-server

##
##💻 Run the database
##
run-database:	## 💾 Run the Postgresql database inside Docker container
	@docker-compose up database

stop-database:	## 🔪 Stop Postgresql Docker container
	@docker-compose down database

sonar-scanner:
	@sonar-scanner  -Dsonar.host.url=${SONAR_URL} -Dsonar.login=${SONAR_TOKEN} -Dsonar.projectKey=${SONAR_PROJECT_KEY}