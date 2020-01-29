1. Create a pod 
```
kubectl run --generator=run-pod/v1 nginx-pod --image=nginx 
```
  > output: pod/nginx-pod created

2. List created pod
kubectl get pods

> output: NAME        READY   STATUS    RESTARTS   AGE
>         nginx-pod   1/1     Running   0          9s

3. Describe the pod
kubectl describe pod nginx-pod

4. Delete the pod
kubectl delete pod nginx-pod

> output: pod "nginx-pod" deleted

5. Create a nginx-pod.yaml with Imparative command
kubectl run --generator=run-pod/v1 nginx-pod --image=nginx --dry-run -o=yaml > nginx-pod.yaml

6. List the the files in the current directory
ls 

cat nginx-pod.yaml

apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: nginx-pod
  name: nginx-pod
spec:
  containers:
  - image: nginx
    name: nginx-pod

Create pod from nginx-pod.yaml
kubectl create -f nginx-pod.yaml

pod/nginx-pod created

Edit the pod nginx-pod
kubect edit pod nginx-pod
