FROM debian:buster

RUN apt update && apt install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN service mysql start && \
    mysql -e "CREATE DATABASE wordpress;" && \
    mysql -e "CREATE USER 'wpuser'@'%' IDENTIFIED BY 'wppassword';" && \
    mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'%';" && \
    mysql -e "FLUSH PRIVILEGES;"

EXPOSE 3306

CMD ["mysqld"]

COPY ./conf/init.sql /docker-entrypoint-initdb.d/init.sql

