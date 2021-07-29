all:
	docker-compose -f srcs/docker-compose.yaml build
	docker-compose -f srcs/docker-compose.yaml up -d
start:
	docker-compose -f srcs/docker-compose.yaml start
down:
	docker-compose -f srcs/docker-compose.yaml down
stop:
	docker-compose -f srcs/docker-compose.yaml stop
restart:
	docker-compose -f srcs/docker-compose.yaml stop
	docker-compose -f srcs/docker-compose.yaml up -d
clean:
	docker stop $$(docker ps -a -q)
	docker rm $$(docker ps -a -q)
	docker rmi $$(docker images -a -q)
ps:
	docker-compose ps
console-nginx:
	docker exec -it nginx bash
console-mariadb:
	docker exec -it mariadb bash
console-wordpress:
	docker exec -it wordpress bash