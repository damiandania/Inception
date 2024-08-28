#!/bin/bash

service mariadb start
sleep 1

if [ ! -d "/var/lib/mysql/wordpress" ]; then
	echo "Creating database..."
	mariadb -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
	echo "Creating user..."
	mariadb -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
	echo "Granting privileges..."
	mariadb -e "GRANT ALL PRIVILEGES ON *.* TO \`root\`@'%' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
	mariadb -e "GRANT ALL PRIVILEGES ON ${SQL_DATABASE}.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
	echo "Flushing privileges..."
	mariadb -e "FLUSH PRIVILEGES;"
	echo "Database created."
fi

echo "Shutting down MariaDB server..."
mysqladmin -u root -p${SQL_ROOT_PASSWORD} shutdown

echo "Starting MariaDB server..."
exec mysqld_safe

echo "MariaDB started."
