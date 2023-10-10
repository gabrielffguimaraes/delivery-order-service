FROM eclipse-temurin:17-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring
VOLUME /tmp
EXPOSE 8080

ENV MYSQL_HOST=basic-database-instance.czbnty4vbz5i.sa-east-1.rds.amazonaws.com
ENV MYSQL_USERNAME=root
ENV MYSQL_PASSWORD=12345678


COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]