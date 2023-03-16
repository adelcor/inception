FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

EXPOSE 3306

# COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools /var/www/
COPY ./tools/init.sh /usr/local/bin/
RUN service mysql start &&  mysql < /var/www/initial_db.sql && rm -f /var/www/initial_db.sql;
#RUN chmod +x /usr/local/bin/init.sh

#ENTRYPOINT [ "/usr/local/bin/init.sh" ]
CMD ["mysqld"]
