FROM docker/whalesay:latest
LABEL Name=my-app Version=0.1.0
RUN apt-get -y update && apt-get install -y fortunes
CMD /usr/games/fortune -a | cowsay
