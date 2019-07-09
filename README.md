# eureka-dijkstra

Hello this is a parent project related with other four:

service-registry
rest-dto
rest-producer
rest-consumer

###########################
1.1) Install parent project (H2 database)

$ mvn install

2.1) Build and start up with docker-compose.yml (H2 database),

$ docker-compose up

###########################
1.1) Install parent project (postgres database)

$ mvn install -P postgres

2.2) Rename docker-compose-postgres.yml (postgres database), 

$ mv docker-compose.yml docker-compose-h2.yml
$ mv docker-compose-postgres.yml docker-compose.yml
$ docker-compose up

###########################
3) Browse this urls

[server-registry]
http://localhost:8761

[rest-producer]
http://localhost:8098
http://localhost:8098/city/info/MAD
http://localhost:8098/city/all
http://localhost:8098/city/itinerary-short?cityOriginId=MAD&cityDestinationId=BER
http://localhost:8098/city/itinerary-less?cityOriginId=MAD&cityDestinationId=BER
http://localhost:8098/city-distance?cityOriginId=MAD
http://localhost:8098/swagger-ui.html
user: user_rest
password: paSs123_w0rd

[rest-consumer]
http://localhost:8082
http://localhost:8082/city/all
http://localhost:8082/city/info/MAD
http://localhost:8082/find-itinerary-short?cityOriginId=MAD&cityDestinationId=BER
http://localhost:8082/find-itinerary-less?cityOriginId=MAD&cityDestinationId=BER
http://localhost:8082/swagger-ui.html