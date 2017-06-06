FROM node:7.10.0
MAINTAINER kaiyadavenport@gmail.com
WORKDIR /app
COPY ./package.json /app/package.json
RUN npm install
COPY ./src /app/src
WORKDIR /app
ENTRYPOINT ["bash", "src/run.sh"]