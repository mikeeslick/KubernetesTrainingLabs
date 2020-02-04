1.Identify the name of the default scheduler pod
```
kubectl get pods --namespace kube-system
```

2.What is the image of scheduler pod?
```
kubectl describe pod kube-scheduler-master --namespace=kube-system
```

3.Deploy a custom scheduler as per spec below using the manifest file used by kubeadm
```
Namespace: kube-system
Name: my-scheduler
Port: 10282
```

4.Deploy a pod using the my-scheduler
```
kubectl create -f nginx-pod.yaml
```
