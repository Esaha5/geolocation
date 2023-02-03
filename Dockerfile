FROM openjdk:8
ADD /target/* biom.jar
EXPOSE 8081
ENTRYPOINT ["-java","-jar","biom.jar"]
