FROM node:lts-alpine

COPY package.json package-lock.json ./

RUN npm ci

COPY src/ .

ENTRYPOINT node main.js
