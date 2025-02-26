DOCKER_CMPS = srcs/docker-compose.yml
DATABASE_VOLUME = /home/nechaara/data/mysql
WORDPRESS_VOLUME = /home/nechaara/data/wordpress

all: build

build:
	mkdir -p $(DATABASE_VOLUME)
	mkdir -p $(WORDPRESS_VOLUME)
	sudo docker-compose -f $(DOCKER_CMPS) up --build -d

restart:
	sudo docker-compose restart

stop:
	sudo docker-compose -f $(DOCKER_CMPS) stop

down:
	sudo docker-compose -f $(DOCKER_CMPS) down

clean : down
	sudo docker container prune --force
	sudo docker volume prune --force
	sudo docker network prune --force

fclean : clean
	sudo docker image prune --all --force
	
re : fclean
	sudo docker-compose -f $(DOCKER_CMPS) up --build -d

