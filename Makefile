migrateup:
	migrate -database "postgres://root:root@localhost:5432/rain-db?sslmode=disable" -path ./migrations up

migratedown:
	migrate -database "postgres://root:root@localhost:5432/rain-db?sslmode=disable" -path ./migrations down

