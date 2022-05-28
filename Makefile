proto:
	protoc pkg/pb/*.proto --go-grpc_out=. --go_out=.
server:
	go run cmd/main.go
up:
	docker-compose up -d
down:
	docker-compose down -v
docker-prune:
	docker system prune
exec:
	docker exec -it postgres14 psql -U root
start:
	docker-compose up -d; go run cmd/main.go