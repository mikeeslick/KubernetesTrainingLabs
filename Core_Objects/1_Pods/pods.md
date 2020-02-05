1. Create a pod 
```
kubectl run --generator=run-pod/v1 nginx-pod --image=nginx 
```

2. List created pod
```
kubectl get pods
```

3. Describe the pod
```
kubectl describe pod nginx-pod
```

4. Delete the pod
```
kubectl delete pod nginx-pod
```

5. Create a nginx-pod.yaml with Imparative command
```
kubectl run --generator=run-pod/v1 nginx-pod --image=nginx --dry-run -o=yaml > nginx-pod.yaml
```

6. List the the files in the current directory
```
ls 
```

7. Print the nginx-pod.yaml 
```
cat nginx-pod.yaml
```

8. Create pod from nginx-pod.yaml
```
kubectl create -f nginx-pod.yaml
```

9. Edit the pod nginx-pod
```
kubectl edit pod nginx-pod
```