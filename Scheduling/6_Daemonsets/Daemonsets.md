1.How many Daemonsets are deloyed in the cluster and note the namespace is deployed in
```
kubectl get daemonsets --all-namespaces
```

2.Identify and compare daemonsets from other type of resources
```
kubectl get all --all-namespaces
```

3.How many of the kube-proxy daemonset are currently deployed and on which nodes?
```
kubectl describe daemonset kube-proxy --namespace=kube-system
```

4.What is the image used by the POD deployed by the weave-net DaemonSet?
```
kubectl describe daemonset weave-net --namespace=kube-system
```

5.Deploy a Daemonset for FluentD logging
```
kubectl create -f fluentd-elasticsearch-daemonset.yaml
```

6.Check the Daemonsets, identify how many and which nodes deployed to.
```
kubectl get daemonsets --all-namespaces
```

