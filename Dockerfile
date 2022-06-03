FROM ubuntu:18.04
COPY . /app
WORKDIR /app
RUN apt-get update
RUN apt-get install g++ -y
RUN mkdir _builds
RUN g++ hello_world.cpp -o _builds/hello_world
RUN pwd
RUN ls
RUN ls _builds
ENTRYPOINT ["_builds/hello_world"]
