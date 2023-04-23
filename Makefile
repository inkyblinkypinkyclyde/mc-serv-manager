setup:
	docker run --name mc-serv-pg -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres

create-db:
	docker exec -it mc-serv-pg psql -U postgres -c "CREATE DATABASE mc_serv_db;"

drop-db:
	docker exec -it mc-serv-pg psql -U postgres -c "DROP DATABASE mc_serv_db;"

teardown:
	docker stop mc-serv-pg
	docker rm mc-serv-pg

connect-db:
	psql postgresql://postgres:postgres@localhost:5432/mc_serv_db