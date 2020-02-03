1.Let's delete scheduler from our cluster
```
mv /etc/kubernetes/manifests/kube-scheduler.yaml .
```

2.Generate a pod manifest file called nginx-pod.yaml
```
kubectl run --generator=run-pod/v1 nginx-pod --image=nginx --dry-run -o yaml > nginx-pod.yaml
```

3.Create the pod with previuosly created nginx-pod.yaml
```
kubectl create -f nginx-pod.yaml
```

4.List the pod and note the status column
```
kubectl get pods
```

5.We do not have a scheduler so we have to schedule manually
```
vim nginx-pod.yaml
```

6.Add "nodeName: node01" under spec section, save and quit the text editor
```
esc > type :wq > enter
```

7.Delete the existing pod
```
kubectl delete pod nginx-pod
```

8.Recreate the pod
```
kubectl create pod -f nginx-pod.yaml
```

9.Check the pod
```
kubectl get pods
```