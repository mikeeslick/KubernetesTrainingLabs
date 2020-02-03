1.List available nodes
```
kubectl get nodes
```

2.Check if the node01 has any taint
```
kubectl describe node node01
```

3.Create a taint on the node node01 a taint
```
kubectl taint nodes node01 tier=frontend:NoSchedule
```

4.Create a pod
```
kubectl create -f my-pod.yaml
```

5.Check the pod
```
kubectl get pods
```

6.The pod is pending state why?
```
kubectl describe pod my-pod
```

7.Create another pod
```
kubectl create -f my-tolerating-pod.yaml
```

8.What's the status of the pod
```
kubectl get pods -o wide
```

9.Which node is running on ?
```
kubectl describe pod my-tolerating-pod
```

10.Exercise create a pod maifest file and a toleration to schedule only on the node01