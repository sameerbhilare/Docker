To Apply "deployment" configuration -

> kubectl apply -f=deployment.yaml
> This simply applies a configuration file to the connected cluster.

To Apply "service" configuration -

> kubectl apply -f=service.yaml
> This simply applies a configuration file to the connected cluster.

To make updates, just make requried changes in the yaml file and reapply the change with same command

To delete resources created based on these yaml files

> kubectl delete -f=deployment.yaml,service.yaml
