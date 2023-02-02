# container to build application
FROM node:lts-alpine as builder

WORKDIR /usr/src/app

# for caching
COPY ./app/package*.json /usr/src/app/
RUN npm install

# build
COPY ./app /usr/src/app/
RUN npm run build

## nginx
FROM nginx:stable-alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf /usr/share/nginx/html/*

COPY --from=builder /usr/src/app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

# recipe images
RUN mkdir /recipeImages
COPY ./recipeImages/* /recipeImages

EXPOSE 80
