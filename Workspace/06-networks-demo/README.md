Container to container communication - way 2 (recommended) - using docker network
#step 1. create network using docker network command.

> docker network create app-net

#step 2. directly use name of the container (which is part of the the same network) in code. e.g. mongo. refer app.js

#step 3. start each container using SAME network name.
Start mongodb container

> docker run -d --network app-net mongo
> Note - we don't need to publish the port for this container as this (mongodb) container will be used by our application container (started in next step) i.e. container to container communication within the same network.

Start the app

> docker run --name favorites --network app-net -d --rm -p 3000:3000 favorites-node
