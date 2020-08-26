FROM debian:latest

RUN apt-get update && apt install -y build-essential qt5-default qtdeclarative5-dev qml-module-qtquick-controls qml-module-qtquick2 qml-module-qtquick-window2 qbs make dpkg-dev zlib1g-dev

ADD ./debian/ /debian
ADD ./src/ /source
WORKDIR /source
