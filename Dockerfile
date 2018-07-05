FROM ubuntu
RUN apt-get update -y
RUN apt-get install -y wget 
RUN apt-get install -y cowsay
RUN mkdir /app
COPY motd /app
COPY motd /etc/motd
RUN echo "HELLO" | /usr/games/cowsay >> /etc/motd
WORKDIR /app
RUN touch deleteme
CMD ["Hi John"]
ENTRYPOINT ["/usr/games/cowsay"]
