DROP DATABASE IF EXISTS malwares;
CREATE DATABASE malwares;
USE malwares;

DROP TABLE IF EXISTS malware;
CREATE TABLE malware (
  url text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES malware WRITE;

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/urls.txt' INTO TABLE malware; 

UNLOCK TABLES;

