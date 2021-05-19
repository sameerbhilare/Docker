#  node:14-alpine is an very slim and optimized node base image.
FROM node:14-alpine

WORKDIR /app

# configures the container to be run as an executable.
# Key difference between ENTRYPOINT and CMD instructions is, 
# with CMD – whatever you enter after docker run command will override the command in the CMD instruction. 
# However with ENTRYPOINT instruction – whatever you enter after docker run command will be appended to this command in ENTRYPOINT instruction.
# allow only npm commands
ENTRYPOINT [ "npm" ]
