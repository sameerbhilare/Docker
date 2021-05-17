#########################################################################
# Dockerfile contains the instructions for Docker to build our own image.
# The image is just a template for container.
#########################################################################

# FROM allows you to build your image up on another base image.
FROM node:14

# By default, all those commands will be executed in the working directory of your Docker container and image.
# And by default, that working directory is the root folder in that container file system.
# WORKDIR tells Docker that all the subsequent commands will be executed from inside that folder.
WORKDIR /app

# COPY – which files that live on our local machine should go into the image
# Instead of /app you could also use ./ which means to the current working directory (/app as defined above) of docker container
# First only copy package.json bcz in next step we install the required packages based on package.json. And thereafer copying all files.
# This is very performant while rebuilding images as we want to re-install packages only when package.json is changed
# We don't want to re-install packages when any other files change. All this thanks to docker using caching.

# Whenever you build an image, Docker caches every instruction result, and when you then rebuild an image, 
# it will use these cached results if there is no need to run an instruction again. And this is called a layer based architecture.
COPY package.json /app

# install dependencies
RUN npm install

# COPY – which files that live on our local machine should go into the image
# Instead of /app you could also use ./ which means to the current working directory (/app as defined above) of docker container
COPY . /app

# VOLUME instruction - To create a volume.
# And this takes an array full of texts, full of strings and quotes,
# where we can specify the different paths inside of the container file system. 
# So, which are going to get used inside of our application code, which we want to persist.
# here "/app/feedback" is the path inside of the container file system.
# This creates anonymous volume.
# VOLUME [ "/app/feedback" ]

# set environment variables with default values
# the values can be overwritten with docker run command's --env option e.g. --env PORT=3000
ENV PORT 80

# When this container is started, we wanna expose a certain port (here 80) to our local system.
# EXPOSE this instruction only is added for documentation purposes. It doesn't really do anything.
# It is optional but best practice and recommended to add it to clearly document 
# to which ports will be exposed by your container.
EXPOSE $PORT

# Command to start the server
# RUN node server.js => This is incorrect bcz here we are trying run server on the image (not on the container)
# We only wanna start a server if we start a container based on this image.
# Also so that if we start multiple containers on the same image, we also start multiple node servers.

# CMD will NOT be executed when the image is created, but when a container is started based on the image.

# If you don't specify CMD, then CMD of the base image (mentioned in FROM above) will be executed.
# With no base image and CMD, you will get an error.
CMD [ "npm", "start" ]