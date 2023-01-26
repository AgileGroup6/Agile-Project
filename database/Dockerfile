FROM mariadb:10

ENV MARIADB_RANDOM_ROOT_PASSWORD=true

# init scripts, ONLY RUNS ON FRESH DATABASE
COPY ./init/ /docker-entrypoint-initdb.d/
