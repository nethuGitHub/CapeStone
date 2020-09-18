FROM openjdk
ADD ./target/bank##2.1.0.local.war app.war
ENTRYPOINT ["java","-jar","/app.jar"]
