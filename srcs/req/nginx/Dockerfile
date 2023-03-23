FROM	debian:buster

RUN	apt-get update
RUN	apt-get install -y nginx
RUN	apt-get install -y openssl

RUN	mkdir /etc/nginx/ssl
RUN	openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
	-out /etc/nginx/ssl/adel-cor.crt \
	-keyout /etc/nginx/ssl/adel-cor.key \
	-subj "/C=ES/ST=Bilbao/L=Bilbao/O=42/OU=adel-cor/CN=adel-cor/"
COPY	./conf/nginx.conf /etc/nginx/conf.d

RUN	mkdir -p /run/nginx

EXPOSE	443

CMD	["nginx", "-g", "daemon off;"]

	
