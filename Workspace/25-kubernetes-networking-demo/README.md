## Step 1. Create images if not created

auth-api> docker build -t sameer59/kub-demo-auth .
users-api> docker build -t sameer59/kub-demo-users .
tasks-api> docker build -t sameer59/kub-demo-tasks .
frontend> docker build -t sameer59/kub-demo-frontend .

## Step 2. Push the images to repository host

> docker push sameer59/kub-demo-auth
> docker push sameer59/kub-demo-users
> docker push sameer59/kub-demo-tasks
> docker push sameer59/kub-demo-frontend

## Step 3. Apply "Deployment" and "Service"

> kubectl apply -f auth-deployment.yaml,auth-service.yaml
> kubectl apply -f users-deployment.yaml,users-service.yaml
> kubectl apply -f tasks-deployment.yaml,tasks-service.yaml

### Make sure frontend is applied last. Otherwise 502 Bad gateway

> kubectl apply -f frontend-deployment.yaml,frontend-service.yaml

## Step 4. Only for local with minikube. (expose service which you want to use from your local machine/outside cluster)

> minikube service frontend-service

## Step 5. To stop

> kubectl delete -f auth-deployment.yaml,auth-service.yaml
> kubectl delete -f users-deployment.yaml,users-service.yaml
> kubectl delete -f tasks-deployment.yaml,tasks-service.yaml
> kubectl delete -f frontend-deployment.yaml,frontend-service.yaml
