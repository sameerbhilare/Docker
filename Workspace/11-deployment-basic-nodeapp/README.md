1. Build app image

   > docker build -t node-dep-example .

2. Test on local in container
   > docker run -d --name node-dep -p 80:80 node-dep-example
