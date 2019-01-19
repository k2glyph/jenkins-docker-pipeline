FROM node
MAINTAINER medineshkatwal@gmail.com


COPY . myapp/

WORKDIR myapp/

EXPOSE 3000

ENTRYPOINT node server.js