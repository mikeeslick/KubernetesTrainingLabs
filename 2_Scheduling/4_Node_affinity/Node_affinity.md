1.Check the labels on the node01
```
kubectl describe node node01
```

2.Apply a label size=large to node01
```
kubectl label node node01 size=large
```

3.Create a new deployment named large-deployment, image nginx image, replicas 6
```
kubectl create -f large-deployment.yaml
```

4.Check the nodes that pods are running on
```
kubectl get pods -o wide
```

5.Set Node affinity on the deployment to place the pods on the node01
```
vim large-deployment.yaml
```
```
    containers:
    affinity:
      nodeAffinity:
        requiredDuringSchedulingIgnoredDuringExecution:
          nodeSelectorTerms:
          - matchExpressions:
            - key: size
              operator: In
              values:
              - large
```

6.Exercise : Create another deployment and place pods on the master node using label node-role.kubernetes.io/master
```
 Name: master-deployment
 Replicas: 3
 Image: busybox
 Command: sleep 4800
 NodeAffinity: requiredDuringSchedulingIgnoredDuringExecution
 Key: node-role.kubernetes.io/master
 Use the right operator
 ```