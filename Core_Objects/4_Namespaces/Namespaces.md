1.List namespaces
```
kubectl get namespaces
```

2.Create a namespace called development
```
kubectl create namespace development
```

3.Describe namesapce development
```
kubectl describe namespace development
```

4.Create a pod in the namespace development
```
kubectl run --generator=run-pod/v1 nginx-pod --image=nginx --namespace=development
```

5.Expose the pod
```
kubectl expose pod --namespace=development nginx-pod --name=nginx-service --port=80 --target-port=80 --type=ClusterIP
```

6.List the pod and service
```
kubectl get pods,svc -n development -o wide
```

7.Can you reach the service?
```
kubectl run --generator=run-pod/v1 nslookup-pod --image=busybox:1.28 --rm -it -- nslookup nginx-service
```

8.What about the pod?
```
kubectl run --generator=run-pod/v1 nslookup-pod --image=busybox:1.28 --rm -it -- nslookup <pod-ip-address>
```

9.We are looking in wrong place
```
kubectl run --generator=run-pod/v1 nslookup-pod --image=busybox:1.28 --rm -it -- nslookup nginx-service.development.service
```

10.This is the pod rsolution
```
kubectl run --generator=run-pod/v1 nslookup-pod --image=busybox:1.28 --rm -it -- nslookup <pod-ip-adress>.development.pod
```