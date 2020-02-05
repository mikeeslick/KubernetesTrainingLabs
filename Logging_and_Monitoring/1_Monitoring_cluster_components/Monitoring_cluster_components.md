1.Deploy 3 pods located ./pods directory
```
kubectl create -f cpu-stress-1.yaml -f cpu-stress-2.yaml -f mem-stress.yaml
```

2.Deploy kubernetes simple metrics server
```
kubectl create /
-f aggregated-metrics-reader.yaml /
-f auth-delegator.yaml /
-f auth-reader.yaml /
-f metrics-apiservice.yaml /
-f metrics-server-deployment.yaml /
-f metrics-server-service.yaml /
-f resource-reader.yaml
```

3.Wait for the metrics
```
watch kubectl top node
```

4.Identfy the node that consumes the most cpu
```
kubectl top node
```

5.Identfy the node that consumes the most memory
```
kubectl top node
```

6.Identfy the pods consumes the most cpu and memory
```
kubectl top pods
```
