FROM gradle:7.5.1-jdk11-alpine AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

FROM eclipse-temurin:11-jre-alpine AS run
EXPOSE 8000
RUN mkdir /app
COPY --from=build /home/gradle/src/build/distributions/http4k-todo-backend-1.0-SNAPSHOT.tar /app/
RUN cd /app/ && tar -xf http4k-todo-backend-1.0-SNAPSHOT.tar --strip-components=1 && rm http4k-todo-backend-1.0-SNAPSHOT.tar
ENTRYPOINT /app/bin/http4k-todo-backend
