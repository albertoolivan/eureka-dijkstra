# eureka-dijkstra

eureka-dijkstra is a parent project composed of four projects:

- [service-registry](https://github.com/albertoolivan/eureka-dijkstra): server [spring cloud netflix](https://spring.io/projects/spring-cloud-netflix) server to registers other clients
- [rest-dto](https://github.com/albertoolivan/rest-dto): common Dtos between rest projects
- [rest-producer](https://github.com/albertoolivan/rest-producer): client rest [secured](https://spring.io/projects/spring-security) with database and [dijkstra algorithm](https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm) ( [thanks vogella!](https://www.vogella.com/tutorials/JavaAlgorithmsDijkstra/article.html) )
- [rest-consumer](https://github.com/albertoolivan/rest-consumer): client rest ask server-registry to call rest-producer (possible to balance with more than one rest-producer)

![Alt text](images/220px-Dijkstra_Animation.gif?raw=true "Dijkstra algorithm")

You can download **`run-eureka.sh`** and execute to build all project.

![Alt text](images/eureka-dijkstra.png?raw=true "Eureka Dijkstra")


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
$ mvn install -f eureka-dijkstra/pom.xml
```

2) Build and start up with docker-compose.yml 

```
$ docker-compose -f eureka-dijkstra/docker-compose.yml up
```

3) Browse this urls

##server-registry

http://localhost:8761


![Alt text](images/server-registry.png?raw=true "server-registry")


##rest-producer

http://localhost:8098

http://localhost:8098/city/info/MAD

http://localhost:8098/city/all

http://localhost:8098/city/itinerary-short?cityOriginId=MAD&cityDestinationId=BER&departureTime=2019-07-10T01:30:00.000Z

http://localhost:8098/city/itinerary-less?cityOriginId=MAD&cityDestinationId=BER&departureTime=2019-07-10T01:30:00.000Z

http://localhost:8098/city-distance?cityOriginId=MAD

http://localhost:8098/swagger-ui.html
```
user: user_rest
password: paSs123_w0rd
```

![Alt text](images/rest-producer.png?raw=true "rest-producer")

##rest-consumer

http://localhost:8082

http://localhost:8082/city/all

http://localhost:8082/city/info/MAD

http://localhost:8082/find-itinerary-short?cityOriginId=MAD&cityDestinationId=BER&departureTime=2019-07-10T01:30:00.000Z

http://localhost:8082/find-itinerary-less?cityOriginId=MAD&cityDestinationId=BER&departureTime=2019-07-10T01:30:00.000Z

http://localhost:8082/swagger-ui.html

![Alt text](images/rest-consumer.png?raw=true "rest-consumer")