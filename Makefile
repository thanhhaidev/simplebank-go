migrateup:
	@echo "Migrating up..."
	migrate -path db/migration -database "postgresql://postgres:root@192.168.0.109:5432/simple_bank?sslmode=disable" -verbose up

migratedown:
	@echo "Migrating down..."
	migrate -path db/migration -database "postgresql://postgres:root@192.168.0.109:5432/simple_bank?sslmode=disable" -verbose down

sqlc:
	@echo "Generating SQLC..."
	sqlc generate

test:
	@echo "Running tests..."
	go test -v -cover ./...

.PHONY: migrateup migratedown
