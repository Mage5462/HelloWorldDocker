FROM alpine:latest

WORKDIR /app
COPY . .
COPY demoservice.js /app/demoservice.js

RUN apk add nodejs
RUN apk add npm
RUN npm install express
RUN npm install body-parser
RUN npm install mysql
ENV NODE_ENV=DEV

CMD [ "node", "/app/demoservice.js" ]
