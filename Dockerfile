FROM bitnami/mariadb:latest

ENV ALLOW_EMPTY_PASSWORD=yes

COPY *.sh      /docker-entrypoint-initdb.d/
COPY *.sql     /docker-entrypoint-initdb.d/
COPY urls.txt  /docker-entrypoint-initdb.d/
