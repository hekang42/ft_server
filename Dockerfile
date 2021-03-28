FROM	debian:buster
LABEL	maintainer="hekang@student.42seoul.kr"

RUN		apt update && apt install -y \
		nginx \
		mariadb-server \
		php-mysql \
		php-mbstring \
		openssl \
		vim \
		wget \
		php7.3-fpm

COPY	./srcs/run.sh			./
COPY	./srcs/default			./tmp
COPY	./srcs/wp-config.php	./tmp
COPY	./srcs/config.inc.php	./tmp

EXPOSE	80 443
CMD		bash run.sh