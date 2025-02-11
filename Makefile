DOCKER_CMPS = srcs/docker-compose.yml
DATABASE_VOLUME = /home/nechaara/volumes/mysql
WORDPRESS_VOLUME = /home/nechaara/volumes/wordpress

all: build

build:
	mkdir -p $(DATABASE_VOLUME)
	mkdir -p $(WORDPRESS_VOLUME)
	docker-compose -f $(DOCKER_CMPS) up --build -d

restart:
	docker-compose restart

stop:
	docker-compose -f $(DOCKER_CMPS) stop

down:
	docker-compose -f $(DOCKER_CMPS) down

clean : down
	docker container prune --force

fclean : clean
	


