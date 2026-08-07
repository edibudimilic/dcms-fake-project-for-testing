FROM eclipse-temurin:21-jdk AS build
WORKDIR /src
COPY App.java .
RUN javac App.java && jar cfe /out.jar App App*.class

FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /out.jar /app/app.jar
EXPOSE 3000
CMD ["java","-jar","/app/app.jar"]
