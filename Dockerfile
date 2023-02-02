FROM openjdk:8
ADD target/* biom.jar
EXPOSE 8081
ENTRYPORT ["-java","-jar","biom.jar"]
