FROM node:18-alpine

RUN mkdir /app
WORKDIR /app

COPY app/* /app/
#RUN mv env .env
RUN npm install

EXPOSE 3000


CMD ["npx", "ts-node", "app.ts"]
