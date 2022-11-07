## First Apply "Persistent Volume" configuration -

> kubectl apply -f host-pv.yaml

## Apply "Persistent Volume Claim" configuration -

> kubectl apply -f host-pvc.yaml

## To make updates, just make required changes in the yaml file and reapply the change with same command

## Apply "Deployment" and "Service"

> kubectl apply -f deployment.yaml,service.yaml

## To see Persistent Volumes

> kubectl get pv

## To see Persistent Volume Claims

> kubectl get pvc
