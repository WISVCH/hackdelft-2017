FROM node:carbon AS builder
WORKDIR /src
COPY . .
RUN yarn
RUN yarn global add gulp
RUN gulp build
USER 1000
CMD node index.js
