Without Docker Compose =>
1. Start mongodb container

   > docker run --rm -d --name mongodb -v data:/data/db --network goals-net -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=admin mongo
   > OR
   > docker run --rm -d --name mongodb -v data:/data/db --network goals-net mongo

2. Start node backend container

   > docker run --rm -d --name goals-backend --network goals-net -p 80:80
   > -v /c/Users/Sameer/DockerMount/07-multi-container-apps-demo/backend:/app -v logs:/app/logs -v /app/node_modules goals-node

3. Start react frontend container
   > docker run --rm -d --name goals-frontend --network goals-net -it -p 3000:3000 -v
   > /c/Users/Sameer/DockerMount/07-multi-container-apps-demo/frontend/src:/app/src goals-react
