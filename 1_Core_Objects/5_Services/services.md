1.List the and inspect existing services
```
kubectl get services
```

2.Describe the service kubernetes and note the endpoints
```
kubectl describe svc kubernetes
```

3.Let's create a deployment
```
kubectl run whoami-deployment --image=ozcanozkaya/whoami:v1 --replicas=3 --labels="app=whoami" --dry-run -o yaml > whoami-deployment.yaml
```

4.Create the whoami-deployment
```
kubectl create -f whoami-deployment.yaml
```

4.Now we can expose the deployment
```
kubectl expose deployment whoami-deployment --name=whoami-service --type=ClusterIP --port=80 --target-port=80 --dry-run -o yaml > whoami-service.yaml
```

6.Create the whoami-service
```
kubectl create -f whoami-service.yaml
```

7.Inspect created deployment,service and pods
```
kubectl get deploy,svc,pods
```

8.Check the response from the service and inspect the response
```
curl <whoami-service-ip-address:port>
```

9.Change the port of the whoami-service
```
kubectl edit svc whoami-service
```

10.Inspect the changes
```
kubectl get svc whoami-service -o wide
```

10.Test the response
```
curl <whoami-service-ip-address:port>
```
