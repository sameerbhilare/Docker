#########################################################################
# Dockerfile contains the instructions for Docker to build our own image.
# The image is just a template for container.
#########################################################################

# FROM allows you to build your image up on another base image.
FROM python

# By default, all those commands will be executed in the working directory of your Docker container and image.
# And by default, that working directory is the root folder in that container file system.
# WORKDIR tells Docker that all the subsequent commands will be executed from inside that folder.
WORKDIR /app

# COPY – which files that live on our local machine should go into the image
# Instead of /app you could also use ./ which means to the current working directory (/app as defined above) of docker container
COPY . /app

# Command to start the server
# CMD will NOT be executed when the image is created, but when a container is started based on the image.
# The command 'python' will be available bcz of the base image.
# If you don't specify CMD, then CMD of the base image (mentioned in FROM above) will be executed.
# With no base image and CMD, you will get an error.
CMD [ "python", "rng.py" ]