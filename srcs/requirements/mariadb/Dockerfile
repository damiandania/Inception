FROM		debian:bullseye

RUN			apt update
RUN			apt install mariadb-server mariadb-client procps -y

RUN			mkdir -p /var/run/mysql
RUN			chown mysql:mysql /var/run/mysql
RUN			chmod 755 /var/run/mysql

RUN			mkdir -p /var/lib/mysql
RUN			chown mysql:mysql /var/lib/mysql
RUN			chmod 755 /var/lib/mysql

COPY		conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY		./conf/mariadb.sh /mariadb.sh
RUN			chmod 755 /mariadb.sh

EXPOSE		3306

ENTRYPOINT	["/mariadb.sh"]
