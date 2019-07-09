#!/bin/bash

# this file clone all projects to local folder and execute

git clone https://github.com/albertoolivan/eureka-dijkstra.git

git clone https://github.com/albertoolivan/server-registry.git

git clone https://github.com/albertoolivan/rest-dto.git

git clone https://github.com/albertoolivan/rest-producer.git

git clone https://github.com/albertoolivan/rest-consumer.git

mvn install -f eureka-dijkstra/pom.xml

docker-compose -f eureka-dijkstra/docker-compose.yml up