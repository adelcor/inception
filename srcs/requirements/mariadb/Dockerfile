FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools /var/www/
COPY ./tools/init_db.sh /usr/local/bin/
RUN service mysql start
RUN chmod +x /usr/local/bin/init_db.sh

CMD ["sh","-c", "./usr/local/bin/init_db.sh > /var/www/init_db.sql && mysqld --init-file=/var/www/init_db.sql"]
