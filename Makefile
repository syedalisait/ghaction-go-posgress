migrate_test_up:
	migrate -database "postgres://root:root@localhost:5432/db_test?sslmode=disable" -path ./migrations up

migrate_test_down:
	migrate -database "postgres://root:root@localhost:5432/db_test?sslmode=disable" -path ./migrations down

