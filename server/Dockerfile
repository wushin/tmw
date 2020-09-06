FROM debian

RUN apt-get update && apt-get dist-upgrade -y
RUN apt install -y build-essential libsigc++-2.0-dev cmake libxml2-dev liblua5.1-0-dev libphysfs-dev zlib1g-dev gettext-base sqlite3 libsqlite3-dev

ADD . /server
WORKDIR /server

RUN cd /server/manaserv && cmake . && make install
