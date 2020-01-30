1.Check the environment
```
kubectl get pods
```

2.Check the replicasets
```
kubectl get replicasets
```

3.Create a replicaset
```
kubectl create -f nginx-replicaset.yaml
```

4.List the replicasets
```
kubectl get replicasets
```

5.Check the number of desired replicas and status pods
```
kubectl get pods
```

6.Describe replicatsets
```
kubectl describe replicaset nginx-replicaset
```

7.Describe one the pods
```
kubetl describe pod <nginx-replicaset-pod>
```

7.Fix replicaset image to nginx
```
kubectl edit replicaset nginx-replicaset
```

8.Check the replicaset,image and number of pods
```
kubectl get pods,rs -o wide
```

10.Describe the pod
```
kubectl describe pod <nginx-replicaset-pod>
``` 

9.Delete one of the pods
```
kubectl delete pod <nginx-replicaset-pod>
```

10.Check the replicaset,image and number of pods
```
kubectl get pods,rs -o wide
```

11.Scale the nginx-replicaset to 3 replicas
```
kubectl scale --replicas=3 replicasets nginx-replicaset
```

10.Check the replicaset and number of pods
```
kubectl get rs,pods
```

11.Edit the replicaset back to replicas 2
```
kubectl edit replicaset nginx-replicaset
```

12.Check the replicaset and number of pods
```
kubectl get rs,pods
```