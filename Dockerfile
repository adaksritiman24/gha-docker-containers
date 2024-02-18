FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.dbvp9y8.mongodb.net
ENV MONGODB_USERNAME sritiman
ENV MONGODB_PASSWORD HtbOaL0BYotyXy9l

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]