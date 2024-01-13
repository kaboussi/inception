all:
	@docker compose -f srcs/docker-compose.yml up --build &&\
	docker cp webserver:/etc/ssl/nginx/inception.crt ~/

down:
	@docker compose -f srcs/docker-compose.yml down

fclean: down
	@docker compose -f srcs/docker-compose.yml down -v --rmi all --remove-orphans

re: down all
