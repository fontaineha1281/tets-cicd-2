FROM node:18.14.0-alpine3.17 AS myapp

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install && npm install react-scripts@3.4.1 -g --silent 

COPY . ./

RUN npm run build

FROM nginx:latest
COPY --from=myapp /usr/src/app/build /usr/share/nginx/html