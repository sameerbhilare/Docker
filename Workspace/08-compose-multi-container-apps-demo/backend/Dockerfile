FROM node:14

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 80

ENV MONGODB_USERNAME=admin
ENV MONGODB_PASSWORD=admin

CMD ["npm", "start"]