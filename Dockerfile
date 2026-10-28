FROM europe-north1-docker.pkg.dev/cgr-nav/pull-through/nav.no/jre:openjdk-21
ENV TZ="Europe/Oslo"
WORKDIR /app
COPY /api/target/emottak-kafka-manager.jar app.jar
COPY /web-app/dist /app/public
EXPOSE 8080
USER nonroot
ENTRYPOINT ["java", "-jar", "app.jar"]
