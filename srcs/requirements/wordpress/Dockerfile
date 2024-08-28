FROM		debian:bullseye

RUN			apt update
RUN			apt install -y wget \
			php7.4 \
			php-fpm \
			php-mysql \
			mariadb-client

RUN			wget https://wordpress.org/latest.tar.gz
RUN			mkdir -p /var/www/
RUN			tar -xzf latest.tar.gz -C /var/www/
RUN			rm latest.tar.gz
RUN			chmod 755 /var/www/wordpress
RUN			chown -R root:root /var/www/wordpress

RUN			wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN			chmod +x wp-cli.phar
RUN			echo "listen=9000" >> /etc/php/7.4/fpm/pool.d/www.conf

COPY		./conf/wordpress.sh /wordpress.sh
RUN			chmod 755 /wordpress.sh

EXPOSE		9000

ENTRYPOINT	["./wordpress.sh"]
