.PHONY: docker-build
docker-build:
	docker compose build

.PHONY: service-up
service-up: 
	docker compose -f docker-compose.yml up --build

.PHONY: service-down
service-down:
	docker compose down
