> docker build -t sameer59/kub-first-app .
> docker push sameer59/kub-first-app

# Imperative Way

## Deployment

> kubectl create deployment first-app --image=sameer59/kub-first-app

> kubectl get deployments

> kubectl get pods

> kubectl delete deployment first-app

## Service (Exposing deployment)

> kubectl expose deployment first-app --type=LoadBalancer --port=8080

> kubectl get services

### To access the service from external,

> minikube service first-app

## Scaling a deployment

> kubectl scale deployment/first-app --replicas=3
> This will create 3 pods/containers

## Updating Deployment

Make sure you create new tag, otherwise kubernetes will not download new image.

> docker build -t sameer59/kub-first-app:2 .
> docker push sameer59/kub-first-app:2

Updating deployment

> kubectl set image deployment/first-app kub-first-app=sameer59/kub-first-app:2

To view current updating status

> kubectl rollout status deployment/first-app

## Rollback Deployment

### To rollback to previous deployment

> kubectl rollout undo deployment/first-app

### To see deployment history

> kubectl rollout history deployment/first-app

### To rollback to some older deployment e.g. first version as per above history command

> kubectl rollout undo deployment/first-app --revision=1

##To delete service & deployment resources

> kubectl delete service first-app
> kubectl delete deployment first-app
