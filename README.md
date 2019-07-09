# eureka-dijkstra

Hello this is a parent project related with other four:

- service-registry: eureka server to registers other services
- rest-dto: common Dtos between rest projects
- rest-producer: rest secured with database and dijkstra algorithm
- rest-consumer: rest to call rest-producer if is connected to eureka server

You can use `run-eureka.sh` (outside of this project) or follow this steps to test application

![Alt text](eureka-dijkstra.png?raw=true "Eureka Dijkstra")


0) Git clone projects

```
$ git clone https://github.com/albertoolivan/eureka-dijkstra.git
$ git clone https://github.com/albertoolivan/server-registry.git
$ git clone https://github.com/albertoolivan/rest-dto.git
$ git clone https://github.com/albertoolivan/rest-producer.git
$ git clone https://github.com/albertoolivan/rest-consumer.git
```

1) Install parent project

```
$ cd eureka-dijkstra
$ mvn install
```

2) Build and start up with docker-compose.yml 

```
$ docker-compose up
```

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

![Alt text](server-registry.png?raw=true "server-registry")

![Alt text](rest-consumer.png?raw=true "rest-consumer")