FROM node:7.10.0
MAINTAINER kaiyadavenport@gmail.com
WORKDIR /app
COPY ./package.json /app/package.json
RUN npm install
COPY ./src /app/src
COPY ./migrations /app/migrations
COPY ./webpack.config.js /app/webpack.config.js
COPY .env /app/.env
ENTRYPOINT ["npm", "run"]
CMD ["start"]