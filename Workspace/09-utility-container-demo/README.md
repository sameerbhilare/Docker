Without Docker Compose =>
Now you can run only npm commands via –

> docker run –it --rm -v <localhost-path>:/app node-util <npm-command-name>

E.g. To run npm init,

> docker run –it --rm -v /c/Users/Sameer/DockerMount/09-utility-container-demo:/app node-util init

Here the command “init” will be appended to “npm” as mentioned in ENTRYPOINT and finally it will execute “npm init”.

With Docker Compose =>

> docker-compose run <service-name> --rm <command-name>

E.g. To run npm init,

> docker-compose run --rm npm init
