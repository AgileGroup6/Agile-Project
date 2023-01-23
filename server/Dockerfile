FROM node:lts-alpine

WORKDIR /usr/src/app

ENV NODE_ENV production

# caching
COPY ./app/package*.json ./
RUN npm ci --omit=dev # build without dev dependencies

# copy project
COPY ./app /usr/src/app

# api port
EXPOSE 3000

# permissions are lowered in docker-compose

# run server
CMD ["node", "server.js"]
