all: up

#up:
#	mkdir -p /home/phuture/mgovinda/data/
#	mkdir -p /home/phuture/mgovinda/data/wordpress
#	docker-compose -f ./srcs/docker-compose.yml up --build -d

up:
	mkdir -p /home/mgovinda/data/
	mkdir -p /home/mgovinda/data/wordpress
	mkdir -p /home/mgovinda/data/mariadb
	docker compose -f ./srcs/docker-compose.yml up --build -d 



down:
	docker compose -f srcs/docker-compose.yml down -v

clean:
	docker compose -f srcs/docker-compose.yml down -v
	docker system prune -af

re: clean up
