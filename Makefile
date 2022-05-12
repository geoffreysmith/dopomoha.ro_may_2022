APP_NAME=dopomoha
PORT=1337

# DOCKER TASKS
# Build the container
build: ## Build the container
	docker build --pull --rm -f "assets/Dockerfile" -t  $(APP_NAME):latest "assets"

build-nc: ## Build the container without caching
	docker build --no-cache -t $(APP_NAME) ./assets/

run:
	docker run -i -t --rm -p=$(PORT):$(PORT) -v=${PWD}/app:/srv/app --name="$(APP_NAME)" dopomoha

inspect:
	docker exec -it ${APP_NAME} sh