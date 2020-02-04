1.Create a pod called fast-pod
```
kubectl create -f fast-pod.yaml
```

2.Identify cpu requirement
```
kubectl describe pod fast-pod
```

3.Delete the pod fast-pod
```
kubectl delete pod fast-pod
```

4.Create another pod called big-pod
```
kubectl create -f big-pod.yaml
```

5.Check the status of the big-pod
```
kubectl get pod big-pod
```

6.The pod runs a process that consumes 15Mi of memory, Increase the limit to 20Mi
```
kubectl edit pod big-pod
```

7.Is the pod running?
```
kubectl get pod big-pod
```