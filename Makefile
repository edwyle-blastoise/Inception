all:
	docker-compose -f srcs/docker-compose.yaml up --build -d
start:
	docker-compose -f srcs/docker-compose.yaml start
down:
	docker-compose -f srcs/docker-compose.yaml down
stop:
	docker-compose -f srcs/docker-compose.yaml stop
clean:
	docker stop $$(docker ps -a -q)
	docker rm $$(docker ps -a -q)
	docker rmi $$(docker images -a -q)
vclean:
	docker volume rm $$(docker volume ls -q)
nginx:
	docker exec -it nginx bash
mariadb:
	docker exec -it mariadb bash
wordpress:
	docker exec -it wordpress bash