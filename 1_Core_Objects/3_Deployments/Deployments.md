1.Let check the resources
```
kubectl get pods,rs,deploy
```

2.Create a deployment
```
kubectl run nginx-deploy --image=nginx --replicas=3
```

3.List and inspect the deployment
```
kubectl get deploy,pods -o wide
```

4.Describe the Deployment
```
kubectl describe deployment nginx-deployment
```

5.Delete on of the pods
```
kubectl delete pod nginx-deploy-<pod-full-id>
```

6.Check the how many pods are running
```
kubectl get pods,deploy,rs
```

7.Edit the deployment, change the replicas to 2 and the image to nginx:alpine
```
kubectl edit deploy nginx-deploy
```

8.Check the deployment
```
kubectl get deploy nginx-deploy
```

9.Create nginx-deploy.yaml from the existing deployment
```
kubectl get deployment -o yaml > nginx-deploy.yaml
```
