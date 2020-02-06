1.Deploy a practice enironment
```
kubectl create \
-f curl-pod.yaml \
-f webapp.yaml \
-f webapp-service.yaml
```

2.Make executable the curl loop scirpt file
```
chmod +x curl.sh
```

3.Inspect and view services,deployments an pods
```
kubectl get svc,deploy,pods
```

4.