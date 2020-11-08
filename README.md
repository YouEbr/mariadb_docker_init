# Initialize MariaDB docker container
This is a simple example on ways to initialize a MariaDB container when it is booting up for the first time.

##### simple_scipt.sh

A simpel bask scirpt that will be executed at fist run. It simply prints out 3 lines.


##### insert_with_data.sql

SQL commands that are executed at first run. It creates a database (urllookup) and table (malware) and populates it via an insert command.


##### load_from_urls.txt.sql

Similar to "insert_with_data.sql", but loads the data from "urls.txt" to populated its table(malware) in database(malwares).


##### Dockerfile

Dockerfile to create a new mariadb image with init scripts loaded on it. Upon running the image, all the scripts are executed.


#### How to run?

1- Using Dockerfile

        docker build -t my_mariadb .
        docker run --name test_mariadb my_mariadb

Now connect to running container by:

        docker exec -it test_mariadb bash

 and look for "urllookup" and "malwares" databases (mysql -uroot)


2- Running it on command line:

        docker run --name test_mariadb -e ALLOW_EMPTY_PASSWORD=yes --volume=ABSOLUTEPATH:/docker-entrypoint-initdb.d/:ro  bitnami/mariadb

ABSOLUTEPATH is the absolute path to the directory that contains simple_scipt.sh, insert_with_data.sql, load_from_urls.txt.sql, and urls.txt
