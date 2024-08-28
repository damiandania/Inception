
USER		=	$(shell whoami)
ROOT		=	home
PROJET_NAME	=	inception

IMAGES 		= 	$(shell docker images -q)
VOLUMES 	= 	$(shell docker volume ls -q)
NETWORKS	=	$(shell docker network ls -q)

all:
	mkdir -p /${ROOT}/$(USER)/data/wordpress
	mkdir -p /${ROOT}/$(USER)/data/mariadb
	docker compose -p $(PROJET_NAME) -f ./srcs/docker-compose.yml up -d

start:
	docker compose -p $(PROJET_NAME) -f ./srcs/docker-compose.yml start

stop:
	docker compose -p $(PROJET_NAME) -f ./srcs/docker-compose.yml stop

down:
	docker compose -p $(PROJET_NAME) -f ./srcs/docker-compose.yml down

logs:
	docker compose -p $(PROJET_NAME) -f ./srcs/docker-compose.yml logs

reboot: down all

clean: down
	sudo rm -rf /${ROOT}/$(USER)/data
	docker rmi -f $(IMAGES)
	docker volume rm $(VOLUMES)

fclean: clean
	docker system prune --volumes -f
	docker system prune -af

re: fclean all

.PHONY: all reboot down start stop clean logs fclean
