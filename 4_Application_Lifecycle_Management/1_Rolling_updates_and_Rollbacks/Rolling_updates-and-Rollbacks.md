1.Deploy a practice enironment
```
kubectl create \
-f webapp.yaml \
-f webapp-service.yaml
```

3.Inspect and view services,deployments an pods
```
kubectl get svc,deploy,pods
```

4.Inspect the deployment, identify the current strategy and the image used
```
kubectl describe webapp
```


5.Test what version of the webapp being served
```
curl http://<master-node-ip-address>:30080
```

6.Let's upgrade our web application to v2
```
kubectl set image deployment webapp webapp-container=ozcanozkaya/webapp:v2 --record
```

7.Check the pods, note the frequency of the pods being terminated and recreated 
```
kubectl get pods
```

8.Inspect the webapp version
```
curl http://<master-node-ip-address>:30080
```

9.Now upgrade the image of the webapp to v3
```
kubectl set image deployment webapp webapp-container=ozcanozkaya/webapp:v3 --record
```

10.Is the output macthing?
```
curl http://<master-node-ip-address>:30080
```

11.See the upgrade history
```
kubectl rollout history deployment webapp
```


12.We have noticed something wrong with the webapp
```
kubectl rollout undo deployment webapp
```

13.Inspect the pods being teminated and recreated
```
kubectl get pods
```

14.Webapp version is back to v2 now, we have succesfully rolled out and rolled back the upgrades of our application
```
curl http://<master-node-ip-address>:30080
```


