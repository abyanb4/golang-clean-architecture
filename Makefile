.PHONY: docker-build
docker-build:
	docker compose build

.PHONY: service-up
service-up: 
	docker compose up

.PHONY: service-down
service-down:
	docker compose down
