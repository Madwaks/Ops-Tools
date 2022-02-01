FROM alpine
RUN sudo apt-get -y update && sudo apt-get install -y sqlite3 libsqlite3-dev

RUN mkdir /db

ENTRYPOINT ["sqlite3"]
