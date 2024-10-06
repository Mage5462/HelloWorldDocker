FROM alpine:latest

WORKDIR /app
COPY . .

RUN apk add nodejs
RUN apk add npm
RUN npm install express
RUN npm install body-parser
RUN apk add mysql-client
ENV NODE_ENV=DEV

CMD [ "npm", "start" ]
