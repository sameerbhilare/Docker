##Without Docker Compose =>

1. Start mongodb container

   > docker run --rm -d --name mongodb -v data:/data/db --network goals-net -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=admin mongo
   > OR
   > docker run --rm -d --name mongodb -v data:/data/db --network goals-net mongo

2. Start node backend container

   > docker run --rm -d --name goals-backend --network goals-net -p 80:80
   > -v /c/Users/Sameer/DockerMount/08-compose-multi-container-apps-demo/backend:/app -v logs:/app/logs -v /app/node_modules goals-node

3. Start react frontend container
   > docker run --rm -d --name goals-frontend --network goals-net -it -p 3000:3000 -v
   > /c/Users/Sameer/DockerMount/08-compose-multi-container-apps-demo/frontend/src:/app/src goals-react

##With Docker Compose =>

1. To only build (our custom images) without starting containers
   This will build images for backend and frontend.

   > docker-compose build

2. To build and start
   This will build images for backend and frontend (if images don't already exist) and will start all docker containers (in attached mode).

   > docker-compose up

   This will always build images for backend and frontend and will start all docker containers (in attached mode).

   > docker-compose up --build

   This will build images for backend and frontend and will start docker containers in detached mode.

   > docker-compose up -d

3. To stop
   > docker-compose down
