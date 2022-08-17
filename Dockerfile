FROM vsamov/mysql-5.1.73

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3306

RUN mysqld --datadir=/var/lib/mysql --user=mysql

CMD ["mysqld", "--datadir=/var/lib/mysql", "--user=mysql"]