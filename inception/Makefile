all: up

#up:
#	mkdir -p /home/phuture/mgovinda/data/
#	mkdir -p /home/phuture/mgovinda/data/wordpress
#	docker-compose -f ./srcs/docker-compose.yml up --build -d

up:
	mkdir -p /home/phuture/mgovinda/data/
	mkdir -p /home/phuture/mgovinda/data/wordpress
	mkdir -p /home/phuture/mgovinda/data/mariadb
	COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=0 docker-compose -f ./srcs/docker-compose.yml build --parallel --no-cache --progress=plain --build-arg APT_FORCE_DNS_FIX=true
	docker-compose -f ./srcs/docker-compose.yml up -d



down:
	docker-compose -f srcs/docker-compose.yml down -v

clean:
	docker-compose -f srcs/docker-compose.yml down -v
	docker system prune -af

re: clean up