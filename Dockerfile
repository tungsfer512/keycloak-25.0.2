FROM openjdk:17.0.2-bullseye


RUN apt update
RUN apt upgrade -y
RUN apt install -y sshpass sudo nano

WORKDIR /opt/keycloak/bin

COPY . /opt/keycloak

RUN ./kc.sh build

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]