FROM debian:buster

RUN apt-get update && apt-get -y install \
	bash \
	wget \
	curl \
	php \
	php-cgi \
	php-mysql \
	php-fpm \
	php-pdo \
	php-gd \
	php-mbstring \
	&& rm -rf /var/apt/lists/*

COPY 	./conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN	mkdir /run/php

COPY	./tools/init_wordpress.sh /usr/local/bin/
RUN	chmod +x /usr/local/bin/init_wordpress.sh
ENTRYPOINT ["/usr/local/bin/init_wordpress.sh"]

WORKDIR /var/www/html/

EXPOSE	9000

CMD ["/usr/sbin/php-fpm7.3", "-F"]



