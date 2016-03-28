FROM maven:3.3.3-jdk-8
WORKDIR /project
# make sure apt is up to date
RUN apt-get update
# install nodejs and npm
RUN apt-get install -y nodejs npm git git-core
ENTRYPOINT ["mvn"]
CMD ["-h"]

