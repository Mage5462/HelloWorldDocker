From node:latest

WORKDIR /app
COPY . .

RUN apk add nodejs
RUN apk add npm
RUN npm install express
RUN npm install body-parser
ENV NODE_ENV=DEV

CMD [ "npm", "start" ]
