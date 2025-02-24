FROM openjdk:21-oracle

WORKDIR /app

EXPOSE 25565/tcp

CMD ["/bin/bash", "startserver-java9.sh"]

