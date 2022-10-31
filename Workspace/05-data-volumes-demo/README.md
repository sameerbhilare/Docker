Run this app.
Whatever you enter in the "Title" field, a text file will be created with the same name under feedback folder.
And the content text from the "Document Text" field will copied in that text file.
You cannot use the same title more than once.

For example -
If you enter "Title" as "awesome" and "Document Text" as "This is awesome!", then
a file awesome.txt will be created under feedback folder with contents as "This is awesome!".
You can access it via -
http://localhost:3000/feedback/awesome.txt
OR
http://192.168.99.100:3000/feedback/awesome.txt

Useful commands -

> docker run --rm -d -p 3000:80 --name feedback-app -v feedback:/app/feedback -v /c/Users/Sameer/DockerMount/05-data-volumes-demo:/app:ro -v /app/temp -v /app/node_modules feedback-node:volumes

> docker run --rm -d -p 3000:3000 --env PORT=3000 --name feedback-app -v feedback:/app/feedback -v D:/DEV/Docker/Workspace/05-data-volumes-demo:/app:ro -v /app/temp -v /app/node_modules feedback-node

Shortcut (Powershell) for bind mount with current project folder

> docker run --rm -d -p 3000:3000 --env PORT=3000 --name feedback-app -v feedback:/app/feedback -v ${PWD}:/app:ro -v /app/temp -v /app/node_modules feedback-node

Shortcut (Cmd) for bind mount with current project folder

> docker run --rm -d -p 3000:3000 --env PORT=3000 --name feedback-app -v feedback:/app/feedback -v %cd%:/app:ro -v /app/temp -v /app/node_modules feedback-node
