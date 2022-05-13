FROM ubuntu:18.04
WORKDIR /
ADD grafana.ini grafana.ini
ADD docker-compose.yml docker-compose.yml
RUN apt-get upgrade -y && apt-get update
RUN sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN sudo apt-get update
RUN apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
CMD docker-compose up


