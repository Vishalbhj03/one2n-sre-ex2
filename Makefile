APP_NAME = SpringBootRestAPIProject
PORT ?= 8087

IMAGE_NAME = student-rest-api
VERSION ?= 1.0.0

.PHONY: build run test migrate clean docker-build docker-run docker-run-envfile

# Maven Commands

build:
	mvn -q -DskipTests package

run:
	mvn spring-boot:run

test:
	mvn -q test

migrate:
	mvn -q flyway:migrate

clean:
	mvn -q clean

# Docker Commands 

docker-build:
	docker build -t $(IMAGE_NAME):$(VERSION) .

docker-run:
	docker run --rm \
		-p $(PORT):8087 \
		-e DB_URL="$(DB_URL)" \
		-e DB_USERNAME="$(DB_USERNAME)" \
		-e DB_PASSWORD="$(DB_PASSWORD)" \
		$(IMAGE_NAME):$(VERSION)

docker-run-envfile:
	docker run --rm \
		-p $(PORT):8087 \
		--env-file .env \
		$(IMAGE_NAME):$(VERSION)
