FROM node:14

# we can use the same WORKDIR name because each container is different so it never clashes.
WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 3000

CMD ["npm", "start"]